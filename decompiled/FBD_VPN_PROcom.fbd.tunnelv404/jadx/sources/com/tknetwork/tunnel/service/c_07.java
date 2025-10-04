package com.tknetwork.tunnel.service;

import android.annotation.SuppressLint;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.ProxyInfo;
import androidx.lifecycle.CoroutineLiveDataKt;
import app.tunnel.ssh2.tunnel.vpn.TunnelUtils;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.core.PasswordCache;
import com.trilead.ssh2.Connection;
import com.trilead.ssh2.ConnectionMonitor;
import com.trilead.ssh2.DebugLogger;
import com.trilead.ssh2.DynamicPortForwarder;
import com.trilead.ssh2.HTTPProxyData;
import com.trilead.ssh2.InteractiveCallback;
import com.trilead.ssh2.KnownHosts;
import com.trilead.ssh2.LocalPortForwarder;
import com.trilead.ssh2.ServerHostKeyVerifier;
import com.v2ray.ang.AppConfig;
import config.ConfigUtil;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.RunnableC1318x75cc3dc7;
import j$.util.Objects;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes3.dex */
public class c_07 extends Thread implements ConnectionMonitor, InteractiveCallback, ServerHostKeyVerifier, DebugLogger {
    private static final int AUTH_TRIES = 1;
    private static final int RECONNECT_TRIES = 5;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static final /* synthetic */ int f1004xfbe0c504 = 0;
    private LocalPortForwarder dnsForwarder;
    private DynamicPortForwarder dpf;
    private final ConfigUtil mConfig;
    private Connection mConnection;
    private final Context mContext;
    private OnTun2SocksListener mListener;
    private CountDownLatch mTunnelThreadStopSignal;
    private Thread thPing;
    private static final String AUTH_PUBLICKEY = new ObfuscatedString(new long[]{-6847760492879453492L, 2500966900867871349L, -4101837426172587515L}).toString();
    private static final String AUTH_PASSWORD = new ObfuscatedString(new long[]{-4426072113893424039L, 1703688549715896867L}).toString();
    private static final String TAG = "c_07";
    private boolean mStopping = false;
    private boolean mStarting = false;
    public boolean mReconnecting = false;
    private long lastPingLatency = -1;
    private boolean mConnected = false;
    private boolean useProxy = false;

    /* renamed from: com.tknetwork.tunnel.service.c_07$1 */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends Thread {
        final /* synthetic */ int val$timePing;

        public AnonymousClass1(int i) {
            r2 = i;
        }

        private synchronized void MakePinger() {
            try {
                try {
                } catch (Exception unused) {
                    int i = c_07.f1004xfbe0c504;
                    new ObfuscatedString(new long[]{9048966545862566897L, -6792407483519555893L, 479948856777572597L}).toString();
                }
                if (c_07.this.mConnection != null) {
                    long ping = c_07.this.mConnection.ping();
                    if (c_07.this.lastPingLatency < 0) {
                        c_07.this.lastPingLatency = ping;
                    }
                    int i2 = r2;
                    if (i2 == 0) {
                        return;
                    }
                    if (i2 > 0) {
                        Thread.sleep(i2 * 1000);
                        return;
                    } else {
                        TkLogStatus.logError(new ObfuscatedString(new long[]{6087786504487895774L, -2804164250217117047L, -1686677802021764084L}).toString());
                        throw new InterruptedException();
                    }
                }
                throw new InterruptedException();
            } catch (Throwable th) {
                throw th;
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (c_07.this.mConnected) {
                try {
                    MakePinger();
                } catch (InterruptedException unused) {
                }
            }
            TkLogStatus.logDebug(new ObfuscatedString(new long[]{-5675449536739782487L, 5135294148070252832L, -8539324150671439149L}).toString());
        }
    }

    /* loaded from: classes3.dex */
    public interface OnTun2SocksListener {
        void onStop();
    }

    public c_07(Context context) {
        this.mContext = context;
        this.mConfig = ConfigUtil.getInstance(context);
    }

    private void addProxy(Connection connection) {
        this.useProxy = true;
        connection.setProxyData(new HTTPProxyData(new ObfuscatedString(new long[]{6655462933694137651L, -6793789928919261467L, 7667437855439355928L}).toString(), 8989));
    }

    public /* synthetic */ void lambda$startForwarder$0() {
        while (this.mConnected) {
            try {
                Thread.sleep(2000L);
                if (this.lastPingLatency > 0) {
                    TkLogStatus.logInfo(String.format(new ObfuscatedString(new long[]{-4800615657731302452L, 118682737056129566L, 1669187026945014842L, 8820912788191252824L}).toString(), Long.valueOf(this.lastPingLatency)));
                    return;
                }
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    public void mReconnectSSH() {
        int i;
        if (!this.mStarting && !this.mStopping && !this.mReconnecting) {
            try {
                Thread.sleep(1000L);
                while (!this.mStopping) {
                    if (!TunnelUtils.isNetworkOnline(this.mContext)) {
                        TkLogStatus.updateStateString(new ObfuscatedString(new long[]{-3327552678761099640L, -4765157459263840960L, 2274571078087867715L, 395501037341261591L, 926402544579941081L}).toString(), this.mContext.getString(R.string.pause));
                        i = 5;
                    } else {
                        this.mStarting = true;
                        TkLogStatus.updateStateString(new ObfuscatedString(new long[]{3196632167491125164L, 8785561552129774667L, 478708151130702610L}).toString(), this.mContext.getString(R.string.reconnecting));
                        try {
                            startClienteSSH();
                            this.mStarting = false;
                            this.mReconnecting = false;
                            return;
                        } catch (Exception unused) {
                            this.mListener.onStop();
                            this.mStarting = false;
                            i = 3;
                        }
                    }
                    try {
                        Thread.sleep(i * 1000);
                    } catch (InterruptedException unused2) {
                        this.mReconnecting = false;
                        return;
                    }
                }
                this.mReconnecting = false;
            } catch (InterruptedException unused3) {
                this.mReconnecting = false;
            }
        }
    }

    @SuppressLint({"DefaultLocale"})
    private synchronized void startForwarderSocks(int i) {
        if (this.mConnected) {
            addLogInfo(new ObfuscatedString(new long[]{1820318061014694779L, -6525272856908332422L, -6004603167719303340L, -7396833850716778669L}).toString());
            TkLogStatus.logDebug(String.format(new ObfuscatedString(new long[]{-3302626644092438460L, 6114507826856761048L, -1419349798722707826L, 1133076543284883239L}).toString(), Integer.valueOf(i)));
            try {
                new ServerSocket().setReuseAddress(true);
                this.dnsForwarder = this.mConnection.createLocalPortForwarder(8053, new ObfuscatedString(new long[]{8567439476829437245L, 1440294178476453144L, 7610195539980523890L, -5963867819689412022L}).toString(), AppConfig.DEFAULT_PORT);
                this.dpf = this.mConnection.createDynamicPortForwarder(new InetSocketAddress(new ObfuscatedString(new long[]{3284606400809710022L, 5931348648766811167L, -6362909624712569418L}).toString(), i));
            } catch (IOException e) {
                e.printStackTrace();
            } catch (Exception e2) {
                TkLogStatus.logError(new ObfuscatedString(new long[]{7797252054044662708L, -1089672896517409347L, -2230827659529711333L}).toString() + e2.getCause());
                throw new Exception();
            }
        } else {
            throw new Exception();
        }
    }

    private void startPinger(int i) {
        if (this.mConnected) {
            TkLogStatus.logInfo(new ObfuscatedString(new long[]{4017498317728861420L, 291752648052784878L, 1783015749523754954L}).toString());
            AnonymousClass1 anonymousClass1 = new Thread() { // from class: com.tknetwork.tunnel.service.c_07.1
                final /* synthetic */ int val$timePing;

                public AnonymousClass1(int i2) {
                    r2 = i2;
                }

                private synchronized void MakePinger() {
                    try {
                        try {
                        } catch (Exception unused) {
                            int i2 = c_07.f1004xfbe0c504;
                            new ObfuscatedString(new long[]{9048966545862566897L, -6792407483519555893L, 479948856777572597L}).toString();
                        }
                        if (c_07.this.mConnection != null) {
                            long ping = c_07.this.mConnection.ping();
                            if (c_07.this.lastPingLatency < 0) {
                                c_07.this.lastPingLatency = ping;
                            }
                            int i22 = r2;
                            if (i22 == 0) {
                                return;
                            }
                            if (i22 > 0) {
                                Thread.sleep(i22 * 1000);
                                return;
                            } else {
                                TkLogStatus.logError(new ObfuscatedString(new long[]{6087786504487895774L, -2804164250217117047L, -1686677802021764084L}).toString());
                                throw new InterruptedException();
                            }
                        }
                        throw new InterruptedException();
                    } catch (Throwable th) {
                        throw th;
                    }
                }

                @Override // java.lang.Thread, java.lang.Runnable
                public void run() {
                    while (c_07.this.mConnected) {
                        try {
                            MakePinger();
                        } catch (InterruptedException unused) {
                        }
                    }
                    TkLogStatus.logDebug(new ObfuscatedString(new long[]{-5675449536739782487L, 5135294148070252832L, -8539324150671439149L}).toString());
                }
            };
            this.thPing = anonymousClass1;
            anonymousClass1.start();
            return;
        }
        throw new Exception();
    }

    private void stopForwarderSocks() {
        TkLogStatus.stopNetStat();
        LocalPortForwarder localPortForwarder = this.dnsForwarder;
        if (localPortForwarder != null) {
            try {
                localPortForwarder.close();
            } catch (IOException unused) {
            }
            this.dnsForwarder = null;
        }
        DynamicPortForwarder dynamicPortForwarder = this.dpf;
        if (dynamicPortForwarder != null) {
            try {
                dynamicPortForwarder.close();
            } catch (IOException unused2) {
            }
            this.dpf = null;
        }
    }

    private synchronized void stopPinger() {
        Thread thread = this.thPing;
        if (thread != null && thread.isAlive()) {
            TkLogStatus.logInfo(new ObfuscatedString(new long[]{4955579582089325228L, 5773432642136048465L, -3601185688180375491L}).toString());
            this.thPing.interrupt();
            this.thPing = null;
        }
    }

    public void addLogInfo(String str) {
        TkLogStatus.logInfo(str);
    }

    public void autenticar(String str, String str2, String str3) {
        if (this.mConnected) {
            TkLogStatus.updateStateString(new ObfuscatedString(new long[]{6836108183291895671L, -1510145468544954555L, 2843419965619527513L}).toString(), this.mContext.getString(R.string.state_auth));
            try {
                if (this.mConnection.isAuthMethodAvailable(str, new ObfuscatedString(new long[]{-7828587043958227370L, -5332676834254859102L}).toString())) {
                    addLogInfo(new ObfuscatedString(new long[]{153486702237555592L, -1205213261053929276L, 7314525022907539457L, -335897860324801456L, -803556467319796748L}).toString());
                    if (this.mConnection.authenticateWithPassword(str, str2)) {
                        addLogInfo(new ObfuscatedString(new long[]{-8337215915408941233L, 2890769430795492520L, -5309622080588932467L, 8837237500786110213L, -8665027288615684480L}).toString());
                    }
                }
            } catch (IllegalStateException unused) {
                new ObfuscatedString(new long[]{-7534648954045455640L, 59966375786192754L, -1473189674336133538L, -7522041232759234900L, 7471183033337002141L, -6913306456084054291L, -430198664064543419L, 5710653713002807807L, 4072079933126690259L}).toString();
            } catch (Exception unused2) {
                new ObfuscatedString(new long[]{-9075782594439000359L, -8772814596182896272L, 7076104697759006596L, -1957553892872625918L, 1917927290554744330L, -4645813727325222636L}).toString();
            }
            try {
                if (this.mConnection.isAuthMethodAvailable(str, new ObfuscatedString(new long[]{-5052434488446546760L, 7633789264931982196L, -1849858825352354186L}).toString()) && str3 != null && !str3.isEmpty()) {
                    File file = new File(str3);
                    if (file.exists()) {
                        if (str2.equals(new ObfuscatedString(new long[]{5604793965336121347L}).toString())) {
                            str2 = null;
                        }
                        addLogInfo(new ObfuscatedString(new long[]{-4341668484683795273L, -3415415725705676546L, -8121726295602273552L, -257727298658031891L, 843719967694306066L}).toString());
                        if (this.mConnection.authenticateWithPublicKey(str, file, str2)) {
                            addLogInfo(new ObfuscatedString(new long[]{-6546843657259946063L, -339886439308554711L, 2678180284811685458L, 2323681594059809607L, 6865583073327217850L}).toString());
                        }
                    }
                }
            } catch (Exception unused3) {
                new ObfuscatedString(new long[]{2873962620379352884L, -3263476765392510510L, 3785940406467219549L, -3630884890476687168L, 2418434940572764643L, 4234619675431946847L, -5361190803750865949L, 1124747021082838547L}).toString();
            }
            if (this.mConnection.isAuthenticationComplete()) {
                return;
            }
            interrupt();
            addLogInfo(new ObfuscatedString(new long[]{-7539826138893727348L, -411667133966448840L, 1605567537428514864L, 144262513679230346L, 5203327185047344943L, 1276335222792061607L, -8695703927456009267L, -282777995141195068L, 2514023864798239543L, 3451712060701821548L, 5317999971806103569L}).toString());
            TkLogStatus.updateStateString(new ObfuscatedString(new long[]{6713738660609002554L, 5668564297243541304L, 700903991146412257L, -4313570123020344260L}).toString(), this.mContext.getString(R.string.auth_failed));
            throw new IOException(new ObfuscatedString(new long[]{-1943777988453340392L, -6261923662026476050L, -4661062606558599521L, 5717284488768184188L, -4923662060704128807L, -8944485132072169917L, -7943444156181363112L, 1410815437874180233L}).toString());
        }
        throw new IOException();
    }

    public void closeSSH() {
        stopForwarderSocks();
        stopPinger();
        Connection connection = this.mConnection;
        if (connection != null) {
            connection.close();
        }
    }

    @SuppressLint({"DefaultLocale"})
    public void conectar(String str, int i) {
        ProxyInfo defaultProxy;
        if (this.mStarting) {
            try {
                Connection connection = new Connection(str, i);
                this.mConnection = connection;
                connection.setCompression(true);
                this.mConnection.setTCPNoDelay(true);
                addProxy(this.mConnection);
                this.mConnection.addConnectionMonitor(this);
                defaultProxy = ((ConnectivityManager) this.mContext.getSystemService(new ObfuscatedString(new long[]{165964143331491745L, -2642035795365459886L, 8231011523859038116L}).toString())).getDefaultProxy();
                if (defaultProxy != null) {
                    addLogInfo(new ObfuscatedString(new long[]{2123275561933209724L, -1237750392342735180L, 5906219889374746336L, -8425848806334026516L}).toString() + String.format(new ObfuscatedString(new long[]{-3185322811798594840L, 8755475774210079911L}).toString(), defaultProxy.getHost(), Integer.valueOf(defaultProxy.getPort())));
                }
                TkLogStatus.updateStateString(new ObfuscatedString(new long[]{-468856034062310090L, 782868877513837733L, -6949363416566018462L, 2466774273873681424L}).toString(), this.mContext.getString(R.string.get_config));
                addLogInfo(this.mContext.getString(R.string.connecting));
                addLogInfo(this.mContext.getString(R.string.wait));
                this.mConnection.connect(this, 5000, 10000);
                this.mConnected = true;
                return;
            } catch (Exception e) {
                e.printStackTrace(new PrintWriter(new StringWriter()));
                Throwable cause = e.getCause();
                Objects.requireNonNull(cause);
                String th = cause.toString();
                if (this.useProxy && th.contains(new ObfuscatedString(new long[]{5421030227558885965L, -2127785580270023518L, 7626723021829746847L, 5058284841338867762L, 2823644958690360188L}).toString())) {
                    addLogInfo(new ObfuscatedString(new long[]{-9013394785241553281L, 6416551848624392753L, 7795375804615832923L, -2404234816169429929L, 816325464733073418L, 2911332538429553797L}).toString());
                } else {
                    TkLogStatus.logDebug(new ObfuscatedString(new long[]{3873270948293538507L, 6899343805839033433L, -5386238778283956957L, 7500093849504737485L}).toString() + th);
                }
                throw new Exception(e);
            }
        }
        throw new Exception();
    }

    @Override // com.trilead.ssh2.ConnectionMonitor, com.trilead.ssh2.InteractiveCallback
    public void connectionLost(Throwable th) {
        if (!this.mStarting && !this.mStopping && !this.mReconnecting) {
            if (th != null) {
                if (th.getMessage().contains(new ObfuscatedString(new long[]{-5923748669716123358L, -6996052982875155950L, -2842046765313220637L, 2790586397282804104L, 8171421792709491897L, -836483083716299733L}).toString()) || th.getMessage().contains(new ObfuscatedString(new long[]{7525137715238775075L, 252133266787310045L, -1763551667830267238L, 7407465772653311091L, 103152542372234008L}).toString())) {
                    return;
                }
                if (th.getMessage().contains(new ObfuscatedString(new long[]{4339231359041911813L, -8302836949840826352L, -1293068562065998291L, -6739187616458725835L, -1944589947119903100L}).toString())) {
                    this.mListener.onStop();
                    return;
                } else {
                    reconnectSSH();
                    return;
                }
            }
            this.mListener.onStop();
        }
    }

    @Override // java.lang.Thread
    public void interrupt() {
        super.interrupt();
        this.mStopping = true;
        this.mStarting = false;
        this.mReconnecting = false;
        new Thread(new RunnableC1318x75cc3dc7(this, 1)).start();
        CountDownLatch countDownLatch = this.mTunnelThreadStopSignal;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    @Override // com.trilead.ssh2.ConnectionMonitor, com.trilead.ssh2.InteractiveCallback
    public void log(int i, String str, String str2) {
        TkLogStatus.logDebug(String.format(new ObfuscatedString(new long[]{-3437648261224310642L, 7117348504963059844L}).toString(), str, str2));
    }

    @Override // com.trilead.ssh2.ConnectionMonitor, com.trilead.ssh2.InteractiveCallback
    public void onReceiveInfo(int i, String str) {
        if (i == 101) {
            TkLogStatus.logInfo(new ObfuscatedString(new long[]{-7032747606624339568L, 7873833020939234948L}).toString() + this.mContext.getString(R.string.log_server_banner) + new ObfuscatedString(new long[]{-20291454009648323L, -6256716675502808641L}).toString() + str);
        }
    }

    public void reconnectSSH() {
        new Thread(new RunnableC1318x75cc3dc7(this, 1)).start();
        new Thread(new RunnableC1318x75cc3dc7(this, 2)).start();
    }

    @Override // com.trilead.ssh2.InteractiveCallback
    public String[] replyToChallenge(String str, String str2, int i, String[] strArr, boolean[] zArr) {
        String password = this.mConfig.getPassword();
        String[] strArr2 = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            if (strArr[i2].toLowerCase().contains(new ObfuscatedString(new long[]{-8435570456393208332L, 2198048582733692712L}).toString())) {
                strArr2[i2] = password;
            }
        }
        return strArr2;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        super.run();
        this.mStarting = true;
        this.mTunnelThreadStopSignal = new CountDownLatch(1);
        int i = 0;
        while (true) {
            if (this.mStopping) {
                break;
            }
            try {
            } catch (Exception unused) {
                new Thread(new RunnableC1318x75cc3dc7(this, 1)).start();
                Thread.sleep(500L);
            }
            try {
                if (!TunnelUtils.isNetworkOnline(this.mContext)) {
                    if (TkLogStatus.isTunnelActive()) {
                        TkLogStatus.updateStateString(new ObfuscatedString(new long[]{-6177649493883390273L, 1294257394454195842L, -7552248219984905691L, -5444485524714262976L, -9198568854755260795L}).toString(), this.mContext.getString(R.string.pause));
                    }
                    if (!TkLogStatus.isTunnelActive()) {
                        TkLogStatus.updateStateString(new ObfuscatedString(new long[]{-7052645996598381875L, -3109028782945124668L, 1384073760242866068L}).toString(), this.mContext.getString(R.string.pause));
                    }
                    try {
                        Thread.sleep(CoroutineLiveDataKt.DEFAULT_TIMEOUT);
                        i++;
                    } catch (InterruptedException unused2) {
                        this.mListener.onStop();
                    }
                } else {
                    if (i > 0) {
                        TkLogStatus.updateStateString(new ObfuscatedString(new long[]{-2611419752340104460L, -504696406623393309L, 1768122765835474470L}).toString(), this.mContext.getString(R.string.reconnecting) + new ObfuscatedString(new long[]{-454962042489707347L, -7675074618102749320L}).toString() + i + new ObfuscatedString(new long[]{-4403483389998575846L, 7416076505101707284L}).toString());
                        if (i == 50) {
                            addLogInfo(new ObfuscatedString(new long[]{-817244604026693795L, 6574105773417307548L, 8893185208557663580L, -4971955069752774379L, 7405585268137127618L}).toString());
                            this.mListener.onStop();
                            break;
                        }
                    }
                    try {
                        Thread.sleep(500L);
                        startClienteSSH();
                        break;
                    } catch (InterruptedException unused3) {
                        this.mListener.onStop();
                    }
                }
                Thread.sleep(500L);
                i++;
            } catch (InterruptedException unused4) {
                this.mListener.onStop();
            }
            new Thread(new RunnableC1318x75cc3dc7(this, 1)).start();
        }
        this.mStarting = false;
        if (!this.mStopping) {
            try {
                this.mTunnelThreadStopSignal.await();
            } catch (InterruptedException unused5) {
                Thread.currentThread().interrupt();
            }
        }
    }

    public void setOnTun2SocksListener(OnTun2SocksListener onTun2SocksListener) {
        this.mListener = onTun2SocksListener;
    }

    public void startClienteSSH() {
        String username;
        String password;
        this.mStopping = false;
        String sSHHost = this.mConfig.getSSHHost();
        int sSHPort = this.mConfig.getSSHPort();
        int sSLPort = this.mConfig.getSSLPort();
        new ObfuscatedString(new long[]{-1633680696052038554L}).toString();
        new ObfuscatedString(new long[]{6415383213823971811L}).toString();
        if (this.mConfig.getEnableFreeServer()) {
            username = this.mConfig.getFreeServerUsername();
            password = this.mConfig.getFreeServerPassword();
        } else {
            username = this.mConfig.getUsername();
            password = this.mConfig.getPassword();
        }
        if (password.isEmpty()) {
            password = PasswordCache.getAuthPassword(null, false);
        }
        String obfuscatedString = new ObfuscatedString(new long[]{2980220599739698439L}).toString();
        try {
            int tunnelType = this.mConfig.getTunnelType();
            if (tunnelType == 0 || tunnelType == 1 || tunnelType == 2) {
                conectar(sSHHost, sSHPort);
            }
            if (tunnelType == 3 || tunnelType == 4 || tunnelType == 5) {
                conectar(sSHHost, sSLPort);
            }
            try {
                autenticar(username, password, obfuscatedString);
                addLogInfo(new ObfuscatedString(new long[]{-4286097996393413464L, -5045605470774102981L, 8824826884791457168L, 7698332951589271823L}).toString() + this.mContext.getString(R.string.connected));
                startForwarder(1080);
                if (this.mConfig.getSSHPinger() > 0) {
                    startPinger(this.mConfig.getSSHPinger());
                }
            } catch (IOException unused) {
                throw new IOException(new ObfuscatedString(new long[]{5469406648891768625L, -5704909316566486575L, -575493961169372419L, -2879857693269602778L}).toString());
            }
        } catch (Exception e) {
            this.mConnected = false;
            reconnectSSH();
            throw e;
        }
    }

    @SuppressLint({"DefaultLocale"})
    public void startForwarder(int i) {
        if (this.mConnected) {
            TkLogStatus.startNetStat();
            startForwarderSocks(i);
            c_06.startmanager();
            new Thread(new RunnableC1318x75cc3dc7(this, 0)).start();
            return;
        }
        throw new Exception();
    }

    @Override // com.trilead.ssh2.ServerHostKeyVerifier
    public boolean verifyServerHostKey(String str, int i, String str2, byte[] bArr) {
        addLogInfo(new ObfuscatedString(new long[]{-3561567755381516324L, 3736179654331318552L, 5558726096946455189L}).toString() + KnownHosts.createHexFingerprint(str2, bArr));
        return true;
    }
}
