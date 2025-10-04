package com.trilead.ssh2.channel;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.log.Logger;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.charset.StandardCharsets;

/* loaded from: classes3.dex */
public class RemoteX11AcceptThread extends Thread {
    private static final Logger log = Logger.getLogger(RemoteX11AcceptThread.class);
    Channel c;
    String remoteOriginatorAddress;
    int remoteOriginatorPort;
    Socket s;

    public RemoteX11AcceptThread(Channel channel, String str, int i) {
        this.c = channel;
        this.remoteOriginatorAddress = str;
        this.remoteOriginatorPort = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0049, code lost:
    
        r12 = 0;
     */
    @Override // java.lang.Thread, java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void run() {
        Channel channel;
        byte[] bArr;
        int i;
        try {
            Channel channel2 = this.c;
            channel2.cm.sendOpenConfirmation(channel2);
            ChannelOutputStream stdinStream = this.c.getStdinStream();
            ChannelInputStream stdoutStream = this.c.getStdoutStream();
            byte[] bArr2 = new byte[6];
            if (stdoutStream.read(bArr2) == 6) {
                byte b = bArr2[0];
                if (b != 66 && b != 108) {
                    throw new IOException(new ObfuscatedString(new long[]{-7048781447941881641L, 8191981733975671139L, -8975193153096110192L, -1315721084130416693L, -118069527448828998L, 8906121742272254839L}).toString());
                }
                int i2 = 1;
                byte[] bArr3 = new byte[6];
                if (stdoutStream.read(bArr3) == 6) {
                    int i3 = (bArr3[1 - i2] & 255) | ((bArr3[i2] & 255) << 8);
                    int i4 = (bArr3[3 - i2] & 255) | ((bArr3[i2 + 2] & 255) << 8);
                    if (i3 <= 256 && i4 <= 256) {
                        int i5 = (4 - (i3 % 4)) % 4;
                        int i6 = (4 - (i4 % 4)) % 4;
                        byte[] bArr4 = new byte[i3];
                        byte[] bArr5 = new byte[i4];
                        byte[] bArr6 = new byte[4];
                        if (stdoutStream.read(bArr4) == i3) {
                            if (stdoutStream.read(bArr6, 0, i5) == i5) {
                                if (stdoutStream.read(bArr5) == i4) {
                                    if (stdoutStream.read(bArr6, 0, i6) == i6) {
                                        if (new ObfuscatedString(new long[]{-1955465732040702232L, 3246292888581272426L, -7806687070248259056L, 284966099244950223L}).toString().equals(new String(bArr4, StandardCharsets.ISO_8859_1))) {
                                            if (i4 == 16) {
                                                StringBuilder sb = new StringBuilder(32);
                                                int i7 = 0;
                                                while (i7 < i4) {
                                                    String hexString = Integer.toHexString(bArr5[i7] & 255);
                                                    if (hexString.length() == 2) {
                                                        bArr = bArr5;
                                                        i = i4;
                                                    } else {
                                                        StringBuilder sb2 = new StringBuilder();
                                                        bArr = bArr5;
                                                        i = i4;
                                                        sb2.append(new ObfuscatedString(new long[]{6910162032453775867L, -6240236080818101881L}).toString());
                                                        sb2.append(hexString);
                                                        hexString = sb2.toString();
                                                    }
                                                    sb.append(hexString);
                                                    i7++;
                                                    bArr5 = bArr;
                                                    i4 = i;
                                                }
                                                String sb3 = sb.toString();
                                                synchronized (this.c) {
                                                    channel = this.c;
                                                    channel.hexX11FakeCookie = sb3;
                                                }
                                                X11ServerData checkX11Cookie = channel.cm.checkX11Cookie(sb3);
                                                if (checkX11Cookie != null) {
                                                    Socket socket = new Socket(checkX11Cookie.hostname, checkX11Cookie.port);
                                                    this.s = socket;
                                                    OutputStream outputStream = socket.getOutputStream();
                                                    InputStream inputStream = this.s.getInputStream();
                                                    outputStream.write(bArr2);
                                                    byte[] bArr7 = checkX11Cookie.x11_magic_cookie;
                                                    if (bArr7 == null) {
                                                        outputStream.write(new byte[6]);
                                                    } else if (bArr7.length == 16) {
                                                        outputStream.write(bArr3);
                                                        outputStream.write(bArr4);
                                                        outputStream.write(bArr6, 0, i5);
                                                        outputStream.write(checkX11Cookie.x11_magic_cookie);
                                                        outputStream.write(bArr6, 0, i6);
                                                    } else {
                                                        throw new IOException(new ObfuscatedString(new long[]{7966488987691249974L, 6878226213350412582L, 8222627937587247374L, 7284032767827445636L, 195015054726740622L, -3266756872238578265L, -6563656779518632342L}).toString());
                                                    }
                                                    outputStream.flush();
                                                    StreamForwarder streamForwarder = new StreamForwarder(this.c, null, null, stdoutStream, outputStream, new ObfuscatedString(new long[]{3825636045656328621L, 1794519027569719329L, 4988052000583200726L}).toString());
                                                    StreamForwarder streamForwarder2 = new StreamForwarder(this.c, null, null, inputStream, stdinStream, new ObfuscatedString(new long[]{-2036422921020973522L, -230496741498244585L, 2648594313762543562L}).toString());
                                                    streamForwarder.setDaemon(true);
                                                    streamForwarder.start();
                                                    streamForwarder2.run();
                                                    while (streamForwarder.isAlive()) {
                                                        try {
                                                            streamForwarder.join();
                                                        } catch (InterruptedException unused) {
                                                            throw new InterruptedIOException();
                                                        }
                                                    }
                                                    Channel channel3 = this.c;
                                                    channel3.cm.closeChannel(channel3, new ObfuscatedString(new long[]{-2686001714542925274L, 4411760107134168721L, 2800303651262120209L, 4015276820727507709L, 8675168601773983636L}).toString(), true);
                                                    this.s.close();
                                                    return;
                                                }
                                                throw new IOException(new ObfuscatedString(new long[]{7612189405044315078L, -383210668091211085L, 7429396885489113863L, -7449545367306404115L, 7172737002106058828L}).toString());
                                            }
                                            throw new IOException(new ObfuscatedString(new long[]{5648940583880881999L, -6725435227547609342L, -341606470381361086L, -3351895391640424652L, -3266251031050834679L, 7725879118586912855L, -6753011334837026694L}).toString());
                                        }
                                        throw new IOException(new ObfuscatedString(new long[]{7502205702257417134L, 5708525175899643712L, 3994119548679832046L, 8683403642378152638L, 6090328390182046270L, 2186445264770677020L}).toString());
                                    }
                                    throw new IOException(new ObfuscatedString(new long[]{-6388725091715479185L, 6572236689632168932L, 4379274142924438000L, 9179242074802174078L, 2431129595430733636L, 6495113876156614572L, 5546139948609552822L, 7500501169594665182L}).toString());
                                }
                                throw new IOException(new ObfuscatedString(new long[]{-3961838390411373444L, 6658911683234233232L, -5777134861646209729L, 1786674094846147039L, 3296362606615346312L, -7884951926895361015L, -3510794965499392933L, -8167521921728804713L}).toString());
                            }
                            throw new IOException(new ObfuscatedString(new long[]{4389184827645240788L, 6294153759699980718L, 4053323550103707154L, -1239431768338531613L, -5094529424481650728L, 9010361254072586914L, -5070954303317485359L, -5549569858616230329L}).toString());
                        }
                        throw new IOException(new ObfuscatedString(new long[]{4129659335021983448L, 6853808462079969653L, 1002516347248396328L, -5445988410610237623L, -8395738127220359929L, 3967489440536739681L, -5796400057614317898L, -5998067512115726166L}).toString());
                    }
                    throw new IOException(new ObfuscatedString(new long[]{-5559983609082999535L, 1829056390002888920L, -4156170960789792711L, -4791847180488898983L, 3364670271417412380L}).toString());
                }
                throw new IOException(new ObfuscatedString(new long[]{3115704778892613704L, -9151423984762898223L, 8243208622160101296L, 1909709081650330416L, -9007389257245896597L}).toString());
            }
            throw new IOException(new ObfuscatedString(new long[]{8997541845471766908L, -8606493922637163229L, 2310636664314304874L, 8577303807606762138L, -8453876246967251914L}).toString());
        } catch (IOException e) {
            log.log(50, new ObfuscatedString(new long[]{5945661986262113831L, -7945189232569173069L, -4691776455848746685L, -5862097792275075862L, 8868106625374383064L}).toString(), e);
            try {
                Channel channel4 = this.c;
                channel4.cm.closeChannel(channel4, new ObfuscatedString(new long[]{7285746325340806122L, -8285343703165534268L, -5249464578540671295L, -3120691301887711420L, -5811568881406631293L}).toString() + e.getMessage() + new ObfuscatedString(new long[]{4976637773698632614L, 5731688687265431391L}).toString(), true);
            } catch (IOException unused2) {
            }
            try {
                Socket socket2 = this.s;
                if (socket2 != null) {
                    socket2.close();
                }
            } catch (IOException unused3) {
            }
        }
    }
}
