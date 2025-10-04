package com.trilead.ssh2.transport;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.ConnectionInfo;
import com.trilead.ssh2.ConnectionMonitor;
import com.trilead.ssh2.DHGexParameters;
import com.trilead.ssh2.ProxyData;
import com.trilead.ssh2.ServerHostKeyVerifier;
import com.trilead.ssh2.crypto.CryptoWishList;
import com.trilead.ssh2.crypto.cipher.BlockCipher;
import com.trilead.ssh2.crypto.digest.MAC;
import com.trilead.ssh2.log.Logger;
import com.trilead.ssh2.packets.PacketDisconnect;
import com.trilead.ssh2.packets.TypesReader;
import com.trilead.ssh2.util.Tokenizer;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.SecureRandom;
import java.util.Vector;
import okio.Utf8;

/* loaded from: classes3.dex */
public class TransportManager {
    private final Vector asynchronousQueue;
    private Thread asynchronousThread;
    Vector connectionMonitors;
    final Object connectionSemaphore;
    boolean flagKexOngoing;
    String hostname;
    KexManager km;
    Vector messageHandlers;
    boolean monitorsWereInformed;
    int port;
    ProxyData proxyData;
    Throwable reasonClosedCause;
    Thread receiveThread;
    Socket sock;
    private final String sourceAddress;
    TransportConnection tc;
    private ClientServerHello versions;
    private static final Logger log = Logger.getLogger(TransportManager.class);
    public static final int MAX_PACKET_SIZE = Integer.getInteger(TransportManager.class.getName() + new ObfuscatedString(new long[]{551119179948072760L, 4047004503757112147L, -5885170405978275267L}).toString(), 65536).intValue();

    /* loaded from: classes3.dex */
    public class AsynchronousWorker extends Thread {
        public AsynchronousWorker() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            byte[] bArr;
            while (true) {
                synchronized (TransportManager.this.asynchronousQueue) {
                    if (TransportManager.this.asynchronousQueue.size() == 0) {
                        try {
                            TransportManager.this.asynchronousQueue.wait(2000L);
                        } catch (InterruptedException unused) {
                        }
                        if (TransportManager.this.asynchronousQueue.size() == 0) {
                            TransportManager.this.asynchronousThread = null;
                            return;
                        }
                    }
                    bArr = (byte[]) TransportManager.this.asynchronousQueue.remove(0);
                }
                try {
                    TransportManager.this.sendMessage(bArr);
                } catch (IOException unused2) {
                    return;
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public class HandlerEntry {
        int high;
        int low;
        MessageHandler mh;

        public HandlerEntry() {
        }
    }

    public TransportManager(String str, int i) {
        this(str, i, null);
    }

    private Socket connectDirect(String str, int i, int i2, int i3) {
        Socket socket = new Socket();
        String str2 = this.sourceAddress;
        if (str2 != null) {
            socket.bind(new InetSocketAddress(createInetAddress(str2), 0));
        }
        socket.connect(new InetSocketAddress(createInetAddress(str), i), i2);
        socket.setSoTimeout(i3);
        return socket;
    }

    public static InetAddress createInetAddress(String str) {
        InetAddress parseIPv4Address = parseIPv4Address(str);
        if (parseIPv4Address != null) {
            return parseIPv4Address;
        }
        return InetAddress.getByName(str);
    }

    private void ensureConnected() {
        if (this.reasonClosedCause == null) {
        } else {
            throw ((IOException) new IOException(new ObfuscatedString(new long[]{-19034719668848444L, 84965636322845575L, 3403558202698436233L, -6121044036734176225L, 7018332746681595539L, -4597478543978228102L}).toString()).initCause(this.reasonClosedCause));
        }
    }

    private void establishConnection(ProxyData proxyData, int i, int i2) {
        if (proxyData == null) {
            this.sock = connectDirect(this.hostname, this.port, i, i2);
        } else {
            this.sock = proxyData.openConnection(this.hostname, this.port, i, i2);
        }
    }

    private static InetAddress parseIPv4Address(String str) {
        String[] parseTokens;
        if (str == null || (parseTokens = Tokenizer.parseTokens(str, '.')) == null || parseTokens.length != 4) {
            return null;
        }
        byte[] bArr = new byte[4];
        for (int i = 0; i < 4; i++) {
            if (parseTokens[i].length() == 0 || parseTokens[i].length() > 3) {
                return null;
            }
            int i2 = 0;
            for (int i3 = 0; i3 < parseTokens[i].length(); i3++) {
                char charAt = parseTokens[i].charAt(i3);
                if (charAt < '0' || charAt > '9') {
                    return null;
                }
                i2 = (i2 * 10) + (charAt - '0');
            }
            if (i2 > 255) {
                return null;
            }
            bArr[i] = (byte) i2;
        }
        return InetAddress.getByAddress(str, bArr);
    }

    public void changeRecvCipher(BlockCipher blockCipher, MAC mac) {
        this.tc.changeRecvCipher(blockCipher, mac);
    }

    public void changeSendCipher(BlockCipher blockCipher, MAC mac) {
        this.tc.changeSendCipher(blockCipher, mac);
    }

    public void close(Throwable th, boolean z) {
        Vector vector;
        Logger logger = log;
        if (logger.isEnabled()) {
            logger.log(50, new ObfuscatedString(new long[]{-5883330212534754955L, 3585310163625238030L, -4216613152041446868L, 7037792269728646270L}).toString());
        }
        if (!z) {
            try {
                ProxyData proxyData = this.proxyData;
                if (proxyData != null) {
                    proxyData.close();
                }
                Socket socket = this.sock;
                if (socket != null) {
                    socket.close();
                }
            } catch (IOException unused) {
            }
        }
        synchronized (this.connectionSemaphore) {
            if (this.reasonClosedCause == null) {
                if (z) {
                    try {
                        byte[] payload = new PacketDisconnect(11, th.getMessage(), new ObfuscatedString(new long[]{2448324368659493441L}).toString()).getPayload();
                        TransportConnection transportConnection = this.tc;
                        if (transportConnection != null) {
                            transportConnection.sendMessage(payload);
                        }
                    } catch (IOException unused2) {
                    }
                    try {
                        ProxyData proxyData2 = this.proxyData;
                        if (proxyData2 != null) {
                            proxyData2.close();
                        }
                        Socket socket2 = this.sock;
                        if (socket2 != null) {
                            socket2.close();
                        }
                    } catch (IOException unused3) {
                    }
                }
                if (th == null) {
                    th = new Exception(new ObfuscatedString(new long[]{4302129399999917306L, -1587236399681549029L, -2073614798262381475L}).toString());
                }
                this.reasonClosedCause = th;
            }
            this.connectionSemaphore.notifyAll();
        }
        synchronized (this) {
            try {
                if (!this.monitorsWereInformed) {
                    this.monitorsWereInformed = true;
                    vector = (Vector) this.connectionMonitors.clone();
                } else {
                    vector = null;
                }
            } finally {
            }
        }
        if (vector != null) {
            for (int i = 0; i < vector.size(); i++) {
                try {
                    ((ConnectionMonitor) vector.elementAt(i)).connectionLost(this.reasonClosedCause);
                } catch (Exception unused4) {
                }
            }
        }
    }

    public void forceKeyExchange(CryptoWishList cryptoWishList, DHGexParameters dHGexParameters) {
        this.km.initiateKEX(cryptoWishList, dHGexParameters);
    }

    public ConnectionInfo getConnectionInfo(int i) {
        return this.km.getOrWaitForConnectionInfo(i);
    }

    public int getPacketOverheadEstimate() {
        return this.tc.getPacketOverheadEstimate();
    }

    public Throwable getReasonClosedCause() {
        Throwable th;
        synchronized (this.connectionSemaphore) {
            th = this.reasonClosedCause;
        }
        return th;
    }

    public byte[] getSessionIdentifier() {
        return this.km.sessionId;
    }

    public ClientServerHello getVersionInfo() {
        return this.versions;
    }

    public void initialize(CryptoWishList cryptoWishList, ServerHostKeyVerifier serverHostKeyVerifier, DHGexParameters dHGexParameters, int i, SecureRandom secureRandom, ProxyData proxyData) {
        initialize(cryptoWishList, serverHostKeyVerifier, dHGexParameters, i, 0, secureRandom, proxyData);
    }

    public boolean isConnectionClosed() {
        if (getReasonClosedCause() != null) {
            return true;
        }
        return false;
    }

    public void kexFinished() {
        synchronized (this.connectionSemaphore) {
            this.flagKexOngoing = false;
            this.connectionSemaphore.notifyAll();
        }
    }

    public void receiveLoop() {
        MessageHandler messageHandler;
        int i = MAX_PACKET_SIZE;
        byte[] bArr = new byte[i];
        while (true) {
            int i2 = 0;
            int receiveMessage = this.tc.receiveMessage(bArr, 0, i);
            int i3 = bArr[0] & 255;
            if (i3 != 2) {
                if (i3 == 4) {
                    if (log.isEnabled()) {
                        TypesReader typesReader = new TypesReader(bArr, 0, receiveMessage);
                        typesReader.readByte();
                        typesReader.readBoolean();
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append(typesReader.readString(new ObfuscatedString(new long[]{-5055558385413599361L, -2151386402678768372L}).toString()));
                        while (i2 < stringBuffer.length()) {
                            char charAt = stringBuffer.charAt(i2);
                            if (charAt < ' ' || charAt > '~') {
                                stringBuffer.setCharAt(i2, Utf8.REPLACEMENT_CHARACTER);
                            }
                            i2++;
                        }
                        Logger logger = log;
                        StringBuilder sb = new StringBuilder();
                        sb.append(new ObfuscatedString(new long[]{8471510321125271179L, 3093701376285924808L, -5954964641929023273L, 8393961898840114522L, -5773978227927557709L}).toString());
                        sb.append(stringBuffer.toString());
                        AbstractC0362x4440ab85.m2949xe1f61061(new ObfuscatedString(new long[]{-4956162879053525249L, -4984672007321358788L}), sb, logger, 50);
                    }
                } else if (i3 != 3) {
                    if (i3 == 1) {
                        TypesReader typesReader2 = new TypesReader(bArr, 0, receiveMessage);
                        typesReader2.readByte();
                        int readUINT32 = typesReader2.readUINT32();
                        StringBuffer stringBuffer2 = new StringBuffer();
                        stringBuffer2.append(typesReader2.readString(new ObfuscatedString(new long[]{1222443730063483096L, 5470483168480930695L}).toString()));
                        if (stringBuffer2.length() > 255) {
                            stringBuffer2.setLength(255);
                            stringBuffer2.setCharAt(254, '.');
                            stringBuffer2.setCharAt(253, '.');
                            stringBuffer2.setCharAt(252, '.');
                        }
                        while (i2 < stringBuffer2.length()) {
                            char charAt2 = stringBuffer2.charAt(i2);
                            if (charAt2 < ' ' || charAt2 > '~') {
                                stringBuffer2.setCharAt(i2, Utf8.REPLACEMENT_CHARACTER);
                            }
                            i2++;
                        }
                        throw new IOException(new ObfuscatedString(new long[]{-8969473267006550993L, -9133075432265769324L, 5470546454109552420L, -7009237052495112908L, 418854108125698528L, -9162930769865109099L, -1887347806920604826L}).toString() + readUINT32 + new ObfuscatedString(new long[]{4449972581081385514L, -7545746619163992577L}).toString() + stringBuffer2.toString());
                    }
                    if (i3 != 20 && i3 != 21 && (i3 < 30 || i3 > 49)) {
                        while (true) {
                            if (i2 < this.messageHandlers.size()) {
                                HandlerEntry handlerEntry = (HandlerEntry) this.messageHandlers.elementAt(i2);
                                if (handlerEntry.low <= i3 && i3 <= handlerEntry.high) {
                                    messageHandler = handlerEntry.mh;
                                    break;
                                }
                                i2++;
                            } else {
                                messageHandler = null;
                                break;
                            }
                        }
                        if (messageHandler != null) {
                            messageHandler.handleMessage(bArr, receiveMessage);
                        } else {
                            StringBuilder sb2 = new StringBuilder();
                            sb2.append(new ObfuscatedString(new long[]{1426789433877148509L, -1167169242890067991L, -2990318749202317265L, -7711955225064942231L, -5741363780695976530L}).toString());
                            sb2.append(i3);
                            throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2507892685920452401L, 5954494782373169640L}), sb2));
                        }
                    } else {
                        this.km.handleMessage(bArr, receiveMessage);
                    }
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{-6852736886672495752L, 7555434555911217593L, -4554278370525567985L, -5152896831181343933L, -1959089109807100912L, -5647367344298915190L, -7859582025826639966L, 4441487390534174695L}).toString());
                }
            }
        }
    }

    public void registerMessageHandler(MessageHandler messageHandler, int i, int i2) {
        HandlerEntry handlerEntry = new HandlerEntry();
        handlerEntry.mh = messageHandler;
        handlerEntry.low = i;
        handlerEntry.high = i2;
        synchronized (this.messageHandlers) {
            this.messageHandlers.addElement(handlerEntry);
        }
    }

    public void removeMessageHandler(MessageHandler messageHandler, int i, int i2) {
        synchronized (this.messageHandlers) {
            int i3 = 0;
            while (true) {
                try {
                    if (i3 >= this.messageHandlers.size()) {
                        break;
                    }
                    HandlerEntry handlerEntry = (HandlerEntry) this.messageHandlers.elementAt(i3);
                    if (handlerEntry.mh == messageHandler && handlerEntry.low == i && handlerEntry.high == i2) {
                        this.messageHandlers.removeElementAt(i3);
                        break;
                    }
                    i3++;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public void sendAsynchronousMessage(byte[] bArr) {
        synchronized (this.asynchronousQueue) {
            try {
                this.asynchronousQueue.addElement(bArr);
                if (this.asynchronousQueue.size() <= 100) {
                    if (this.asynchronousThread == null) {
                        AsynchronousWorker asynchronousWorker = new AsynchronousWorker();
                        this.asynchronousThread = asynchronousWorker;
                        asynchronousWorker.setDaemon(true);
                        this.asynchronousThread.start();
                    }
                } else {
                    throw new IOException(new ObfuscatedString(new long[]{331976870220462268L, 6171657088872551177L, 8827634362610182072L, -7174593470634218754L, 7516903913384191722L, 4512717732096547344L, -4712813465962990986L, 6509604523898453285L, -3975829548738603973L}).toString());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void sendKexMessage(byte[] bArr) {
        synchronized (this.connectionSemaphore) {
            try {
                ensureConnected();
                this.flagKexOngoing = true;
                try {
                    this.tc.sendMessage(bArr);
                } catch (IOException e) {
                    close(e, false);
                    throw e;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void sendMessage(byte[] bArr) {
        if (Thread.currentThread() != this.receiveThread) {
            synchronized (this.connectionSemaphore) {
                while (true) {
                    try {
                        ensureConnected();
                        if (!this.flagKexOngoing) {
                            try {
                                this.tc.sendMessage(bArr);
                            } catch (IOException e) {
                                close(e, false);
                                throw e;
                            }
                        } else {
                            try {
                                this.connectionSemaphore.wait();
                            } catch (InterruptedException unused) {
                                throw new InterruptedIOException();
                            }
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                    throw th;
                }
            }
            return;
        }
        throw new IOException(new ObfuscatedString(new long[]{-1750494431180222503L, 2677207668220195975L, 772003206503716280L, 572791490819919883L, -1998971019343574072L, 2768993595821875664L, -1350531854474121524L, -4522847922972028506L, -8108367066104583080L, -8606871864403735273L, -2546021175715693093L}).toString());
    }

    public void setConnectionMonitors(Vector vector) {
        synchronized (this) {
            this.connectionMonitors = (Vector) vector.clone();
        }
    }

    public void setSoTimeout(int i) {
        this.sock.setSoTimeout(i);
    }

    public void setTcpNoDelay(boolean z) {
        this.sock.setTcpNoDelay(z);
    }

    public TransportManager(String str, int i, String str2) {
        this.asynchronousQueue = new Vector();
        this.asynchronousThread = null;
        this.connectionSemaphore = new Object();
        this.flagKexOngoing = false;
        this.reasonClosedCause = null;
        this.messageHandlers = new Vector();
        this.connectionMonitors = new Vector();
        this.monitorsWereInformed = false;
        this.hostname = str;
        this.port = i;
        this.sourceAddress = str2;
    }

    public void initialize(CryptoWishList cryptoWishList, ServerHostKeyVerifier serverHostKeyVerifier, DHGexParameters dHGexParameters, int i, int i2, SecureRandom secureRandom, ProxyData proxyData) {
        this.proxyData = proxyData;
        establishConnection(proxyData, i, i2);
        ClientServerHello clientServerHello = new ClientServerHello(this.sock.getInputStream(), this.sock.getOutputStream());
        this.versions = clientServerHello;
        this.tc = new TransportConnection(this.sock.getInputStream(), this.sock.getOutputStream(), secureRandom);
        KexManager kexManager = new KexManager(this, clientServerHello, cryptoWishList, this.hostname, this.port, serverHostKeyVerifier, secureRandom);
        this.km = kexManager;
        kexManager.initiateKEX(cryptoWishList, dHGexParameters);
        Thread thread = new Thread(new Runnable() { // from class: com.trilead.ssh2.transport.TransportManager.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    TransportManager.this.receiveLoop();
                    e = new AssertionError();
                } catch (IOException e) {
                    e = e;
                    if (TransportManager.log.isEnabled() && !TransportManager.this.isConnectionClosed()) {
                        TransportManager.log.log(10, new ObfuscatedString(new long[]{1300571429119790880L, -9214255197722253991L, 164843050560716536L, -1778308850700376217L, 5586085485489703961L, 145983184963394800L}).toString(), e);
                    }
                    TransportManager.this.close(e, false);
                }
                if (TransportManager.log.isEnabled()) {
                    TransportManager.log.log(50, new ObfuscatedString(new long[]{-3034574754492047894L, 8916083797111532756L, -5271079497393958534L, 7551446764219360812L, 4429581817545829736L, -6766597186078785340L}).toString());
                }
                KexManager kexManager2 = TransportManager.this.km;
                if (kexManager2 != null) {
                    try {
                        kexManager2.handleEndMessage(e);
                    } catch (IOException unused) {
                    }
                }
                for (int i3 = 0; i3 < TransportManager.this.messageHandlers.size(); i3++) {
                    try {
                        ((HandlerEntry) TransportManager.this.messageHandlers.elementAt(i3)).mh.handleEndMessage(e);
                    } catch (Exception unused2) {
                    }
                }
            }
        });
        this.receiveThread = thread;
        thread.setDaemon(true);
        this.receiveThread.start();
    }
}
