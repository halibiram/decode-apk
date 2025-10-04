package com.tknetwork.tunnel.service;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.ProxyInfo;
import android.os.Build;
import androidx.lifecycle.CoroutineLiveDataKt;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import app.tunnel.ssh2.tunnel.vpn.TunnelState;
import app.tunnel.ssh2.tunnel.vpn.TunnelUtils;
import app.tunnel.ssh2.tunnel.vpn.TunnelVpnManager;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.core.PasswordCache;
import com.tknetwork.tunnel.thread.DNSTunnelThread;
import com.trilead.ssh2.Connection;
import com.trilead.ssh2.ConnectionMonitor;
import com.trilead.ssh2.DynamicPortForwarder;
import com.trilead.ssh2.HTTPProxyData;
import com.trilead.ssh2.InteractiveCallback;
import com.trilead.ssh2.KnownHosts;
import com.trilead.ssh2.ServerHostKeyVerifier;
import config.ConfigUtil;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.RunnableC1315xbbf5acb0;
import j$.util.Objects;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes3.dex */
public class c_04 extends Thread implements ConnectionMonitor, InteractiveCallback, ServerHostKeyVerifier {
    private static final int AUTH_TRIES = 1;
    private static final int RECONNECT_TRIES = 5;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static final /* synthetic */ int f1003xfbe0c504 = 0;
    private DynamicPortForwarder dpf;
    private final ConfigUtil mConfig;
    private Connection mConnection;
    private final Context mContext;
    private DNSTunnelThread mDNSTunnelThread;
    private OnTun2SocksListener mListener;
    private CountDownLatch mTunnelThreadStopSignal;
    private Thread thPing;
    private static final String AUTH_PUBLICKEY = new ObfuscatedString(new long[]{-5385578418991631959L, 7877407751430746955L, 4456217604232060027L}).toString();
    private static final String AUTH_PASSWORD = new ObfuscatedString(new long[]{5841385200322236739L, 7985100754211086402L}).toString();
    private static final String TAG = "c_04";
    private boolean mRunning = false;
    private boolean mStopping = false;
    private boolean mStarting = false;
    public boolean mReconnecting = false;
    private boolean mConnected = false;
    private long lastPingLatency = -1;
    private boolean useProxy = false;
    private final BroadcastReceiver m_vpnTunnelBroadcastReceiver = new BroadcastReceiver() { // from class: com.tknetwork.tunnel.service.c_04.2
        public AnonymousClass2() {
        }

        @Override // android.content.BroadcastReceiver
        public synchronized void onReceive(Context context, Intent intent) {
            try {
                String action = intent.getAction();
                if (new ObfuscatedString(new long[]{1577588767960468038L, 4448448624480261838L, -1029643521926506096L, -6587283892297283587L}).toString().equals(action)) {
                    if (!intent.getBooleanExtra(new ObfuscatedString(new long[]{1505061563837656736L, -5850881533337484309L, 1937038254782373567L, 3857513257266305046L, 2334900430886760782L}).toString(), true)) {
                        c_04.this.stopAll();
                    }
                } else if (new ObfuscatedString(new long[]{-7025933047103305170L, -550273287518960108L, 2998727608596136192L, -708919038751860138L, 3649742441866008960L}).toString().equals(action)) {
                    c_04.this.stopAll();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    };

    /* renamed from: com.tknetwork.tunnel.service.c_04$1 */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends Thread {
        final /* synthetic */ int val$timePing;

        public AnonymousClass1(int i) {
            r2 = i;
        }

        private synchronized void makePinger() {
            try {
                try {
                } catch (Exception unused) {
                    int i = c_04.f1003xfbe0c504;
                    new ObfuscatedString(new long[]{1574386216691350183L, -3529030933827288473L, 341696405150852250L}).toString();
                }
                if (c_04.this.mConnection != null) {
                    long ping = c_04.this.mConnection.ping();
                    if (c_04.this.lastPingLatency < 0) {
                        c_04.this.lastPingLatency = ping;
                    }
                    int i2 = r2;
                    if (i2 == 0) {
                        return;
                    }
                    if (i2 > 0) {
                        Thread.sleep(i2 * 1000);
                        return;
                    } else {
                        TkLogStatus.logError(new ObfuscatedString(new long[]{6663463090961783533L, 7301926668479527930L, -8109151650889041664L}).toString());
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
            while (c_04.this.mConnected) {
                try {
                    makePinger();
                } catch (InterruptedException unused) {
                }
            }
            TkLogStatus.logDebug(new ObfuscatedString(new long[]{-5826369189731641006L, 987557596809028055L, 1419296831199107904L}).toString());
        }
    }

    /* renamed from: com.tknetwork.tunnel.service.c_04$2 */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 extends BroadcastReceiver {
        public AnonymousClass2() {
        }

        @Override // android.content.BroadcastReceiver
        public synchronized void onReceive(Context context, Intent intent) {
            try {
                String action = intent.getAction();
                if (new ObfuscatedString(new long[]{1577588767960468038L, 4448448624480261838L, -1029643521926506096L, -6587283892297283587L}).toString().equals(action)) {
                    if (!intent.getBooleanExtra(new ObfuscatedString(new long[]{1505061563837656736L, -5850881533337484309L, 1937038254782373567L, 3857513257266305046L, 2334900430886760782L}).toString(), true)) {
                        c_04.this.stopAll();
                    }
                } else if (new ObfuscatedString(new long[]{-7025933047103305170L, -550273287518960108L, 2998727608596136192L, -708919038751860138L, 3649742441866008960L}).toString().equals(action)) {
                    c_04.this.stopAll();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface OnTun2SocksListener {
        void onStop();
    }

    public c_04(Context context) {
        this.mContext = context;
        this.mConfig = ConfigUtil.getInstance(context);
        new Thread(new RunnableC1315xbbf5acb0(this, 3)).start();
    }

    private void addProxy(Connection connection) {
        if (this.mConfig.getTunnelType() == 9) {
            this.useProxy = false;
        } else {
            this.useProxy = true;
            connection.setProxyData(new HTTPProxyData(new ObfuscatedString(new long[]{-7133901530859574800L, 2214530013088411594L, -1581562412155876767L}).toString(), 8989));
        }
    }

    public static boolean isServiceVpnRunning() {
        TunnelState tunnelState = TunnelState.getTunnelState();
        if (!tunnelState.getStartingTunnelManager() && tunnelState.getTunnelManager() == null) {
            return false;
        }
        return true;
    }

    public /* synthetic */ void lambda$startForwarder$0() {
        while (this.mConnected) {
            try {
                Thread.sleep(2000L);
                if (this.lastPingLatency > 0) {
                    TkLogStatus.logInfo(String.format(new ObfuscatedString(new long[]{-2295391406915869404L, 4984546728476855705L, -66951650161554943L, 7848576779386777326L}).toString(), Long.valueOf(this.lastPingLatency)));
                    return;
                }
            } catch (InterruptedException unused) {
                return;
            }
        }
    }

    public /* synthetic */ void lambda$stopAll$1() {
        this.mStopping = true;
        CountDownLatch countDownLatch = this.mTunnelThreadStopSignal;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
        closeDNSTT();
        TkLogStatus.updateStateString(new ObfuscatedString(new long[]{-7590460871493492557L, 8571272438334960421L, -2650536071092499610L}).toString(), this.mContext.getString(R.string.state_disconnected));
        this.mRunning = false;
        this.mStarting = false;
        this.mReconnecting = false;
    }

    public void startDNSTunnel() {
        DNSTunnelThread dNSTunnelThread = this.mDNSTunnelThread;
        if (dNSTunnelThread != null) {
            dNSTunnelThread.interrupt();
            this.mDNSTunnelThread = null;
        }
        if (this.mConfig.getTunnelType() == 9) {
            DNSTunnelThread dNSTunnelThread2 = new DNSTunnelThread(this.mContext);
            this.mDNSTunnelThread = dNSTunnelThread2;
            dNSTunnelThread2.start();
        }
    }

    @SuppressLint({"DefaultLocale"})
    private synchronized void startForwarderSocks(int i) {
        TkLogStatus.startNetStat();
        if (this.mConnected) {
            addLogInfo(new ObfuscatedString(new long[]{7927599113779114294L, -8676057150950863015L, 4141118485867346426L, -4143613123717144384L}).toString());
            TkLogStatus.logDebug(String.format(new ObfuscatedString(new long[]{247761543461800773L, 3817200647264090594L, 8101376526930042222L, -788705446631570817L}).toString(), Integer.valueOf(i)));
            try {
                new ServerSocket().setReuseAddress(true);
                this.dpf = this.mConnection.createDynamicPortForwarder(new InetSocketAddress(new ObfuscatedString(new long[]{-8224367761816708843L, 426790730648429476L, -4301775246476253142L}).toString(), i));
            } catch (IOException e) {
                e.printStackTrace();
            } catch (Exception e2) {
                TkLogStatus.logError(new ObfuscatedString(new long[]{5707568465177073266L, -6167103237974286484L, -6792806377877079457L}).toString() + e2.getCause());
                throw new Exception();
            }
        } else {
            throw new Exception();
        }
    }

    private void startPinger(int i) {
        if (this.mConnected) {
            TkLogStatus.logInfo(new ObfuscatedString(new long[]{8458723818878317688L, -4549835549159875709L, 8087688996248277256L}).toString());
            AnonymousClass1 anonymousClass1 = new Thread() { // from class: com.tknetwork.tunnel.service.c_04.1
                final /* synthetic */ int val$timePing;

                public AnonymousClass1(int i2) {
                    r2 = i2;
                }

                private synchronized void makePinger() {
                    try {
                        try {
                        } catch (Exception unused) {
                            int i2 = c_04.f1003xfbe0c504;
                            new ObfuscatedString(new long[]{1574386216691350183L, -3529030933827288473L, 341696405150852250L}).toString();
                        }
                        if (c_04.this.mConnection != null) {
                            long ping = c_04.this.mConnection.ping();
                            if (c_04.this.lastPingLatency < 0) {
                                c_04.this.lastPingLatency = ping;
                            }
                            int i22 = r2;
                            if (i22 == 0) {
                                return;
                            }
                            if (i22 > 0) {
                                Thread.sleep(i22 * 1000);
                                return;
                            } else {
                                TkLogStatus.logError(new ObfuscatedString(new long[]{6663463090961783533L, 7301926668479527930L, -8109151650889041664L}).toString());
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
                    while (c_04.this.mConnected) {
                        try {
                            makePinger();
                        } catch (InterruptedException unused) {
                        }
                    }
                    TkLogStatus.logDebug(new ObfuscatedString(new long[]{-5826369189731641006L, 987557596809028055L, 1419296831199107904L}).toString());
                }
            };
            this.thPing = anonymousClass1;
            anonymousClass1.start();
            return;
        }
        throw new Exception();
    }

    private synchronized void stopForwarderSocks() {
        TkLogStatus.stopNetStat();
        DynamicPortForwarder dynamicPortForwarder = this.dpf;
        if (dynamicPortForwarder != null) {
            try {
                dynamicPortForwarder.close();
            } catch (IOException unused) {
            }
            this.dpf = null;
        }
    }

    private synchronized void stopPinger() {
        Thread thread = this.thPing;
        if (thread != null && thread.isAlive()) {
            TkLogStatus.logInfo(new ObfuscatedString(new long[]{4400241906660663543L, -1539322379202591006L, 7053459527758152935L}).toString());
            this.thPing.interrupt();
            this.thPing = null;
        }
    }

    public void addLogInfo(String str) {
        TkLogStatus.logInfo(str);
    }

    public void authenticate(String str, String str2, String str3) {
        if (this.mConnected) {
            TkLogStatus.updateStateString(new ObfuscatedString(new long[]{8477475613399655987L, 4148309599542021980L, -6848760565366321822L}).toString(), this.mContext.getString(R.string.state_auth));
            try {
                if (this.mConnection.isAuthMethodAvailable(str, new ObfuscatedString(new long[]{8432483985005225466L, 5967951217005099414L}).toString())) {
                    addLogInfo(new ObfuscatedString(new long[]{1360440919845841594L, 499389831993519846L, 3816460495876309300L, 5605955514422572955L, 7828299427750869548L}).toString());
                    if (this.mConnection.authenticateWithPassword(str, str2)) {
                        addLogInfo(new ObfuscatedString(new long[]{8415997867762363409L, 8466448035406071080L, 3508306017222457236L, -1824647168229594991L, 7368671950082865412L}).toString());
                    }
                }
            } catch (IllegalStateException unused) {
                new ObfuscatedString(new long[]{6210299921146839975L, -9132201538506300007L, -8952326323827245591L, 178711841982235901L, -1176131203607074310L, -3122203050040692770L, 185860945228366145L, 8254423631855817727L, -5447277795421525146L}).toString();
            } catch (Exception unused2) {
                new ObfuscatedString(new long[]{2388704159396835367L, -3022443206770061548L, 4720812193656382239L, -3905617924001785771L, -9004689318786786997L, 6600290298734842607L}).toString();
            }
            try {
                if (this.mConnection.isAuthMethodAvailable(str, new ObfuscatedString(new long[]{-8299221225216066543L, -584660375954778471L, 6771923916150701249L}).toString()) && str3 != null && !str3.isEmpty()) {
                    File file = new File(str3);
                    if (file.exists()) {
                        if (str2.equals(new ObfuscatedString(new long[]{5807793535816392811L}).toString())) {
                            str2 = null;
                        }
                        addLogInfo(new ObfuscatedString(new long[]{-5762289097880841572L, 6299188035544596620L, -5634441022942923568L, -308844417946202539L, 8351569474563909339L}).toString());
                        if (this.mConnection.authenticateWithPublicKey(str, file, str2)) {
                            addLogInfo(new ObfuscatedString(new long[]{-3358263282141552397L, 3312091142680176616L, -3866331457748977255L, 5818026599407219240L, 3302267446181835423L}).toString());
                        }
                    }
                }
            } catch (Exception unused3) {
                new ObfuscatedString(new long[]{-5368790030839931066L, -8911293595675477073L, 6155787533925365440L, -2135760185146369560L, -6177082025609930726L, -739184454165575593L, 3526918929124971662L, 6213380640287688213L}).toString();
            }
            if (this.mConnection.isAuthenticationComplete()) {
                return;
            }
            interrupt();
            addLogInfo(new ObfuscatedString(new long[]{-85332641704389972L, -3769638726260275999L, -7590105240144643155L, 6219934552389160685L, 2153574042795667277L, -2397582086244165086L, 3295130274594490392L, 7020021721963014753L, 6202039335754783348L, -5549195663331922603L, -6172194724106620935L}).toString());
            TkLogStatus.updateStateString(new ObfuscatedString(new long[]{-7557086829510893763L, -576468815905114646L, 1454473404583568650L, -8814187355399635870L}).toString(), this.mContext.getString(R.string.auth_failed));
            throw new IOException(new ObfuscatedString(new long[]{7690445876151568868L, -4597593312724987873L, -3654095313896827276L, -9018467858465330270L, 4630016569969255496L, -3348070838282201746L, -7923805928543681549L, 1142567875055546294L}).toString());
        }
        throw new IOException();
    }

    public synchronized void closeDNSTT() {
        stopForwarder();
    }

    @SuppressLint({"DefaultLocale"})
    public void connect(String str, int i) {
        ProxyInfo proxyInfo;
        if (this.mStarting) {
            try {
                Connection connection = new Connection(str, i);
                this.mConnection = connection;
                connection.setCompression(true);
                this.mConnection.setTCPNoDelay(true);
                addProxy(this.mConnection);
                this.mConnection.addConnectionMonitor(this);
                ConnectivityManager connectivityManager = (ConnectivityManager) this.mContext.getSystemService(new ObfuscatedString(new long[]{-6652045595901764590L, -2002182062467790145L, 8297603363252230105L}).toString());
                if (Build.VERSION.SDK_INT >= 23) {
                    proxyInfo = connectivityManager.getDefaultProxy();
                } else {
                    proxyInfo = null;
                }
                if (proxyInfo != null) {
                    addLogInfo(new ObfuscatedString(new long[]{-3514044612534454296L, -1892194665005257459L, 3535710082543070749L, -5378430266646615690L}).toString() + String.format(new ObfuscatedString(new long[]{2712277797849315116L, 4814079419769076558L}).toString(), proxyInfo.getHost(), Integer.valueOf(proxyInfo.getPort())));
                }
                TkLogStatus.updateStateString(new ObfuscatedString(new long[]{-728812209244197702L, 6926881152935205074L, 4201317094954569823L, 911730921208948710L}).toString(), this.mContext.getString(R.string.get_config));
                addLogInfo(this.mContext.getString(R.string.wait));
                this.mConnection.connect(this, 5000, 10000);
                this.mConnected = true;
                return;
            } catch (Exception e) {
                e.printStackTrace(new PrintWriter(new StringWriter()));
                Throwable cause = e.getCause();
                Objects.requireNonNull(cause);
                String th = cause.toString();
                if (this.useProxy && th.contains(new ObfuscatedString(new long[]{-1435629670807655150L, -6976581615719605151L, -1828211771313145083L, 8413633176757443843L, -1364780479162352961L}).toString())) {
                    addLogInfo(new ObfuscatedString(new long[]{1388283612594842222L, -6848669482153857217L, -4931551060426670614L, 5419811415641372951L, 9152891356822198171L, 7160674810030981728L}).toString());
                } else {
                    TkLogStatus.logDebug(new ObfuscatedString(new long[]{6418238491349928215L, 5402706465401589258L, 4069244152729108263L, -8359345428719780756L}).toString() + th);
                }
                throw new Exception(e);
            }
        }
        throw new Exception();
    }

    @Override // com.trilead.ssh2.ConnectionMonitor, com.trilead.ssh2.InteractiveCallback
    public void connectionLost(Throwable th) {
        if (!this.mStarting && !this.mStopping && !this.mReconnecting) {
            TkLogStatus.logError(new ObfuscatedString(new long[]{-4906946038478069806L, 2208376976566976918L}).toString() + this.mContext.getString(R.string.log_conection_lost) + new ObfuscatedString(new long[]{3693071454520964411L, 629954457967354822L, -7287618306150084140L}).toString());
            if (th != null) {
                String message = th.getMessage();
                Objects.requireNonNull(message);
                if (message.contains(new ObfuscatedString(new long[]{9036047201876593775L, -2569507818905406165L, 4836272246785544021L, -4636280494980992830L, -306481036093510252L, 5865420367801114988L}).toString()) || th.getMessage().contains(new ObfuscatedString(new long[]{8724102118278168897L, -2701347245373982481L, -5754799672762562320L, 2794328412394087135L, 8839989021214935026L}).toString())) {
                    return;
                }
                if (th.getMessage().contains(new ObfuscatedString(new long[]{-4992722469367925928L, 8014184382857248186L, 7158797678233355162L, 4512510354129956376L, -4630782393656066778L}).toString())) {
                    stopAll();
                    return;
                } else {
                    reconnectDNSTT();
                    return;
                }
            }
            stopAll();
        }
    }

    @Override // java.lang.Thread
    public void interrupt() {
        super.interrupt();
        this.mStopping = true;
        this.mStarting = false;
        this.mReconnecting = false;
        new Thread(new RunnableC1315xbbf5acb0(this, 0)).start();
        CountDownLatch countDownLatch = this.mTunnelThreadStopSignal;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
        DNSTunnelThread dNSTunnelThread = this.mDNSTunnelThread;
        if (dNSTunnelThread != null) {
            dNSTunnelThread.interrupt();
            this.mDNSTunnelThread = null;
        }
    }

    @Override // com.trilead.ssh2.ConnectionMonitor, com.trilead.ssh2.InteractiveCallback
    public void log(int i, String str, String str2) {
        TkLogStatus.logDebug(String.format(new ObfuscatedString(new long[]{345831262521242039L, 2565709501342074412L}).toString(), str, str2));
    }

    @Override // com.trilead.ssh2.ConnectionMonitor, com.trilead.ssh2.InteractiveCallback
    public void onReceiveInfo(int i, String str) {
        if (i == 101) {
            TkLogStatus.logInfo(new ObfuscatedString(new long[]{-1907042672920844217L, 953285850178017101L}).toString() + this.mContext.getString(R.string.log_server_banner) + new ObfuscatedString(new long[]{-8808803804894337622L, -4042047973056187394L, 9085882800020187978L}).toString() + str);
        }
    }

    public void reconnectDNSTT() {
        int i;
        if (!this.mStarting && !this.mStopping && !this.mReconnecting) {
            this.mReconnecting = true;
            closeDNSTT();
            TkLogStatus.updateStateString(new ObfuscatedString(new long[]{-8997701022624521793L, -8868334426980574228L, 4185209195114416303L}).toString(), this.mContext.getString(R.string.state_reconnecting));
            try {
                Thread.sleep(1000L);
                while (!this.mStopping) {
                    if (!TunnelUtils.isNetworkOnline(this.mContext)) {
                        TkLogStatus.updateStateString(new ObfuscatedString(new long[]{8539712873802278902L, 1050841970038305987L}).toString(), this.mContext.getString(R.string.state_nonetwork));
                        i = 5;
                    } else {
                        this.mStarting = true;
                        TkLogStatus.updateStateString(new ObfuscatedString(new long[]{5389491708179911840L, -7109499864453976159L, 965413461230143444L}).toString(), this.mContext.getString(R.string.state_reconnecting));
                        try {
                            startClienteDNSTT();
                            this.mStarting = false;
                            this.mReconnecting = false;
                            return;
                        } catch (Exception unused) {
                            TkLogStatus.logInfo(new ObfuscatedString(new long[]{6896410869006719306L, -5252029062287598032L}).toString() + this.mContext.getString(R.string.state_disconnected) + new ObfuscatedString(new long[]{4103820939880538028L, -701644461527662572L, -4039580976055291752L}).toString());
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

    @Override // com.trilead.ssh2.InteractiveCallback
    public String[] replyToChallenge(String str, String str2, int i, String[] strArr, boolean[] zArr) {
        String sSHPortString = this.mConfig.getSSHPortString();
        String[] strArr2 = new String[i];
        for (int i2 = 0; i2 < i; i2++) {
            if (strArr[i2].toLowerCase().contains(new ObfuscatedString(new long[]{136534122337423153L, 6762526060514713448L}).toString())) {
                strArr2[i2] = sSHPortString;
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
                new Thread(new RunnableC1315xbbf5acb0(this, 0)).start();
                Thread.sleep(500L);
            }
            try {
                if (!TunnelUtils.isNetworkOnline(this.mContext)) {
                    if (TkLogStatus.isTunnelActive()) {
                        TkLogStatus.updateStateString(new ObfuscatedString(new long[]{-8235719508266401183L, -6949450827023807153L, 3945556378428460521L, 2145777258765732405L, -8311062830161589857L}).toString(), this.mContext.getString(R.string.pause));
                    }
                    if (!TkLogStatus.isTunnelActive()) {
                        TkLogStatus.updateStateString(new ObfuscatedString(new long[]{-7264278084808656001L, 5684008433758179861L, -4624345228108058934L}).toString(), this.mContext.getString(R.string.pause));
                    }
                    try {
                        Thread.sleep(CoroutineLiveDataKt.DEFAULT_TIMEOUT);
                        i++;
                    } catch (InterruptedException unused2) {
                        this.mListener.onStop();
                    }
                } else {
                    if (i > 0) {
                        TkLogStatus.updateStateString(new ObfuscatedString(new long[]{775750205470408120L, 4661264570878722344L, 6522410666993483789L}).toString(), this.mContext.getString(R.string.reconnecting) + new ObfuscatedString(new long[]{-8844566978418922302L, -1261943335988351949L}).toString() + i + new ObfuscatedString(new long[]{7917273708629848488L, 127946301338372939L}).toString());
                        if (i == 50) {
                            addLogInfo(new ObfuscatedString(new long[]{-7199973580302287594L, -1085519090969669790L, -1311328042713423376L, 8543258205813003376L, 1129171600123295211L}).toString());
                            this.mListener.onStop();
                            break;
                        }
                    }
                    try {
                        Thread.sleep(500L);
                        startClienteDNSTT();
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
            new Thread(new RunnableC1315xbbf5acb0(this, 0)).start();
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

    public void startClienteDNSTT() {
        String username;
        String password;
        this.mStopping = false;
        String sSHHost = this.mConfig.getSSHHost();
        int parseInt = Integer.parseInt(this.mConfig.getSSHPortString());
        new ObfuscatedString(new long[]{-3562145991997852445L}).toString();
        new ObfuscatedString(new long[]{-5583139928507800098L}).toString();
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
        String obfuscatedString = new ObfuscatedString(new long[]{3148524546759140967L}).toString();
        try {
            connect(sSHHost, parseInt);
            try {
                authenticate(username, password, obfuscatedString);
                addLogInfo(new ObfuscatedString(new long[]{-1541021039284918357L, -1283624044906136684L, 1625800902880458162L, -829945602461832306L}).toString() + this.mContext.getString(R.string.connected));
                if (this.mConfig.getSSHPinger() > 0) {
                    startPinger(this.mConfig.getSSHPinger());
                }
                startForwarder(1080);
            } catch (IOException unused) {
                throw new IOException(new ObfuscatedString(new long[]{-4923503405323514122L, 2367968336684384490L, -7936322772187247984L, 7268578178911956931L}).toString());
            }
        } catch (Exception e) {
            this.mConnected = false;
            reconnectDNSTT();
            throw e;
        }
    }

    @SuppressLint({"DefaultLocale"})
    public void startForwarder(int i) {
        if (this.mConnected) {
            startForwarderSocks(i);
            c_06.startmanager();
            new Thread(new RunnableC1315xbbf5acb0(this, 1)).start();
            return;
        }
        throw new Exception();
    }

    public void stopAll() {
        if (this.mStopping) {
            return;
        }
        stopPinger();
        new Thread(new RunnableC1315xbbf5acb0(this, 2)).start();
    }

    public void stopForwarder() {
        stopTunnelVpnService();
    }

    public synchronized void stopTunnelVpnService() {
        try {
            if (!isServiceVpnRunning()) {
                return;
            }
            TunnelVpnManager tunnelManager = TunnelState.getTunnelState().getTunnelManager();
            if (tunnelManager != null) {
                tunnelManager.signalStopService();
            }
            LocalBroadcastManager.getInstance(this.mContext).unregisterReceiver(this.m_vpnTunnelBroadcastReceiver);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.trilead.ssh2.ServerHostKeyVerifier
    public boolean verifyServerHostKey(String str, int i, String str2, byte[] bArr) {
        addLogInfo(new ObfuscatedString(new long[]{8305124826953213038L, 2297330162658660502L, -3680025871612978604L}).toString() + KnownHosts.createHexFingerprint(str2, bArr));
        return true;
    }
}
