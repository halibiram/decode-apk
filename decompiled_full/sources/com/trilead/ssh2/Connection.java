package com.trilead.ssh2;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.auth.AgentProxy;
import com.trilead.ssh2.auth.AuthenticationManager;
import com.trilead.ssh2.channel.ChannelManager;
import com.trilead.ssh2.crypto.CryptoWishList;
import com.trilead.ssh2.crypto.cipher.BlockCipherFactory;
import com.trilead.ssh2.crypto.digest.MessageMac;
import com.trilead.ssh2.log.Logger;
import com.trilead.ssh2.packets.PacketIgnore;
import com.trilead.ssh2.transport.ClientServerHello;
import com.trilead.ssh2.transport.KexManager;
import com.trilead.ssh2.transport.TransportManager;
import com.trilead.ssh2.util.TimeoutService;
import defpackage.AbstractC0749x8313616e;
import defpackage.C0370x5ac5058d;
import java.io.CharArrayWriter;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.InetSocketAddress;
import java.net.SocketTimeoutException;
import java.security.SecureRandom;
import java.util.Vector;

/* loaded from: classes3.dex */
public class Connection {
    public static final String identification = new ObfuscatedString(new long[]{3042157097646337117L, -1038397160753223826L, 8939685901245232778L, 265137033068040063L}).toString();
    private static final Logger log = Logger.getLogger(Connection.class);
    private AuthenticationManager am;
    private boolean authenticated;
    private ChannelManager cm;
    private Vector<ConnectionMonitor> connectionMonitors;
    private CryptoWishList cryptoWishList;
    private DHGexParameters dhgexpara;
    private SecureRandom generator;
    private final String hostname;
    private final int port;
    private ProxyData proxyData;
    private final String sourceAddress;
    private boolean tcpNoDelay;
    private TransportManager tm;

    /* renamed from: com.trilead.ssh2.Connection$1TimeoutState */
    /* loaded from: classes3.dex */
    public final class C1TimeoutState {
        boolean isCancelled = false;
        boolean timeoutSocketClosed = false;

        public C1TimeoutState() {
        }
    }

    /* loaded from: classes3.dex */
    public static final class PumpThread extends Thread {
        private final InputStream in;
        private final OutputStream out;

        public PumpThread(InputStream inputStream, OutputStream outputStream) {
            super(new ObfuscatedString(new long[]{-1230593367181820252L, 4371055127446722111L, 516414167938120224L}).toString());
            this.in = inputStream;
            this.out = outputStream;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            byte[] bArr = new byte[1024];
            while (true) {
                try {
                    int read = this.in.read(bArr);
                    if (read < 0) {
                        this.in.close();
                        return;
                    }
                    this.out.write(bArr, 0, read);
                } catch (IOException e) {
                    e.printStackTrace();
                    return;
                }
            }
        }
    }

    public Connection(String str) {
        this(str, 22);
    }

    public static synchronized String[] getAvailableCiphers() {
        String[] defaultCipherList;
        synchronized (Connection.class) {
            defaultCipherList = BlockCipherFactory.getDefaultCipherList();
        }
        return defaultCipherList;
    }

    public static synchronized String[] getAvailableMACs() {
        String[] macs;
        synchronized (Connection.class) {
            macs = MessageMac.getMacs();
        }
        return macs;
    }

    public static synchronized String[] getAvailableServerHostKeyAlgorithms() {
        String[] defaultServerHostkeyAlgorithmList;
        synchronized (Connection.class) {
            defaultServerHostkeyAlgorithmList = KexManager.getDefaultServerHostkeyAlgorithmList();
        }
        return defaultServerHostkeyAlgorithmList;
    }

    private SecureRandom getOrCreateSecureRND() {
        if (this.generator == null) {
            this.generator = RandomFactory.create();
        }
        return this.generator;
    }

    public /* synthetic */ void lambda$connect$0(C1TimeoutState c1TimeoutState) {
        synchronized (c1TimeoutState) {
            try {
                if (c1TimeoutState.isCancelled) {
                    return;
                }
                c1TimeoutState.timeoutSocketClosed = true;
                close(new SocketTimeoutException(new ObfuscatedString(new long[]{-4640602268140444644L, -5677064302587923372L, -2035691865455888900L, 6229226215143376715L, -5312757685505936521L}).toString()), false);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static /* synthetic */ void lambda$enableDebugging$1(int i, String str, String str2) {
        long currentTimeMillis = System.currentTimeMillis();
        System.err.println(currentTimeMillis + new ObfuscatedString(new long[]{588010862189404460L, -7049426731408701061L}).toString() + str + new ObfuscatedString(new long[]{-1025459840044959811L, -1782296307315205991L}).toString() + str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private String[] removeDuplicates(String[] strArr) {
        if (strArr != null && strArr.length >= 2) {
            int length = strArr.length;
            String[] strArr2 = new String[length];
            int i = 0;
            for (String str : strArr) {
                int i2 = 0;
                while (true) {
                    if (i2 < i) {
                        if ((str != null || strArr2[i2] != 0) && (str == null || !str.equals(strArr2[i2]))) {
                            i2++;
                        }
                    } else {
                        strArr2[i] = str;
                        i++;
                        break;
                    }
                }
            }
            if (i == length) {
                return strArr2;
            }
            String[] strArr3 = new String[i];
            System.arraycopy(strArr2, 0, strArr3, 0, i);
            return strArr3;
        }
        return strArr;
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫 */
    public static /* synthetic */ void m1677x3271d0aa(int i, String str, String str2) {
        lambda$enableDebugging$1(i, str, str2);
    }

    public synchronized void addConnectionMonitor(ConnectionMonitor connectionMonitor) {
        try {
            if (connectionMonitor != null) {
                this.connectionMonitors.addElement(connectionMonitor);
                TransportManager transportManager = this.tm;
                if (transportManager != null) {
                    transportManager.setConnectionMonitors(this.connectionMonitors);
                }
                AuthenticationManager authenticationManager = this.am;
                if (authenticationManager != null) {
                    authenticationManager.setConnectionMonitors(this.connectionMonitors);
                }
            } else {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{-7789787516104515588L, -815649009114906499L, -1829223570518852909L, 5731361568376250616L}).toString());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized boolean authenticateWithAgent(String str, AgentProxy agentProxy) {
        boolean authenticatePublicKey;
        try {
            if (this.tm != null) {
                if (!this.authenticated) {
                    if (this.am == null) {
                        AuthenticationManager authenticationManager = new AuthenticationManager(this.tm);
                        this.am = authenticationManager;
                        authenticationManager.setConnectionMonitors(this.connectionMonitors);
                    }
                    if (this.cm == null) {
                        this.cm = new ChannelManager(this.tm);
                    }
                    if (str != null) {
                        authenticatePublicKey = this.am.authenticatePublicKey(str, agentProxy);
                        this.authenticated = authenticatePublicKey;
                    } else {
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8314747750040140133L, 3685174766511936669L, 8070952468976634625L, -6290490099352910354L}).toString());
                    }
                } else {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{9206325016086903655L, 8966162972568165429L, 2431762520343896896L, 4976654265894802747L, -9097204599993284905L, -1715963012366245928L}).toString());
                }
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-3655466054427383419L, 4379246189412271701L, -1193486718465540269L, 2298054669708335759L, -4755049388145581756L}).toString());
            }
        } catch (Throwable th) {
            throw th;
        }
        return authenticatePublicKey;
    }

    public synchronized boolean authenticateWithDSA(String str, String str2, String str3) {
        boolean authenticatePublicKey;
        try {
            if (this.tm != null) {
                if (!this.authenticated) {
                    if (this.am == null) {
                        AuthenticationManager authenticationManager = new AuthenticationManager(this.tm);
                        this.am = authenticationManager;
                        authenticationManager.setConnectionMonitors(this.connectionMonitors);
                    }
                    if (this.cm == null) {
                        this.cm = new ChannelManager(this.tm);
                    }
                    if (str != null) {
                        if (str2 != null) {
                            authenticatePublicKey = this.am.authenticatePublicKey(str, str2.toCharArray(), str3, getOrCreateSecureRND());
                            this.authenticated = authenticatePublicKey;
                        } else {
                            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-8052348395646963121L, -611828112404653597L, -3908150476678559800L, -3618888670405698746L}).toString());
                        }
                    } else {
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3656127056196207461L, -5617840820114582343L, -7476437058843988560L, -4748579874074114108L}).toString());
                    }
                } else {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{8298281777218154954L, -6734012710989361488L, 7678946641871208659L, 8438851844270949185L, -3870707399295140783L, -6851419777029103178L}).toString());
                }
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{2632453492519012081L, -3854766111525636110L, -6481690609109437911L, 1355327661158503233L, 1917393846026645492L}).toString());
            }
        } catch (Throwable th) {
            throw th;
        }
        return authenticatePublicKey;
    }

    public synchronized boolean authenticateWithKeyboardInteractive(String str, InteractiveCallback interactiveCallback) {
        return authenticateWithKeyboardInteractive(str, null, interactiveCallback);
    }

    public synchronized boolean authenticateWithNone(String str) {
        boolean authenticateNone;
        try {
            if (this.tm != null) {
                if (!this.authenticated) {
                    if (this.am == null) {
                        AuthenticationManager authenticationManager = new AuthenticationManager(this.tm);
                        this.am = authenticationManager;
                        authenticationManager.setConnectionMonitors(this.connectionMonitors);
                    }
                    if (this.cm == null) {
                        this.cm = new ChannelManager(this.tm);
                    }
                    if (str != null) {
                        authenticateNone = this.am.authenticateNone(str);
                        this.authenticated = authenticateNone;
                    } else {
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{4507673799503894312L, -643140809832509920L, -6677688832758699906L, -6417740968061868544L}).toString());
                    }
                } else {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{4462185312629974687L, 3606211139990758309L, -7436315468374448666L, -4215982650589893075L, -360561380180580143L, -2517297708193264320L}).toString());
                }
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{8182858934491294158L, 5799255460015377548L, -5550364984888675301L, -8400787775945477308L, 945484969737327011L}).toString());
            }
        } catch (Throwable th) {
            throw th;
        }
        return authenticateNone;
    }

    public synchronized boolean authenticateWithPassword(String str, String str2) {
        boolean authenticatePassword;
        try {
            if (this.tm != null) {
                if (!this.authenticated) {
                    if (this.am == null) {
                        AuthenticationManager authenticationManager = new AuthenticationManager(this.tm);
                        this.am = authenticationManager;
                        authenticationManager.setConnectionMonitors(this.connectionMonitors);
                    }
                    if (this.cm == null) {
                        this.cm = new ChannelManager(this.tm);
                    }
                    if (str != null) {
                        if (str2 != null) {
                            authenticatePassword = this.am.authenticatePassword(str, str2);
                            this.authenticated = authenticatePassword;
                        } else {
                            throw new IllegalArgumentException(new ObfuscatedString(new long[]{478958801382870645L, -7734915800001105717L, 9221038434482563034L, -1376551248300605438L, -236754898630982944L}).toString());
                        }
                    } else {
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-2386847794379602708L, 5710310240141882004L, -3012485961937842252L, -8614150058282873303L}).toString());
                    }
                } else {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{5253022329813464891L, 5174630987656446908L, 1403588603879378126L, 5458644092187995529L, 5858849627347815344L, 693549341737717235L}).toString());
                }
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{4156361413258723148L, -6577249230714231288L, 5619115543132178380L, -3651341796185578827L, -4964703658261793903L}).toString());
            }
        } catch (Throwable th) {
            throw th;
        }
        return authenticatePassword;
    }

    public synchronized boolean authenticateWithPublicKey(String str, char[] cArr, String str2) {
        boolean authenticatePublicKey;
        try {
            if (this.tm != null) {
                if (!this.authenticated) {
                    if (this.am == null) {
                        AuthenticationManager authenticationManager = new AuthenticationManager(this.tm);
                        this.am = authenticationManager;
                        authenticationManager.setConnectionMonitors(this.connectionMonitors);
                    }
                    if (this.cm == null) {
                        this.cm = new ChannelManager(this.tm);
                    }
                    if (str == null) {
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{466351193687178290L, -3265432608507626762L, 6988839214822447916L, 4154523517931092548L}).toString());
                    }
                    if (cArr != null) {
                        authenticatePublicKey = this.am.authenticatePublicKey(str, cArr, str2, getOrCreateSecureRND());
                        this.authenticated = authenticatePublicKey;
                    } else {
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{447142705704756330L, -9197472373734507933L, -3115566588174293270L, 3685269552782103315L, 6408245384741558526L}).toString());
                    }
                } else {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{6411243561882823703L, 7426784136338843349L, -6248864895317175859L, 4501408352078868283L, -6351711304624146327L, -7022833196231399532L}).toString());
                }
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-3014080814283102354L, -8488182388603689350L, 3665903103994270878L, 7847214603500844458L, 9102427429034515434L}).toString());
            }
        } catch (Throwable th) {
            throw th;
        }
        return authenticatePublicKey;
    }

    public synchronized void cancelRemotePortForwarding(int i) {
        if (this.tm != null) {
            if (this.authenticated) {
                this.cm.requestCancelGlobalForward(i);
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{2662045879978551855L, 4545973029276659246L, -3907914218284154214L, 9116132510170487633L, -6259255993279174628L, 3548501397819294219L}).toString());
            }
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{-2718016178122898321L, 7351881767200865825L, -3226911989147909254L, -3213206586275817191L, 6153967501667557518L, -4189722687054498807L, 1375343126308633993L}).toString());
        }
    }

    public synchronized void close() {
        try {
            Logger logger = log;
            if (logger.isEnabled()) {
                logger.log(50, new ObfuscatedString(new long[]{551895157262476879L, -4907027595417166583L, 7711239745713407089L}).toString());
            }
            close(new Throwable(new ObfuscatedString(new long[]{-5611198592397506810L, 4377129568847954850L, 410518337342449103L, 5984144272606557222L, 3666607629552418087L}).toString()), false);
        } catch (Throwable th) {
            throw th;
        }
    }

    public ConnectionInfo connect() {
        return connect(null, 0, 0);
    }

    public synchronized DynamicPortForwarder createDynamicPortForwarder(InetSocketAddress inetSocketAddress) {
        return createDynamicPortForwarder(inetSocketAddress, 0);
    }

    public synchronized LocalPortForwarder createLocalPortForwarder(int i, String str, int i2) {
        if (this.tm != null) {
            if (this.authenticated) {
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-4957828808239922169L, -7189002676322718570L, 6293399451697450638L, 1646706685949906751L, -3360866041226573912L, -4857193462823357183L, -1671058956600899012L, -8984170810620128591L}).toString());
            }
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{8047443947775176443L, -4956684271549751083L, -8111577818977614255L, 2231224243055322172L, 1174238421708269953L, -3906259024761206643L, -3531461138100162178L, 4393787258046454280L, -4206687841616581143L}).toString());
        }
        return new LocalPortForwarder(this.cm, i, str, i2);
    }

    public synchronized LocalStreamForwarder createLocalStreamForwarder(String str, int i) {
        if (this.tm != null) {
            if (this.authenticated) {
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-2307509574238609413L, -8672423412327104855L, 5987805478920649075L, -3083909528777774065L, 8261552003499651966L, 3833570865742160396L, 1466111119216923936L}).toString());
            }
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{7296089190469101868L, 776496921034254756L, 8640906350926935670L, 7991589554268531628L, -4896540079709619391L, 3510403629334504544L, -2807766695383837390L, -171817661303772460L, 2839824777874354144L}).toString());
        }
        return new LocalStreamForwarder(this.cm, str, i);
    }

    public synchronized SCPClient createSCPClient() {
        if (this.tm != null) {
            if (this.authenticated) {
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-8908852378410898682L, 2543833109068748976L, 425503424136313626L, 963096368221526887L, 382311047826269341L, 953935713609398290L, -4372579405091562066L, -3406343561729016045L, -3935022969637326897L}).toString());
            }
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{-4175112272134442061L, 5366207415531425420L, 444061212869694711L, 8166676115612133300L, 6760109564800216310L, -4394422217986824064L, -2614827513326405104L, -7136621386526284441L, 6053029592240984696L, -7669269358019378629L}).toString());
        }
        return new SCPClient(this);
    }

    public synchronized void enableDebugging(boolean z, DebugLogger debugLogger) {
        try {
            Logger.enabled = z;
            if (!z) {
                Logger.logger = null;
            } else if (debugLogger == null) {
                Logger.logger = new C0370x5ac5058d(4);
            } else {
                Logger.logger = debugLogger;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public int exec(String str, OutputStream outputStream) {
        Session openSession = openSession();
        try {
            openSession.execCommand(str);
            PumpThread pumpThread = new PumpThread(openSession.getStdout(), outputStream);
            pumpThread.start();
            PumpThread pumpThread2 = new PumpThread(openSession.getStderr(), outputStream);
            pumpThread2.start();
            openSession.getStdin().close();
            pumpThread.join();
            pumpThread2.join();
            openSession.waitForCondition(32, 3000L);
            Integer exitStatus = openSession.getExitStatus();
            if (exitStatus != null) {
                return exitStatus.intValue();
            }
            openSession.close();
            return -1;
        } finally {
            openSession.close();
        }
    }

    public synchronized void forceKeyExchange() {
        TransportManager transportManager = this.tm;
        if (transportManager != null) {
            transportManager.forceKeyExchange(this.cryptoWishList, this.dhgexpara);
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{4865912442743787905L, 4956434848102824294L, -4146616319342714026L, -6954993774779557562L, -2201836252923912183L, -425581668362999416L, 9196380638942513132L}).toString());
        }
    }

    public synchronized ConnectionInfo getConnectionInfo() {
        TransportManager transportManager;
        transportManager = this.tm;
        if (transportManager != null) {
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{2325298419201330636L, -8781637977802572314L, -8790223830190030920L, 655531204423676734L, 9154478337620342441L, -8860725956461403975L, 2675510898069359499L, 9074239596949008550L, 4024730344763167521L, 8404255290395899655L, -5257427489469103535L}).toString());
        }
        return transportManager.getConnectionInfo(1);
    }

    public synchronized String getHostname() {
        return this.hostname;
    }

    public synchronized int getPort() {
        return this.port;
    }

    public Throwable getReasonClosedCause() {
        TransportManager transportManager = this.tm;
        if (transportManager != null) {
            return transportManager.getReasonClosedCause();
        }
        return null;
    }

    public synchronized String[] getRemainingAuthMethods(String str) {
        try {
            if (str != null) {
                if (this.tm != null) {
                    if (!this.authenticated) {
                        if (this.am == null) {
                            AuthenticationManager authenticationManager = new AuthenticationManager(this.tm);
                            this.am = authenticationManager;
                            authenticationManager.setConnectionMonitors(this.connectionMonitors);
                        }
                        if (this.cm == null) {
                            this.cm = new ChannelManager(this.tm);
                        }
                    } else {
                        throw new IllegalStateException(new ObfuscatedString(new long[]{7168899375323490099L, 2685243809188822704L, 953686661198208355L, -8824278224985741507L, -4288672647656024400L, -367413305226305655L}).toString());
                    }
                } else {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{-6482300444871969238L, 5250724856719366322L, 1579008999819924935L, -6896011516213132473L, -840629596120709171L}).toString());
                }
            } else {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{6872412115680192301L, 1367556733803180037L, -2131868388619040168L, -2558350509480463618L, 1089028158465377035L}).toString());
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.am.getRemainingMethods(str);
    }

    public synchronized ClientServerHello getVersionInfo() {
        TransportManager transportManager;
        transportManager = this.tm;
        if (transportManager != null) {
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{5450701954015437030L, -4105681919303911583L, 1312364441241926288L, -2115311633755463330L, -1928609450459366237L, 556188028139291605L, -5589463109857217802L, -4445193774508716129L, 5805306460639894223L, 5273761880560542068L, 291280740195946106L}).toString());
        }
        return transportManager.getVersionInfo();
    }

    public synchronized boolean isAuthMethodAvailable(String str, String str2) {
        if (str2 != null) {
            for (String str3 : getRemainingAuthMethods(str)) {
                if (str3.compareTo(str2) == 0) {
                    return true;
                }
            }
            return false;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3464390386675921055L, -2922148378221658243L, -3862199419559033564L, 3880703779013966111L, -5450233178982155340L}).toString());
    }

    public synchronized boolean isAuthenticationComplete() {
        return this.authenticated;
    }

    public synchronized boolean isAuthenticationPartialSuccess() {
        AuthenticationManager authenticationManager = this.am;
        if (authenticationManager == null) {
            return false;
        }
        return authenticationManager.getPartialSuccess();
    }

    public synchronized Session openSession() {
        if (this.tm != null) {
            if (this.authenticated) {
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-2447544065986242843L, 1762471277161865942L, -803563197182486516L, 4397895489638108599L, 3727898358993669126L, 6355588174513224776L, 3693889620375145288L, 7413269725949924062L}).toString());
            }
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{-6643310352772661054L, -6304002321832176746L, -1641367199642728003L, -6121799309413311917L, 6273363229991257244L, -1062859899049968217L, -3505634196547248468L, -6341209278131032068L, 7881838138534354161L}).toString());
        }
        return new Session(this.cm, getOrCreateSecureRND());
    }

    public synchronized long ping() {
        if (this.tm != null) {
            if (this.authenticated) {
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-4771888075922043581L, 1783467967661791039L, 2622247277901121422L, -1288374720952492056L, 323662043217592070L, -5417131924477317026L}).toString());
            }
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{-5113366115276952615L, -8286361680207934668L, 4889679801351966148L, -3830113742119407464L, -4483261502348977745L, 5135365513745041220L, -3699977106927503218L}).toString());
        }
        return this.cm.requestGlobalTrileadPing();
    }

    public synchronized void requestRemotePortForwarding(String str, int i, String str2, int i2) {
        if (this.tm != null) {
            if (this.authenticated) {
                if (str != null && str2 != null && i > 0 && i2 > 0) {
                    this.cm.requestGlobalForward(str, i, str2, i2);
                } else {
                    throw new IllegalArgumentException();
                }
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{-5927201123968791240L, 6542305354510795280L, 3664945447718459570L, -3927995425813348276L, 6894414797283389150L, 6430674017576317846L}).toString());
            }
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{1450421093085219636L, -7711868826713889355L, -4099017715862416244L, 8553745237005179359L, -8891351131588318821L, -1151206352512079297L, -7893912794768855050L}).toString());
        }
    }

    public synchronized void sendIgnorePacket() {
        SecureRandom orCreateSecureRND = getOrCreateSecureRND();
        byte[] bArr = new byte[orCreateSecureRND.nextInt(16)];
        orCreateSecureRND.nextBytes(bArr);
        sendIgnorePacket(bArr);
    }

    public synchronized void setClient2ServerCiphers(String[] strArr) {
        if (strArr != null) {
            if (strArr.length != 0) {
                String[] removeDuplicates = removeDuplicates(strArr);
                BlockCipherFactory.checkCipherList(removeDuplicates);
                this.cryptoWishList.c2s_enc_algos = removeDuplicates;
            }
        }
        throw new IllegalArgumentException();
    }

    public synchronized void setClient2ServerMACs(String[] strArr) {
        if (strArr != null) {
            if (strArr.length != 0) {
                String[] removeDuplicates = removeDuplicates(strArr);
                MessageMac.checkMacs(removeDuplicates);
                this.cryptoWishList.c2s_mac_algos = removeDuplicates;
            }
        }
        throw new IllegalArgumentException();
    }

    public void setCompression(boolean z) {
    }

    public synchronized void setDHGexParameters(DHGexParameters dHGexParameters) {
        if (dHGexParameters != null) {
            this.dhgexpara = dHGexParameters;
        } else {
            throw new IllegalArgumentException();
        }
    }

    public synchronized void setProxyData(ProxyData proxyData) {
        this.proxyData = proxyData;
    }

    public synchronized void setSecureRandom(SecureRandom secureRandom) {
        if (secureRandom != null) {
            this.generator = secureRandom;
        } else {
            throw new IllegalArgumentException();
        }
    }

    public synchronized void setServer2ClientCiphers(String[] strArr) {
        if (strArr != null) {
            if (strArr.length != 0) {
                String[] removeDuplicates = removeDuplicates(strArr);
                BlockCipherFactory.checkCipherList(removeDuplicates);
                this.cryptoWishList.s2c_enc_algos = removeDuplicates;
            }
        }
        throw new IllegalArgumentException();
    }

    public synchronized void setServer2ClientMACs(String[] strArr) {
        if (strArr != null) {
            if (strArr.length != 0) {
                String[] removeDuplicates = removeDuplicates(strArr);
                MessageMac.checkMacs(removeDuplicates);
                this.cryptoWishList.s2c_mac_algos = removeDuplicates;
            }
        }
        throw new IllegalArgumentException();
    }

    public synchronized void setServerHostKeyAlgorithms(String[] strArr) {
        if (strArr != null) {
            if (strArr.length != 0) {
                String[] removeDuplicates = removeDuplicates(strArr);
                KexManager.checkServerHostkeyAlgorithmsList(removeDuplicates);
                this.cryptoWishList.serverHostKeyAlgorithms = removeDuplicates;
            }
        }
        throw new IllegalArgumentException();
    }

    public synchronized void setTCPNoDelay(boolean z) {
        this.tcpNoDelay = z;
        TransportManager transportManager = this.tm;
        if (transportManager != null) {
            transportManager.setTcpNoDelay(z);
        }
    }

    public Connection(String str, int i) {
        this(str, i, null);
    }

    public synchronized boolean authenticateWithKeyboardInteractive(String str, String[] strArr, InteractiveCallback interactiveCallback) {
        boolean authenticateInteractive;
        try {
            if (interactiveCallback != null) {
                if (this.tm != null) {
                    if (!this.authenticated) {
                        if (this.am == null) {
                            AuthenticationManager authenticationManager = new AuthenticationManager(this.tm);
                            this.am = authenticationManager;
                            authenticationManager.setConnectionMonitors(this.connectionMonitors);
                        }
                        if (this.cm == null) {
                            this.cm = new ChannelManager(this.tm);
                        }
                        if (str != null) {
                            authenticateInteractive = this.am.authenticateInteractive(str, strArr, interactiveCallback);
                            this.authenticated = authenticateInteractive;
                        } else {
                            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-9212298771774768227L, 3583734686136970380L, 6907727737664923043L, 3044240210253875824L}).toString());
                        }
                    } else {
                        throw new IllegalStateException(new ObfuscatedString(new long[]{4724277337198823145L, 6967633159096266054L, -6579517665307268971L, 3667100731727242112L, -5748523801666613065L, 707501950806493748L}).toString());
                    }
                } else {
                    throw new IllegalStateException(new ObfuscatedString(new long[]{-8383709141721587152L, 5890089281236514219L, 3754465361480956902L, 542082767133010619L, 2002228612855019882L}).toString());
                }
            } else {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{3023531910339065935L, 2977262826315783970L, -4811684550037878718L, 4242028324009465617L, 1728500569395633804L}).toString());
            }
        } catch (Throwable th) {
            throw th;
        }
        return authenticateInteractive;
    }

    public ConnectionInfo connect(ServerHostKeyVerifier serverHostKeyVerifier) {
        return connect(serverHostKeyVerifier, 0, 0);
    }

    public synchronized DynamicPortForwarder createDynamicPortForwarder(InetSocketAddress inetSocketAddress, int i) {
        if (this.tm != null) {
            if (this.authenticated) {
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{1865440664329290313L, -5754244010332946059L, 6665347875554173925L, -1320554709373375656L, -3791523761009151814L, -1602482018872974784L, -4490277936189905608L, -8677886055041669518L}).toString());
            }
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{6012847636679856180L, -5919690006007155367L, -3542460150535954201L, -4534343549625642094L, -3925721040433090648L, -5803438148206126884L, 5008853066758872791L, -9184517160604012161L, 2313501994809401077L}).toString());
        }
        return new DynamicPortForwarder(this.cm, inetSocketAddress, i);
    }

    public Connection(String str, int i, String str2) {
        this.authenticated = false;
        this.cryptoWishList = new CryptoWishList();
        this.dhgexpara = new DHGexParameters();
        this.tcpNoDelay = false;
        this.proxyData = null;
        this.connectionMonitors = new Vector<>();
        this.hostname = str;
        this.port = i;
        this.sourceAddress = str2;
    }

    public ConnectionInfo connect(ServerHostKeyVerifier serverHostKeyVerifier, int i, int i2) {
        return connect(serverHostKeyVerifier, i, 0, i2);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00b5 A[Catch: IOException -> 0x008d, SocketTimeoutException -> 0x008f, TRY_ENTER, TryCatch #9 {SocketTimeoutException -> 0x008f, IOException -> 0x008d, blocks: (B:17:0x0069, B:18:0x006c, B:31:0x008c, B:37:0x00b5, B:38:0x00b8, B:50:0x00d8, B:51:0x00d9), top: B:10:0x002e }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ConnectionInfo connect(ServerHostKeyVerifier serverHostKeyVerifier, int i, int i2, int i3) {
        if (this.tm != null) {
            StringBuilder sb = new StringBuilder();
            sb.append(new ObfuscatedString(new long[]{-8296472278570683061L, 3712128775318165665L, 8919520435767865923L}).toString());
            sb.append(this.hostname);
            throw new IOException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4786253543978587587L, -1155323920544009313L, -4568732691820116533L, 4013176266144338526L, 2292595339947331193L}), sb));
        }
        if (i < 0) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{3269258365596160055L, -6586638993587077542L, 7248845725612843860L, -1858545907164171044L, -5059137318253402720L, -1726831851196721258L}).toString());
        }
        if (i3 >= 0) {
            final C1TimeoutState c1TimeoutState = new C1TimeoutState();
            TransportManager transportManager = new TransportManager(this.hostname, this.port, this.sourceAddress);
            this.tm = transportManager;
            transportManager.setConnectionMonitors(this.connectionMonitors);
            synchronized (this.tm) {
            }
            TimeoutService.TimeoutToken timeoutToken = null;
            try {
                if (i3 > 0) {
                    try {
                        timeoutToken = TimeoutService.addTimeoutHandler(System.currentTimeMillis() + i3, new Runnable() { // from class: com.trilead.ssh2.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸
                            @Override // java.lang.Runnable
                            public final void run() {
                                Connection.this.lambda$connect$0(c1TimeoutState);
                            }
                        });
                    } catch (Throwable th) {
                        th = th;
                        if (timeoutToken != null) {
                            TimeoutService.cancelTimeoutHandler(timeoutToken);
                            synchronized (c1TimeoutState) {
                                try {
                                    if (c1TimeoutState.timeoutSocketClosed) {
                                        throw new IOException(new ObfuscatedString(new long[]{5891776295731920187L, 6331889621208524692L, 3100099180691594940L, 5610195843241890842L, 1466689320193958889L, -6964153410243154445L, -1242029458802825027L, 4258757560705013033L}).toString());
                                    }
                                    c1TimeoutState.isCancelled = true;
                                } finally {
                                }
                            }
                        }
                        throw th;
                    }
                }
                TimeoutService.TimeoutToken timeoutToken2 = timeoutToken;
                try {
                    try {
                        this.tm.initialize(this.cryptoWishList, serverHostKeyVerifier, this.dhgexpara, i, i2, getOrCreateSecureRND(), this.proxyData);
                        this.tm.setTcpNoDelay(this.tcpNoDelay);
                        ConnectionInfo connectionInfo = this.tm.getConnectionInfo(1);
                        if (timeoutToken2 != null) {
                            TimeoutService.cancelTimeoutHandler(timeoutToken2);
                            synchronized (c1TimeoutState) {
                                try {
                                    if (!c1TimeoutState.timeoutSocketClosed) {
                                        c1TimeoutState.isCancelled = true;
                                    } else {
                                        throw new IOException(new ObfuscatedString(new long[]{-1676200758886622177L, 4840438396904952194L, -5491144401578074858L, -4354781119489407642L, -5298581282441449526L, -5357859553604916565L, 2341773614303935402L, 5472617241035566025L}).toString());
                                    }
                                } finally {
                                }
                            }
                        }
                        return connectionInfo;
                    } catch (Throwable th2) {
                        th = th2;
                        timeoutToken = timeoutToken2;
                        if (timeoutToken != null) {
                        }
                        throw th;
                    }
                } catch (SocketTimeoutException e) {
                    throw ((SocketTimeoutException) new SocketTimeoutException(new ObfuscatedString(new long[]{6959816960726143857L, 2677584282613678407L, -5553111263191892003L, -6894351498473703712L, 1016133643023050095L, 2069541592149911176L, -6025376623702107301L}).toString()).initCause(e));
                }
            } catch (SocketTimeoutException e2) {
                throw e2;
            } catch (IOException e3) {
                close(new Throwable(new ObfuscatedString(new long[]{-2759786387896443545L, 8806804902613291506L, 2588174174421226661L, 6168650827060845444L, -2722169090376185877L, 1486834542463191460L}).toString(), e3), false);
                synchronized (c1TimeoutState) {
                    if (!c1TimeoutState.timeoutSocketClosed) {
                        if (e3 instanceof HTTPProxyException) {
                            throw e3;
                        }
                        throw new IOException(new ObfuscatedString(new long[]{-3653743769990858336L, -5765189668471025699L, 561395158230960283L, 1661591795111886999L, -3077308936151645236L, -2710550828097294129L}).toString() + this.hostname + new ObfuscatedString(new long[]{-553903541212132064L, -7890744769710760253L}).toString() + this.port, e3);
                    }
                    throw new SocketTimeoutException(new ObfuscatedString(new long[]{2376074832749201854L, 8595199092182455553L, 4314987721409977438L}).toString() + i3 + new ObfuscatedString(new long[]{-1940491532268313801L, 5461051091837841180L, 2334294715723159325L}).toString());
                }
            }
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-970810283951421150L, -4627791414587420004L, -6548782345799319044L, -4779189781127120728L, 2216744672981939876L}).toString());
    }

    private synchronized void close(Throwable th, boolean z) {
        try {
            ChannelManager channelManager = this.cm;
            if (channelManager != null) {
                channelManager.closeAllChannels();
            }
            TransportManager transportManager = this.tm;
            if (transportManager != null) {
                transportManager.close(th, !z);
                this.tm = null;
            }
            this.am = null;
            this.cm = null;
            this.authenticated = false;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void sendIgnorePacket(byte[] bArr) {
        if (bArr != null) {
            if (this.tm != null) {
                PacketIgnore packetIgnore = new PacketIgnore();
                packetIgnore.setData(bArr);
                this.tm.sendMessage(packetIgnore.getPayload());
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{1739367205292969415L, 215625483353127878L, 5453756086879545314L, -8927859001702134944L, 7490618212119562442L, 6381186007868709476L, -466886575209951883L, -9092878777388559141L, -5867860020636791686L, -914066151340302967L, 2145413872207933895L}).toString());
            }
        } else {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{794193264379537704L, -2380454606161936160L, 4786410054601983584L, -6490431302107205034L, 7638639979402385483L}).toString());
        }
    }

    public synchronized LocalPortForwarder createLocalPortForwarder(InetSocketAddress inetSocketAddress, String str, int i) {
        if (this.tm != null) {
            if (this.authenticated) {
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{2514210636088591832L, -6170423690205387899L, 9131283829030572063L, 4430700352683113832L, 243285416706473084L, -2994784801176874204L, -818851039065189616L, 2511293341039012132L}).toString());
            }
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{-987427766277256317L, 8240406627255007876L, -3830391513975811519L, 2240488808412322299L, -3474233719287431355L, -1112647768217970265L, 5583202075746592886L, -5282308989221309507L, 5028061624970353251L}).toString());
        }
        return new LocalPortForwarder(this.cm, inetSocketAddress, str, i);
    }

    public synchronized DynamicPortForwarder createDynamicPortForwarder(int i) {
        return new DynamicPortForwarder(this.cm, i, 0);
    }

    public synchronized DynamicPortForwarder createDynamicPortForwarder(int i, int i2) {
        if (this.tm != null) {
            if (this.authenticated) {
            } else {
                throw new IllegalStateException(new ObfuscatedString(new long[]{932879936230718162L, -1408652980813326728L, -4999190741207050440L, -8058738473237902L, 8605250710501401896L, 8861358670125891027L, -9114341457033411268L, 2467120892368408264L}).toString());
            }
        } else {
            throw new IllegalStateException(new ObfuscatedString(new long[]{-7145106202506400550L, -6043528661109314588L, 6217013084127392654L, -3428953282700145826L, 6264224422624222904L, -2171613527085671402L, -7538196957606127415L, -8944216639662650851L, -5045709476455194293L}).toString());
        }
        return new DynamicPortForwarder(this.cm, i, i2);
    }

    public synchronized boolean authenticateWithPublicKey(String str, File file, String str2) {
        CharArrayWriter charArrayWriter;
        if (file != null) {
            char[] cArr = new char[256];
            charArrayWriter = new CharArrayWriter();
            FileReader fileReader = new FileReader(file);
            while (true) {
                int read = fileReader.read(cArr);
                if (read < 0) {
                    fileReader.close();
                } else {
                    charArrayWriter.write(cArr, 0, read);
                }
            }
        } else {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{7123687816191415627L, 4657438095706151331L, 3207709262925066635L, 7160961230732125770L}).toString());
        }
        return authenticateWithPublicKey(str, charArrayWriter.toCharArray(), str2);
    }
}
