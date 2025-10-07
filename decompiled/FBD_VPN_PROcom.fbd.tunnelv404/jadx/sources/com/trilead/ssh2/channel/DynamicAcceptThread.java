package com.trilead.ssh2.channel;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.log.Logger;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import java.net.ConnectException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NoRouteToHostException;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.concurrent.Semaphore;
import net.sourceforge.jsocks.ProxyMessage;
import net.sourceforge.jsocks.Socks5Message;
import net.sourceforge.jsocks.SocksException;
import net.sourceforge.jsocks.server.ServerAuthenticator;
import net.sourceforge.jsocks.server.ServerAuthenticatorNone;

/* loaded from: classes3.dex */
public class DynamicAcceptThread extends Thread implements IChannelWorkerThread {
    private static final int MAX_THREAD_COUNT = 25;
    private static final Logger log = Logger.getLogger(DynamicAcceptThread.class);
    private ChannelManager cm;
    private ServerSocket ss;
    private Semaphore threadBound;

    /* loaded from: classes3.dex */
    public class DynamicAcceptRunnable implements Runnable {
        private static final int idleTimeout = 360000;
        private ServerAuthenticator auth;
        private InputStream in;
        private ProxyMessage msg;
        private OutputStream out;
        private Socket sock;

        public DynamicAcceptRunnable(ServerAuthenticator serverAuthenticator, Socket socket) {
            this.auth = serverAuthenticator;
            this.sock = socket;
            DynamicAcceptThread.this.setName(new ObfuscatedString(new long[]{9118549492620497737L, -9143673538998660897L, -7377765980162908467L, 6307008968809962556L}).toString());
        }

        private void handleRequest(ProxyMessage proxyMessage) {
            if (this.auth.checkRequest(proxyMessage)) {
                if (proxyMessage.command == 1) {
                    onConnect(proxyMessage);
                    return;
                }
                throw new SocksException(7);
            }
            throw new SocksException(1);
        }

        private void onConnect(ProxyMessage proxyMessage) {
            new Socks5Message(0, (InetAddress) null, 0).write(this.out);
            String str = proxyMessage.host;
            InetAddress inetAddress = proxyMessage.ip;
            if (inetAddress != null) {
                str = inetAddress.getHostAddress();
            }
            try {
                try {
                    Channel openDirectTCPIPChannel = DynamicAcceptThread.this.cm.openDirectTCPIPChannel(str, proxyMessage.port, new ObfuscatedString(new long[]{-6209613597983994801L, -4952558481118682187L, -5995176222214954099L}).toString(), 0);
                    try {
                        StreamForwarder streamForwarder = new StreamForwarder(openDirectTCPIPChannel, null, null, openDirectTCPIPChannel.getStdoutStream(), this.out, new ObfuscatedString(new long[]{-317204014099599072L, 4079569721728529045L, -2659705854461802998L}).toString());
                        StreamForwarder streamForwarder2 = new StreamForwarder(openDirectTCPIPChannel, streamForwarder, this.sock, this.in, openDirectTCPIPChannel.stdinStream, new ObfuscatedString(new long[]{6892458469852082662L, 1312287147743945313L, 561576456352055536L}).toString());
                        streamForwarder.setDaemon(true);
                        streamForwarder2.setDaemon(true);
                        streamForwarder.start();
                        streamForwarder2.start();
                    } catch (IOException e) {
                        try {
                            openDirectTCPIPChannel.cm.closeChannel(openDirectTCPIPChannel, new ObfuscatedString(new long[]{640221229324524148L, -7823189319617450326L, -2624757451384613847L, -7275994935040646621L, -3170121574406128691L, -436316545691571039L, 7643884816449137299L}).toString() + e.getMessage() + new ObfuscatedString(new long[]{8099846602194099454L, 6619898190255795344L}).toString(), true);
                        } catch (IOException unused) {
                        }
                    }
                } catch (IOException unused2) {
                }
            } catch (IOException unused3) {
                this.sock.close();
            }
        }

        private ProxyMessage readMsg(InputStream inputStream) {
            PushbackInputStream pushbackInputStream;
            if (inputStream instanceof PushbackInputStream) {
                pushbackInputStream = (PushbackInputStream) inputStream;
            } else {
                pushbackInputStream = new PushbackInputStream(inputStream);
            }
            int read = pushbackInputStream.read();
            pushbackInputStream.unread(read);
            if (read == 5) {
                return new Socks5Message(pushbackInputStream, false);
            }
            throw new SocksException(1);
        }

        private void sendErrorMessage(int i) {
            try {
                new Socks5Message(i).write(this.out);
            } catch (IOException unused) {
            }
        }

        private void startSession() {
            this.sock.setSoTimeout(idleTimeout);
            try {
                ServerAuthenticator startSession = this.auth.startSession(this.sock);
                this.auth = startSession;
                if (startSession == null) {
                    DynamicAcceptThread.log.log(50, new ObfuscatedString(new long[]{1999966658564752691L, 1416368782715999159L, 6003291907682073707L, -7685950125732720911L}).toString());
                    return;
                }
                this.in = startSession.getInputStream();
                this.out = this.auth.getOutputStream();
                ProxyMessage readMsg = readMsg(this.in);
                this.msg = readMsg;
                handleRequest(readMsg);
            } catch (IOException e) {
                DynamicAcceptThread.log.log(50, new ObfuscatedString(new long[]{-1605250011489896618L, 1178910647020450427L, 4848844238582824873L, -6284519629411042973L, 5221375534552456485L}).toString());
                e.printStackTrace();
                this.auth = null;
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:31:0x004b, code lost:
        
            if (r0 == null) goto L6;
         */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            int i;
            ServerAuthenticator serverAuthenticator;
            try {
                try {
                    try {
                        startSession();
                    } catch (Error unused) {
                        System.gc();
                        if (this.auth != null) {
                            serverAuthenticator = this.auth;
                        }
                    }
                } catch (IOException e) {
                    int i2 = 1;
                    if (e instanceof SocksException) {
                        i = ((SocksException) e).errCode;
                    } else if (e instanceof NoRouteToHostException) {
                        i = 4;
                    } else if (e instanceof ConnectException) {
                        i = 5;
                    } else if (e instanceof InterruptedIOException) {
                        i = 6;
                    } else {
                        i = 1;
                    }
                    if (i <= 8 && i >= 0) {
                        i2 = i;
                    }
                    sendErrorMessage(i2);
                    serverAuthenticator = this.auth;
                }
            } finally {
                ServerAuthenticator serverAuthenticator2 = this.auth;
                if (serverAuthenticator2 != null) {
                    serverAuthenticator2.endSession();
                }
                DynamicAcceptThread.this.threadBound.release();
            }
        }
    }

    public DynamicAcceptThread(ChannelManager channelManager, InetSocketAddress inetSocketAddress, int i) {
        this.cm = channelManager;
        setName(new ObfuscatedString(new long[]{5722291644353933729L, 532806636471264507L, -6797049125873606346L, 5382628767918035086L}).toString());
        ServerSocket serverSocket = new ServerSocket();
        this.ss = serverSocket;
        serverSocket.bind(inetSocketAddress);
        this.threadBound = new Semaphore(i < 2 ? 25 : i);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        try {
            this.cm.registerThread(this);
            while (true) {
                try {
                    Socket accept = this.ss.accept();
                    this.threadBound.acquireUninterruptibly();
                    Thread thread = new Thread(new DynamicAcceptRunnable(new ServerAuthenticatorNone(), accept));
                    thread.setDaemon(true);
                    thread.start();
                } catch (IOException unused) {
                    stopWorking();
                    return;
                }
            }
        } catch (IOException unused2) {
            stopWorking();
        }
    }

    @Override // com.trilead.ssh2.channel.IChannelWorkerThread
    public void stopWorking() {
        try {
            this.ss.close();
        } catch (IOException unused) {
        }
    }

    public DynamicAcceptThread(ChannelManager channelManager, int i, int i2) {
        this.cm = channelManager;
        setName(new ObfuscatedString(new long[]{7627690829393755002L, -6277814712041134624L, -3673285408260725491L, -5001378588262033584L}).toString());
        this.ss = new ServerSocket(i);
        this.threadBound = new Semaphore(i2 < 2 ? 25 : i2);
    }
}
