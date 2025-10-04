package com.tknetwork.tunnel.service;

import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.preference.PreferenceManager;
import androidx.annotation.OptIn;
import androidx.core.app.NotificationCompat;
import app.tunnel.ssh2.tunnel.vpn.Pdnsd;
import app.tunnel.ssh2.tunnel.vpn.Tunnel;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.activities.ActivityUi;
import com.tknetwork.tunnel.activities.OpenVPNApplication;
import com.tknetwork.tunnel.listener.UdpListener;
import com.tknetwork.tunnel.service.TunnelVPN;
import com.tknetwork.tunnel.thread.BackServer;
import com.tknetwork.tunnel.thread.DNSTunnelThread;
import com.tknetwork.tunnel.thread.PayloadInjector;
import com.tknetwork.tunnel.thread.UDPTunnelThread;
import com.tknetwork.tunnel.utils.SSLUtil;
import com.tknetwork.tunnel.utils.VPNUtil;
import com.v2ray.ang.handler.AngConfigManager;
import com.v2ray.ang.handler.MmkvManager;
import com.v2ray.ang.service.ServiceControl;
import com.v2ray.ang.service.V2RayServiceManager;
import com.v2ray.ang.viewmodel.MainViewModel;
import config.ConfigUtil;
import de.blinkt.openvpn.core.ConnectionStatus;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.AbstractC0749x8313616e;
import defpackage.RunnableC0374x3cd97916;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URL;
import java.util.Iterator;
import java.util.Map;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import kotlinx.coroutines.DelicateCoroutinesApi;
import slowdns.app.tunnel.slowdns.process.SlowDnsProcess;

/* loaded from: classes3.dex */
public class TunnelVPN extends Service implements Runnable, Handler.Callback, TkLogStatus.StateListener {
    private static final int NOTIFICATION_ID = 164264;
    private InjectorListener InjectorListener;
    private Socket client;

    /* renamed from: config */
    private ConfigUtil f5778config;
    private SlowDnsProcess dns;
    private DNSTunnelThread dnstt;
    private SharedPreferences.Editor editor;
    private HttpsURLConnection huc;
    private String lastChannel;
    private BackServer mBackServerThread;
    private Bundle mBundle;
    private long mConnecttime;
    private Handler mHandler;
    public c_07 mSSHTunnelThread;
    public SSLSocket mSSLSocket;
    private Thread mThread;
    private int mTunnelType;
    private MainViewModel mainViewModel;
    private SharedPreferences myPrefs;
    private NotificationManager nm;
    private Pdnsd pdns;
    public Socket server;
    private ServerSocket ss;
    private c_07 ssh;
    private Tunnel tun;
    public UDPTunnelThread udp;
    public static final String RECONNECT_SERVICE = new ObfuscatedString(new long[]{925183811781736289L, 7011837601580011440L, 2483221501513348951L, 8722810324214505885L, 5196498171538671018L, -6407688270179354124L}).toString();
    public static final String NOTIFICATION_CHANNEL_BG_ID = new ObfuscatedString(new long[]{3075808997519722778L, 8117041912509256749L, -5637931661933742990L, -302673610788860015L}).toString();
    public static final String STOP_SERVICE = new ObfuscatedString(new long[]{4496458387348360217L, -3291171354129863636L, -1506724102406807503L, 4668375951054228423L}).toString();
    public static final String NOTIFICATION_CHANNEL_NEWSTATUS_ID = new ObfuscatedString(new long[]{-6561916542590766655L, -2407959196219095075L, -1041760172266471390L}).toString();
    public static final String NOTIFICATION_CHANNEL_USERREQ_ID = new ObfuscatedString(new long[]{1093686039753535091L, -124992824335588923L, -4833904621918696474L}).toString();
    public static boolean isRunning = false;
    private static final ConcurrentHashMap<UdpListener, Object> m_OnUdpListeners = new ConcurrentHashMap<>();
    private int repeatCount = 0;
    private NotificationCompat.Builder mNotifyBuilder = null;
    private final Handler m_Handler = new Handler();
    private boolean mDisplayBytecount = false;
    int spt = 0;

    /* renamed from: com.tknetwork.tunnel.service.TunnelVPN$1 */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$de$blinkt$openvpn$core$ConnectionStatus;

        static {
            int[] iArr = new int[ConnectionStatus.values().length];
            $SwitchMap$de$blinkt$openvpn$core$ConnectionStatus = iArr;
            try {
                iArr[ConnectionStatus.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$de$blinkt$openvpn$core$ConnectionStatus[ConnectionStatus.CONNECTING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$de$blinkt$openvpn$core$ConnectionStatus[ConnectionStatus.LEVEL_START.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$de$blinkt$openvpn$core$ConnectionStatus[ConnectionStatus.LEVEL_AUTH_FAILED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$de$blinkt$openvpn$core$ConnectionStatus[ConnectionStatus.LEVEL_NONETWORK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$de$blinkt$openvpn$core$ConnectionStatus[ConnectionStatus.LEVEL_NOTCONNECTED.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$de$blinkt$openvpn$core$ConnectionStatus[ConnectionStatus.LEVEL_WAITING_FOR_USER_INPUT.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$de$blinkt$openvpn$core$ConnectionStatus[ConnectionStatus.CONNECTING_SERVER.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$de$blinkt$openvpn$core$ConnectionStatus[ConnectionStatus.UNKNOWN_LEVEL.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface InjectorListener {
        void startOpenVPN();
    }

    /* loaded from: classes3.dex */
    public class MyBinder extends Binder {
        public MyBinder() {
        }

        public TunnelVPN getService() {
            return TunnelVPN.this;
        }
    }

    private void a(String str, Socket socket) {
        int i = 0;
        OutputStream outputStream = socket.getOutputStream();
        if (str.contains(new ObfuscatedString(new long[]{3105370351316822136L, -1699463495407101997L}).toString())) {
            Random random = new Random();
            String[] split = str.split(Pattern.quote(new ObfuscatedString(new long[]{-8923688979618122953L, -1224106088122860606L}).toString()));
            str = split[random.nextInt(split.length)];
        }
        if (str.contains(new ObfuscatedString(new long[]{-3962082758430444923L, 7913746470265214385L}).toString())) {
            String[] split2 = str.split(Pattern.quote(new ObfuscatedString(new long[]{-1956857695814138372L, 3373568159565608841L}).toString()));
            int i2 = this.repeatCount;
            String str2 = split2[i2];
            int i3 = i2 + 1;
            this.repeatCount = i3;
            if (i3 > split2.length - 1) {
                this.repeatCount = 0;
            }
            str = str2;
        }
        log(String.format(new ObfuscatedString(new long[]{403172007752797299L, 6297323194533567646L, -2632088089731061820L}).toString(), ConfigUtil.hide(str.replace(new ObfuscatedString(new long[]{877985147040613794L, -6498095514976964913L}).toString(), new ObfuscatedString(new long[]{-6930932867357157430L, -5583810937193035846L}).toString()))));
        log(new ObfuscatedString(new long[]{-5788482203216136849L, -7979220526998496854L, -5915279531155602582L}).toString());
        if (str.contains(new ObfuscatedString(new long[]{2081287692746260815L, -3566017651196975496L, -8171246293717524504L}).toString())) {
            String[] split3 = str.split(Pattern.quote(new ObfuscatedString(new long[]{-4251613789597380416L, 3970945442232398711L, -1194473598722736747L}).toString()));
            int length = split3.length;
            while (i < length) {
                String str3 = split3[i];
                if (a(str3, outputStream)) {
                    outputStream.write(str3.getBytes());
                    outputStream.flush();
                    Thread.sleep(1500L);
                }
                i++;
            }
            return;
        }
        if (str.contains(new ObfuscatedString(new long[]{-8847150260433322337L, 8586086851601756113L, -6704308999209692657L}).toString())) {
            String[] split4 = str.split(Pattern.quote(new ObfuscatedString(new long[]{-4571235336629298089L, -5655286624170768496L, -8566294030563277879L}).toString()));
            int length2 = split4.length;
            while (i < length2) {
                String str4 = split4[i];
                if (a(str4, outputStream)) {
                    outputStream.write(str4.getBytes());
                    outputStream.flush();
                    Thread.sleep(0L);
                }
                i++;
            }
            return;
        }
        if (str.contains(new ObfuscatedString(new long[]{4863142173567997043L, -1357950510290841365L, 662398753787794869L}).toString())) {
            String[] split5 = str.split(Pattern.quote(new ObfuscatedString(new long[]{2029371961240032326L, -6507699758695075340L, 3905678912599598668L}).toString()));
            int length3 = split5.length;
            while (i < length3) {
                String str5 = split5[i];
                if (a(str5, outputStream)) {
                    outputStream.write(str5.getBytes());
                    outputStream.flush();
                    Thread.sleep(0L);
                }
                i++;
            }
            return;
        }
        if (str.contains(new ObfuscatedString(new long[]{8258891798467491239L, 1815639982637519351L, -1055382260491504496L}).toString())) {
            String[] split6 = str.split(Pattern.quote(new ObfuscatedString(new long[]{-4369084287628578946L, 2438544415347823903L, -6313512665312926845L}).toString()));
            int length4 = split6.length;
            while (i < length4) {
                String str6 = split6[i];
                if (a(str6, outputStream)) {
                    outputStream.write(str6.getBytes());
                    outputStream.flush();
                    Thread.sleep(1500L);
                }
                i++;
            }
            return;
        }
        if (a(str, outputStream)) {
            outputStream.write(str.getBytes());
            outputStream.flush();
        }
    }

    private String c(String str) {
        if (str != null) {
            try {
                if (!str.equals(new ObfuscatedString(new long[]{-7008233699217992838L}).toString())) {
                    String str2 = str.split(new ObfuscatedString(new long[]{-264571330503827963L, -6791679270680902271L}).toString())[0];
                    String[] split = str2.split(new ObfuscatedString(new long[]{-7866902212897440535L, 2800795896040997469L}).toString());
                    String[] split2 = split[1].split(new ObfuscatedString(new long[]{-6840157974493963250L, -1829560879194240341L}).toString());
                    return d(this.f5778config.getPayload().replace(new ObfuscatedString(new long[]{-8151231161853385215L, 3947284336259035327L, -2821321164433730748L}).toString(), str).replace(new ObfuscatedString(new long[]{7114592934848189505L, 2101825787311508826L}).toString(), str2).replace(new ObfuscatedString(new long[]{3345713979142045485L, -7775100977841306270L}).toString(), split[0]).replace(new ObfuscatedString(new long[]{5038542577412395256L, -1382046170414155199L, -4239780244659710229L}).toString(), split[1]).replace(new ObfuscatedString(new long[]{375169543144806390L, -6757757337570232547L}).toString(), split2[0]).replace(new ObfuscatedString(new long[]{2177853627993329496L, 5284691362752121796L}).toString(), split2[1]).replace(new ObfuscatedString(new long[]{7845570327333394458L, 653787779068837262L, 3488755219606887816L}).toString(), split[2]).replace(new ObfuscatedString(new long[]{9172723823323516888L, -1225129411932707229L}).toString(), new ObfuscatedString(new long[]{7052675078477708244L, 8570619939349336285L}).toString()).replace(new ObfuscatedString(new long[]{2700550297648503147L, -8150935739484548455L}).toString(), new ObfuscatedString(new long[]{-7534675216355909260L, 4290864296738849442L}).toString()).replace(new ObfuscatedString(new long[]{-5292874496758248578L, -8337035912362958618L}).toString(), new ObfuscatedString(new long[]{-1181968527749828949L, 1274806041119895563L}).toString()).replace(new ObfuscatedString(new long[]{6077277191820996493L, 9213064093836223129L}).toString(), new ObfuscatedString(new long[]{1941935466857820770L, 7793890441744297790L}).toString()).replace(new ObfuscatedString(new long[]{-4692490370821232518L, -1764058329055248728L, 4132036610504843128L}).toString(), this.f5778config.getSSHHost()).replace(new ObfuscatedString(new long[]{-6803242798507870108L, -3379751282254297738L}).toString(), this.f5778config.getSSHHost()).replace(new ObfuscatedString(new long[]{2033899578752184504L, 5411989028536442657L}).toString(), new ObfuscatedString(new long[]{-2499742128211505782L, 7728384971648545420L}).toString()).replace(new ObfuscatedString(new long[]{-4011075730154590501L, 8236384396215149297L}).toString(), new ObfuscatedString(new long[]{7048980190751715947L, -1758702412978393719L}).toString()));
                }
            } catch (Exception e) {
                log(new ObfuscatedString(new long[]{-3824369725691981261L, 4918249366449360280L, -392824459406682165L}).toString(), e.toString());
            }
        }
        log(new ObfuscatedString(new long[]{-4767642950800302593L, 7337666268771276219L, -637115155385304314L}).toString(), new ObfuscatedString(new long[]{-3466048229112005978L, 8245139275958991676L, -8421984999156598269L, 2439121467186088673L}).toString());
        return null;
    }

    private void c_02() {
        Thread thread = this.mThread;
        if (thread != null) {
            thread.interrupt();
        }
        if (!this.f5778config.getConnectionType().equals(new ObfuscatedString(new long[]{-3970954977895817109L, -5937302855959613353L}).toString()) && !this.f5778config.getConnectionType().equals(new ObfuscatedString(new long[]{4396243763679740938L, -5592177942069798013L}).toString())) {
            this.mHandler.sendEmptyMessage(2);
        } else {
            this.mThread.start();
        }
    }

    public void closeAll() {
        try {
            ServerSocket serverSocket = this.ss;
            if (serverSocket != null) {
                serverSocket.close();
                this.ss = null;
            }
            Socket socket = this.client;
            if (socket != null) {
                socket.close();
            }
            Socket socket2 = this.server;
            if (socket2 != null) {
                socket2.close();
                this.server = null;
            }
            SSLSocket sSLSocket = this.mSSLSocket;
            if (sSLSocket != null) {
                sSLSocket.close();
                this.mSSLSocket = null;
            }
            Thread thread = this.mThread;
            if (thread != null) {
                thread.interrupt();
            }
            HttpsURLConnection httpsURLConnection = this.huc;
            if (httpsURLConnection != null) {
                httpsURLConnection.disconnect();
            }
            BackServer backServer = this.mBackServerThread;
            if (backServer != null) {
                backServer.Stop();
                this.mBackServerThread = null;
            }
        } catch (Exception unused) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.lang.Object, javax.net.ssl.HostnameVerifier] */
    private void connectSSL() {
        SSLUtil sSLUtil = new SSLUtil(this);
        URL url = new URL(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{6771316764049701901L, 4590479978662617348L}), new StringBuilder(), this.f5778config.getSni().replace(new ObfuscatedString(new long[]{-4920252889700146005L, -1327304714994656261L, -3785170676715244841L}).toString(), this.f5778config.getSSHHost()).replace(new ObfuscatedString(new long[]{477681206005752924L, -5405137208863635804L}).toString(), this.f5778config.getSSHHost())));
        String host = url.getHost();
        if (url.getPort() > 0) {
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(host);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{-6316299294341148515L, -4967311384610294479L}).toString());
            m3341xc20437a5.append(url.getPort());
            host = m3341xc20437a5.toString();
        }
        if (!url.getPath().equals(new ObfuscatedString(new long[]{-8098666480722548254L, 1987787030630949740L}).toString())) {
            StringBuilder m3341xc20437a52 = AbstractC0749x8313616e.m3341xc20437a5(host);
            m3341xc20437a52.append(url.getPath());
            host = m3341xc20437a52.toString();
        }
        log(new ObfuscatedString(new long[]{-8800668346974935181L, -7478432696030816939L, 780709373897208712L}).toString() + ConfigUtil.hide(host));
        HttpsURLConnection httpsURLConnection = (HttpsURLConnection) url.openConnection(new Proxy(Proxy.Type.HTTP, this.mBackServerThread.getLocalSocketAddr()));
        this.huc = httpsURLConnection;
        httpsURLConnection.setHostnameVerifier(new Object());
        this.huc.setSSLSocketFactory(sSLUtil);
        this.huc.connect();
    }

    private boolean connectSocket() {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(this.client.getInputStream()));
            StringBuilder sb = new StringBuilder();
            String readLine = bufferedReader.readLine();
            if (readLine != null && readLine.length() > 0) {
                sb.append(readLine);
                sb.append(new ObfuscatedString(new long[]{5375547173684452732L, -4756907722173211707L}).toString());
                if (sb.toString().equals(new ObfuscatedString(new long[]{2066471721729629187L}).toString())) {
                    log(new ObfuscatedString(new long[]{4811992469230348530L, -6269822015614273451L, -168575808857957854L}).toString(), new ObfuscatedString(new long[]{-8769840708471511532L, -1828668857036982421L, -5323102747435193219L, 1132083000882978309L, 6926072265949053458L, -6833762476202289485L, -1575530001066628818L}).toString());
                    return false;
                }
                log(new ObfuscatedString(new long[]{-7024798979578173935L, -1227385003895526039L, 7995763187493445622L}).toString(), this.f5778config.getServerSelectedName());
                if (this.mTunnelType != 0) {
                    log(new ObfuscatedString(new long[]{-8087804224209164860L, 685727069518374224L, 5563664272191086003L}).toString(), this.f5778config.getNetworkSelectedName());
                }
                if (this.f5778config.getConnectionType().equals(new ObfuscatedString(new long[]{-797737500794569368L, 9143757006003307161L}).toString())) {
                    log(String.format(new ObfuscatedString(new long[]{7862175691110796380L, 5689485084172844051L, -6324919467033402156L, -1715745752935240948L}).toString(), new String[]{new ObfuscatedString(new long[]{6342992206324271919L, -204572807600492915L, 8386360002640727087L}).toString(), new ObfuscatedString(new long[]{2512131217056412615L, 1984495487142753516L, 7197870498024630023L, 7245776566731367953L}).toString(), new ObfuscatedString(new long[]{-3912989728022216533L, -8614312308037159233L, 7524129554674931305L, 2361354206062119941L, 7070719452981709485L}).toString(), new ObfuscatedString(new long[]{-4287231151120733047L, 3623289465763622965L, -1799583287018434355L}).toString(), new ObfuscatedString(new long[]{-6019471889464955103L, 1121803694767557192L, 8142760006265596489L, -626344659416185955L, 6607213192118731243L}).toString(), new ObfuscatedString(new long[]{-3384140043010233107L, 7642091902981414831L, -8585463144559501082L, 1127186836710951618L, -339174050548572992L}).toString()}[this.mTunnelType]));
                } else if (this.f5778config.getConnectionType().equals(new ObfuscatedString(new long[]{-2027521003839752570L, 2646084070048986433L}).toString())) {
                    log(String.format(new ObfuscatedString(new long[]{8624348300074625093L, -1758068595445815711L, 6550386406151187353L, -604698189237064905L}).toString(), new String[]{new ObfuscatedString(new long[]{5837122237870489604L, 2544402050056552437L, -3235407246398479322L}).toString(), new ObfuscatedString(new long[]{-1050604088021308365L, 1587627040030204089L, 3687478856146709139L, -5721708558856051525L}).toString(), new ObfuscatedString(new long[]{-7395802399540644264L, -4418086694808776268L, -5610458429192046114L, -3872132067632859576L}).toString(), new ObfuscatedString(new long[]{3760647097672589130L, -7956635333375860257L, -1100393596442025798L}).toString(), new ObfuscatedString(new long[]{3764369479646111176L, 676014847397729036L, 7744534575947285955L, 7867156800345629157L}).toString(), new ObfuscatedString(new long[]{8337068903599508643L, -7466675191462389636L, 7752092948299566163L, 1692613447685358019L, -2832485641677051506L}).toString()}[this.mTunnelType]));
                } else if (this.f5778config.getConnectionType().equals(new ObfuscatedString(new long[]{6232707538483082871L, -6725127346074958744L}).toString())) {
                    log(String.format(new ObfuscatedString(new long[]{-8199509030493213901L, 5551486710335909455L, 2575921235751859165L, -2850884615806844236L}).toString(), new String[]{new ObfuscatedString(new long[]{-6947388367591858931L, 1776107311583628328L, -1469682644042175567L}).toString(), new ObfuscatedString(new long[]{-7585108061909140363L, -3966472930957526869L, 6675502232524839449L, 5523006894376827869L}).toString(), new ObfuscatedString(new long[]{832542913024554743L, -2895513821644441375L, -2269880255687854149L, 881099683089948842L}).toString(), new ObfuscatedString(new long[]{-1985964543361076879L, -3075214090166612835L, -2837309765879637337L}).toString(), new ObfuscatedString(new long[]{-7900715358169580798L, -9086990638416965496L, 4726181471623547535L, 2649561540095650033L}).toString(), new ObfuscatedString(new long[]{-1100647450801599518L, 3872970239433210293L, -4756992523660476676L, -7763170725459113302L, -3341609246817988296L}).toString()}[this.mTunnelType]));
                }
                int i = this.mTunnelType;
                if (i == 0) {
                    String str = sb.toString().split(new ObfuscatedString(new long[]{-2403359031730558968L, 1663529014727003650L}).toString())[0].split(new ObfuscatedString(new long[]{-5187153199554427602L, 4201103504714409934L}).toString())[1];
                    connectSocket(str.split(new ObfuscatedString(new long[]{7578815464891091292L, 7095983739470703951L}).toString())[0], Integer.parseInt(str.split(new ObfuscatedString(new long[]{3242418683614180894L, -1962329678737870438L}).toString())[1]));
                    send200Status(this.client.getOutputStream());
                } else if (i == 1) {
                    String c = c(sb.toString());
                    if (c == null) {
                        return false;
                    }
                    String str2 = sb.toString().split(new ObfuscatedString(new long[]{-2671026013659171036L, 3020942115384556179L}).toString())[0].split(new ObfuscatedString(new long[]{5192479370540057080L, 1295488699686923717L}).toString())[1];
                    connectSocket(str2.split(new ObfuscatedString(new long[]{-1975433033202660709L, 5249077887009248372L}).toString())[0], Integer.parseInt(str2.split(new ObfuscatedString(new long[]{8531235584199454036L, -2998079151492330442L}).toString())[1]));
                    if (!c.equals(new ObfuscatedString(new long[]{-2507498126283454251L}).toString())) {
                        a(c, this.server);
                    }
                    send200Status(this.client.getOutputStream());
                } else if (i == 2) {
                    String c2 = c(sb.toString());
                    if (c2 == null) {
                        return false;
                    }
                    if (this.f5778config.getConnectionType().equals(new ObfuscatedString(new long[]{-1516009081692648485L, -6303121663426755066L}).toString())) {
                        String proxy = this.f5778config.getProxy();
                        int parseInt = Integer.parseInt(this.f5778config.getProxyPort());
                        String str3 = proxy + new ObfuscatedString(new long[]{289293293707386501L, 3505520628229130700L}).toString() + parseInt;
                        log(new ObfuscatedString(new long[]{-6807838134965748416L, 9179330417106043598L, 6257261079347796694L}).toString(), new ObfuscatedString(new long[]{4992494999298715141L, 5072695550186467694L, 1512486893727023743L}).toString() + ConfigUtil.hide(str3));
                        connectSocket(proxy, parseInt);
                    } else if (this.f5778config.getConnectionType().equals(new ObfuscatedString(new long[]{1736454854006754765L, -8999245034868640656L}).toString())) {
                        String proxy2 = this.f5778config.getProxy();
                        int parseInt2 = Integer.parseInt(this.f5778config.getProxyPort());
                        String str4 = proxy2 + new ObfuscatedString(new long[]{1105917532932272585L, 8436440585984614807L}).toString() + parseInt2;
                        log(new ObfuscatedString(new long[]{8316693873028783015L, 3861664693322016862L, 7379569741450492978L}).toString(), new ObfuscatedString(new long[]{-1232041681553617111L, -6589611474468007867L, 4076105632643875819L}).toString() + ConfigUtil.hide(str4));
                        connectSocket(proxy2, parseInt2);
                    } else if (this.f5778config.getConnectionType().equals(new ObfuscatedString(new long[]{-5427710090771959079L, 237234760865065851L}).toString())) {
                        String proxy3 = this.f5778config.getProxy();
                        int parseInt3 = Integer.parseInt(this.f5778config.getProxyPort());
                        String str5 = proxy3 + new ObfuscatedString(new long[]{-240515742698496461L, -4888868024018659850L}).toString() + parseInt3;
                        log(new ObfuscatedString(new long[]{-7678004003736674480L, -7842795228155716644L, -6685872419931055572L}).toString(), new ObfuscatedString(new long[]{-3357803310677153940L, 2432499803780159339L, 2540173946103640491L}).toString() + ConfigUtil.hide(str5));
                        connectSocket(proxy3, parseInt3);
                    }
                    if (!c2.equals(new ObfuscatedString(new long[]{6640664961026046646L}).toString())) {
                        a(c2, this.server);
                    }
                } else if (i == 3) {
                    String str6 = sb.toString().split(new ObfuscatedString(new long[]{8310795442410564103L, -6142469334022630321L}).toString())[0].split(new ObfuscatedString(new long[]{-1428117954155119723L, -49184134590484766L}).toString())[1];
                    connectSocket(str6.split(new ObfuscatedString(new long[]{-2439597648812711880L, -3835379468243276916L}).toString())[0], Integer.parseInt(str6.split(new ObfuscatedString(new long[]{-6446188452090736982L, -414186385724620589L}).toString())[1]));
                    connectSSL();
                    send200Status(this.client.getOutputStream());
                } else if (i == 4) {
                    String c3 = c(sb.toString());
                    if (c3 == null) {
                        return false;
                    }
                    String str7 = sb.toString().split(new ObfuscatedString(new long[]{-4622062812262008176L, 526528225454868389L}).toString())[0].split(new ObfuscatedString(new long[]{8363048774339937924L, 2429215088520479257L}).toString())[1];
                    connectSocket(str7.split(new ObfuscatedString(new long[]{-6931330749753004720L, -8585926361841251982L}).toString())[0], Integer.parseInt(str7.split(new ObfuscatedString(new long[]{2541295647272309518L, 517224618010974234L}).toString())[1]));
                    connectSSL();
                    if (!c3.equals(new ObfuscatedString(new long[]{-6117435496918332745L}).toString())) {
                        a(c3, this.mSSLSocket);
                    }
                    send200Status(this.client.getOutputStream());
                } else if (i == 5) {
                    String c4 = c(sb.toString());
                    if (c4 == null) {
                        return false;
                    }
                    String proxy4 = this.f5778config.getProxy();
                    int parseInt4 = Integer.parseInt(this.f5778config.getProxyPort());
                    String str8 = proxy4 + new ObfuscatedString(new long[]{-1357893628249482054L, 9048661701053603804L}).toString() + parseInt4;
                    log(new ObfuscatedString(new long[]{-3776082990462793827L, 8105582929589521616L, -416353523585684820L}).toString(), new ObfuscatedString(new long[]{-6897597217185309261L, -4817599385226774244L, 2417230021715988416L}).toString() + ConfigUtil.hide(str8));
                    connectSocket(proxy4, parseInt4);
                    connectSSL();
                    if (!c4.equals(new ObfuscatedString(new long[]{4556987745740978827L}).toString())) {
                        a(c4, this.mSSLSocket);
                    }
                } else if (i == 7) {
                    String str9 = sb.toString().split(new ObfuscatedString(new long[]{-6346583693500453408L, 7763149274056093809L}).toString())[0].split(new ObfuscatedString(new long[]{-3982578680004464973L, -1915879073470149234L}).toString())[1];
                    connectSocket(str9.split(new ObfuscatedString(new long[]{-287395280091697731L, -6688228820448695077L}).toString())[0], Integer.parseInt(str9.split(new ObfuscatedString(new long[]{-1270456141113091101L, 4681178349004306043L}).toString())[1]));
                    send200Status(this.client.getOutputStream());
                }
                return this.mSSLSocket != null ? !this.client.isClosed() && this.server.isConnected() && this.mSSLSocket.isConnected() : !this.client.isClosed() && this.server.isConnected();
            }
        } catch (Exception unused) {
        }
        return false;
    }

    private String d(String str) {
        if (str.contains(new ObfuscatedString(new long[]{5254524012112107070L, 7761359629014995552L}).toString())) {
            str = a(str, new ObfuscatedString(new long[]{3299639485192122660L, 5776895088806401595L}).toString(), new ObfuscatedString(new long[]{5556484702735379657L, -3980008495916420693L}).toString());
        }
        if (str.contains(new ObfuscatedString(new long[]{1276482194477123778L, -7067373841691015050L}).toString())) {
            str = a(str, new ObfuscatedString(new long[]{4293346072011599483L, 2148550482578972892L}).toString(), new ObfuscatedString(new long[]{4596718366385972617L, 9120488212577419862L}).toString());
        }
        if (str.contains(new ObfuscatedString(new long[]{8413243249190747625L, 6515466110620940066L}).toString())) {
            str = a(str, new ObfuscatedString(new long[]{-2826489575431635431L, 3278537600545425010L}).toString(), new ObfuscatedString(new long[]{6425295506534204792L, 168367669479669982L}).toString());
        }
        if (str.contains(new ObfuscatedString(new long[]{-5167034554779429795L, 8098393814177382084L}).toString())) {
            return a(str, new ObfuscatedString(new long[]{-7831217475084156579L, -3582931450472311956L}).toString(), new ObfuscatedString(new long[]{7301486772215157834L, 7622692268367172137L}).toString());
        }
        return str;
    }

    private void doVpnProtect(Socket socket) {
        if (VPNUtil.isProtected(socket)) {
            log(new ObfuscatedString(new long[]{-698841195410805630L, 6227995739075217520L, -4113883364399665245L, 506124304978374458L}).toString());
        }
    }

    private int getIconByConnectionStatus(ConnectionStatus connectionStatus) {
        int i = AnonymousClass1.$SwitchMap$de$blinkt$openvpn$core$ConnectionStatus[connectionStatus.ordinal()];
        if (i != 1) {
            if (i != 2 && i != 3) {
                return R.drawable.ic_cloud_off;
            }
            return 0;
        }
        return R.drawable.ic_cloud_on;
    }

    public static /* synthetic */ boolean lambda$connectSSL$2(String str, SSLSession sSLSession) {
        return true;
    }

    public static /* synthetic */ void lambda$onDisconnected$0() {
        Iterator<Map.Entry<UdpListener, Object>> it = m_OnUdpListeners.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getKey().onDisconnected();
        }
    }

    public /* synthetic */ void lambda$stopInjector$1() {
        if (this.dns != null) {
            try {
                vpn_handler();
                this.dns.interrupt();
                this.dns = null;
                onDisconnected();
            } catch (Exception unused) {
            }
        }
    }

    private void log(String str, String str2) {
        log(String.format(new ObfuscatedString(new long[]{-6648075043733087980L, -6228644570944634092L}).toString(), str, str2));
    }

    private void send200Status(OutputStream outputStream) {
        outputStream.write(new ObfuscatedString(new long[]{-4639844551679910873L, 5636300530946822211L, 5491986052335916644L, -2763546116846086519L, -1857978416266086377L, -4269634561118574143L}).toString().getBytes());
        outputStream.flush();
    }

    private void showNotification() {
    }

    private void startConnect() {
        if (this.f5778config.getConnectionType().equals(new ObfuscatedString(new long[]{-6671138190785851731L, 4522411326978409155L}).toString())) {
            this.InjectorListener.startOpenVPN();
        } else if (this.f5778config.getConnectionType().equals(new ObfuscatedString(new long[]{-6211874133314467859L, -4417125101923123579L}).toString())) {
            c_09.startSocksHttp(this);
        }
    }

    private void startInjector1() {
        Thread thread = this.mThread;
        if (thread != null) {
            thread.interrupt();
        }
        this.mThread.start();
    }

    private void startVPN() {
        this.InjectorListener.startOpenVPN();
    }

    private void stop_notification() {
        if (this.mNotifyBuilder != null) {
            this.mNotifyBuilder = null;
            stopForeground(true);
        }
    }

    private void update_notification_event(String str, ConnectionStatus connectionStatus) {
        int iconByConnectionStatus = getIconByConnectionStatus(connectionStatus);
        if (this.mNotifyBuilder != null) {
            if (str.contains(getString(R.string.state_connected))) {
                this.mNotifyBuilder.setTicker(getString(R.string.state_connected));
            }
            this.mNotifyBuilder.setSmallIcon(iconByConnectionStatus);
            NotificationCompat.Builder builder = this.mNotifyBuilder;
            if (!this.mDisplayBytecount) {
                str = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-734661020025496192L, -2882824603429372267L}), new StringBuilder(), str);
            }
            builder.setContentText(str);
            this.nm.notify(NOTIFICATION_ID, this.mNotifyBuilder.build());
            startForeground(NOTIFICATION_ID, this.mNotifyBuilder.getNotification());
        }
    }

    private void vpn_handler() {
        try {
            if (c_06.isRunning) {
                getBaseContext().startService(new Intent(getBaseContext(), (Class<?>) c_06.class).setAction(new ObfuscatedString(new long[]{-5213272737134830955L, -4551516346799775301L, 4888799457245501185L, -8364037622894059794L}).toString()));
            }
        } catch (Exception unused) {
            stopInjector();
        }
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            if (i == 2) {
                startConnect();
            }
        } else {
            String str = (String) message.obj;
            if (VPNUtil.getService() != null) {
                c_05.log_message(str);
            }
        }
        return true;
    }

    public void launchActivity() {
        Intent intent = new Intent(this, (Class<?>) ActivityUi.class);
        intent.addFlags(65536);
        startActivity(intent);
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return new MyBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        this.mHandler = new Handler(this);
        this.nm = (NotificationManager) getSystemService(new ObfuscatedString(new long[]{-6807387927707374094L, -5192323844539964441L, -1920757351431942594L}).toString());
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this);
        this.myPrefs = defaultSharedPreferences;
        this.editor = defaultSharedPreferences.edit();
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.repeatCount = 0;
        this.spt = 0;
        new PayloadInjector().interrupt();
    }

    public void onDisconnected() {
        this.m_Handler.post(new RunnableC0374x3cd97916(6));
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        if (intent == null) {
            return;
        }
        this.mBundle = intent.getExtras();
        String action = intent.getAction();
        if (action.equals(new ObfuscatedString(new long[]{2011683377627616008L, -4447609773839777308L}).toString())) {
            this.mThread = new Thread(this, new ObfuscatedString(new long[]{-3734315101706614761L, -4109987894472491444L, 8740487315580818361L}).toString());
            ConfigUtil configUtil = ConfigUtil.getInstance(this);
            this.f5778config = configUtil;
            this.mTunnelType = configUtil.getTunnelType();
            log(new ObfuscatedString(new long[]{-7379791644581170094L, 1513027439424882434L, 4820347680094262974L, -3388467896279352237L, -395060977355247780L}).toString());
            isRunning = true;
            c_02();
        } else if (action.equals(new ObfuscatedString(new long[]{-3497797429624846586L, -7080623988700752713L}).toString())) {
            stopInjector();
        }
        super.onStart(intent, i);
    }

    @Override // java.lang.Runnable
    @OptIn(markerClass = {DelicateCoroutinesApi.class})
    public void run() {
        String username;
        String password;
        boolean z = this.mBundle.getBoolean(new ObfuscatedString(new long[]{4245403033674160843L, -6099546817337759168L}).toString(), false);
        String v2rayConfig = this.f5778config.getV2rayConfig();
        if (v2rayConfig == null) {
            return;
        }
        int tunnelType = this.f5778config.getTunnelType();
        if (tunnelType == 11) {
            this.f5778config.getWireguard();
            log(new ObfuscatedString(new long[]{-8253114985702144566L, -4343216128786399983L, 6500897574324629395L, -422403047505742989L, 6936848787596968884L, 1421062022702901877L}).toString());
        }
        new ObfuscatedString(new long[]{-5400571199304913411L}).toString();
        new ObfuscatedString(new long[]{1349272535816951207L}).toString();
        if (this.f5778config.getEnableFreeServer()) {
            username = this.f5778config.getFreeServerUsername();
            password = this.f5778config.getFreeServerPassword();
        } else {
            username = this.f5778config.getUsername();
            password = this.f5778config.getPassword();
        }
        if (tunnelType == 8) {
            this.f5778config.sets1(v2rayConfig.replace(new ObfuscatedString(new long[]{-7339174696848294975L, -2949553679975213346L, -8103012554099891875L}).toString(), String.format(new ObfuscatedString(new long[]{3866444804896175266L, -4209334673762428799L}).toString(), username, password)));
            if (z) {
                String s1Var = this.f5778config.gets1();
                if (!AngConfigManager.importCustomizeConfig(s1Var) && !AngConfigManager.importBatchConfig(s1Var)) {
                    log(new ObfuscatedString(new long[]{835934599754695739L, 3975637662773328877L, 5611036874984107715L, 9158374638232802299L, -1764133687640787158L, 7528856511314217384L, -2264551238573542476L}).toString());
                    TkLogStatus.updateStateString(new ObfuscatedString(new long[]{-5622968247119884874L, 4582418060007196872L, -3638382919741872849L}).toString(), OpenVPNApplication.resString(R.string.state_disconnected));
                }
                V2RayServiceManager.startVService(this, MmkvManager.getSelectServer());
            } else {
                if (!AngConfigManager.importCustomizeConfig(v2rayConfig) && !AngConfigManager.importBatchConfig(v2rayConfig)) {
                    log(new ObfuscatedString(new long[]{4727645744934679542L, -4119072506098500419L, -435417135996630763L, -4395396233043715732L, 92902232431508075L, -2245056597428731119L, 3713191693873429410L}).toString());
                    TkLogStatus.updateStateString(new ObfuscatedString(new long[]{-910231219226691493L, 3891909587837985815L, 7785645180083425377L}).toString(), OpenVPNApplication.resString(R.string.state_disconnected));
                }
                V2RayServiceManager.startVService(this, MmkvManager.getSelectServer());
            }
            log(new ObfuscatedString(new long[]{1834376079515320498L, -6364431475066801513L, -3321561405419056243L, -1938871427429148059L, 4937829187448908104L, -8664815111304984756L}).toString());
            return;
        }
        if (tunnelType == 9) {
            new DNSTunnelThread(this).start();
            log(new ObfuscatedString(new long[]{-2300098312033247291L, 2579579737239128890L, 7583601709206703026L, -6654788093076805857L, -7002081733679419238L, -6624590127712212243L}).toString());
            return;
        }
        if (tunnelType == 10) {
            String string = this.mBundle.getString(new ObfuscatedString(new long[]{7130644475392049233L, 1976021342909610263L, -8451107347975143540L}).toString());
            String string2 = this.mBundle.getString(new ObfuscatedString(new long[]{-3123629382822767656L, -8518233370472277746L, -5171978412926332088L, -6768572657142310750L}).toString());
            String string3 = this.mBundle.getString(new ObfuscatedString(new long[]{-6408575106246493124L, -3023811728209825134L}).toString());
            if (string != null && string2 != null && string3 != null) {
                String decrypt = VPNUtil.decrypt(string3);
                this.mBundle.putString(new ObfuscatedString(new long[]{-4374886422135390333L, -2292456309087443487L, 8547597855399830923L, -6758839559050118169L}).toString(), string);
                this.mBundle.putString(new ObfuscatedString(new long[]{-1663424468006561372L, 5666567738198800521L, 1066256282961847035L}).toString(), string2);
                this.mBundle.putString(new ObfuscatedString(new long[]{-7010816508896385814L, -4125857095249499078L, -2125676564505322105L, 6971583016753329659L}).toString(), decrypt);
                new SlowDnsProcess(this, this.mBundle).start();
                this.mHandler.sendEmptyMessage(2);
                log(new ObfuscatedString(new long[]{6719312335776462966L, 6619435398986928033L, -566258910703939366L, 5700223131769652257L, 2049534279016881099L, -8975539860771100108L, 5833735670647269596L}).toString());
                return;
            }
            return;
        }
        int parseInt = Integer.parseInt(this.f5778config.getProxyAddress().split(new ObfuscatedString(new long[]{-3959362822988040943L, -7176853737304480474L}).toString())[1]);
        boolean enableReplace = this.f5778config.getEnableReplace();
        int tunnelType2 = this.f5778config.getTunnelType();
        log(new ObfuscatedString(new long[]{-7167240539641300503L, 9068598865389037049L, 2375658213139680695L, 2919952543345256448L}).toString());
        try {
            this.ss = new ServerSocket(parseInt);
            if (tunnelType2 == 3 || tunnelType2 == 4 || tunnelType2 == 5) {
                BackServer backServer = this.mBackServerThread;
                if (backServer != null) {
                    backServer.Stop();
                }
                BackServer backServer2 = new BackServer();
                this.mBackServerThread = backServer2;
                backServer2.start();
            }
            this.mHandler.sendEmptyMessage(2);
            while (isRunning) {
                Socket accept = this.ss.accept();
                this.client = accept;
                if (accept != null && !accept.isClosed() && connectSocket()) {
                    this.client.setKeepAlive(true);
                    SSLSocket sSLSocket = this.mSSLSocket;
                    if (sSLSocket != null && sSLSocket.isConnected()) {
                        this.mSSLSocket.setKeepAlive(true);
                        this.server.setKeepAlive(true);
                        doVpnProtect(this.mSSLSocket);
                        PayloadInjector.connect(this.client, this.mSSLSocket, enableReplace);
                    } else {
                        Socket socket = this.server;
                        if (socket != null && socket.isConnected()) {
                            this.server.setKeepAlive(true);
                            doVpnProtect(this.server);
                            PayloadInjector.connect(this.client, this.server, enableReplace);
                        }
                    }
                }
            }
        } catch (Exception e) {
            if (e.getMessage().contains(new ObfuscatedString(new long[]{-1756729176155076663L, -2816083613612661176L, 8534500016178104473L}).toString())) {
                log(e.getMessage());
                onDestroy();
            } else {
                log(new ObfuscatedString(new long[]{7158314393924153568L, 8132109262658143361L, -4729504974455131929L, 5262074480631873927L}).toString() + e.getMessage());
            }
        }
    }

    public void setInjectorListener(InjectorListener injectorListener) {
        this.InjectorListener = injectorListener;
    }

    public void stopInjector() {
        final int i = 1;
        final int i2 = 0;
        isRunning = false;
        log(new ObfuscatedString(new long[]{3386755317106996668L, 5476584550065926287L, -8460267412867583785L, -5652374436195248712L}).toString());
        this.repeatCount = 0;
        int tunnelType = this.f5778config.getTunnelType();
        if (tunnelType != 8 && tunnelType != 11) {
            if (tunnelType == 10) {
                new Thread(new Runnable(this) { // from class: 땭뒤땰딐땀돷딝땹딀뒻된듬돴뎰드땸돴돨돴듽땫땡땔돷땵들듔듌돴둘됐뒐됨듻딜둥땨듬뒛득땨뎽뒨득뒈듐듌될돤두뒛뒋됴돷듼땜딟땟돵땜돰땦뒼딄딄딨디뒨땝딄뒼뎻듻돳듽뒛땩뎨득돳둥뎸땀둡든뒀땋뒼돝뒐든딠되든된땍돳땦땨딽땨땳둠된땄디돵땬뒻뎠땁뒘뒉듻돴뒋땨듽뎨땨둬딤따땅땫땪따뎠뒻돸

                    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                    public final /* synthetic */ TunnelVPN f5671x3271d0aa;

                    {
                        this.f5671x3271d0aa = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i2) {
                            case 0:
                                this.f5671x3271d0aa.lambda$stopInjector$1();
                                return;
                            default:
                                this.f5671x3271d0aa.closeAll();
                                return;
                        }
                    }
                }).start();
            } else {
                new Thread(new Runnable(this) { // from class: 땭뒤땰딐땀돷딝땹딀뒻된듬돴뎰드땸돴돨돴듽땫땡땔돷땵들듔듌돴둘됐뒐됨듻딜둥땨듬뒛득땨뎽뒨득뒈듐듌될돤두뒛뒋됴돷듼땜딟땟돵땜돰땦뒼딄딄딨디뒨땝딄뒼뎻듻돳듽뒛땩뎨득돳둥뎸땀둡든뒀땋뒼돝뒐든딠되든된땍돳땦땨딽땨땳둠된땄디돵땬뒻뎠땁뒘뒉듻돴뒋땨듽뎨땨둬딤따땅땫땪따뎠뒻돸

                    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                    public final /* synthetic */ TunnelVPN f5671x3271d0aa;

                    {
                        this.f5671x3271d0aa = this;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i) {
                            case 0:
                                this.f5671x3271d0aa.lambda$stopInjector$1();
                                return;
                            default:
                                this.f5671x3271d0aa.closeAll();
                                return;
                        }
                    }
                }).start();
            }
        } else {
            SoftReference<ServiceControl> serviceControl = V2RayServiceManager.INSTANCE.getServiceControl();
            if (serviceControl != null) {
                serviceControl.get().stopService();
            }
        }
        c_09.stopSocksHttp(this);
        stopForeground(true);
        stopSelf();
    }

    @Override // de.blinkt.openvpn.core.TkLogStatus.StateListener
    public void updateState(String str, String str2, int i, ConnectionStatus connectionStatus, int i2) {
        String string = getString(TkLogStatus.getLocalizedState(TkLogStatus.getLastState()));
        this.mDisplayBytecount = connectionStatus.equals(ConnectionStatus.CONNECTED);
        update_notification_event(string, connectionStatus);
    }

    private void log(Exception exc) {
        log(String.format(new ObfuscatedString(new long[]{-4991128206370614024L, 3906617744052999253L}).toString(), new ObfuscatedString(new long[]{771444288361956409L, -3672735484499764741L, -8309529212440963456L, -8481553804844903589L}).toString(), exc.getMessage()));
    }

    public void log(String str) {
        TkLogStatus.logInfo(str);
    }

    private boolean a(String str, OutputStream outputStream) {
        if (!str.contains(new ObfuscatedString(new long[]{8336700393329576231L, 8167136254546336921L}).toString())) {
            return true;
        }
        for (String str2 : str.split(Pattern.quote(new ObfuscatedString(new long[]{7334444240830993399L, -5294110172013464279L}).toString()))) {
            outputStream.write(str2.getBytes());
            Thread.sleep(1000);
            outputStream.flush();
        }
        return false;
    }

    private String a(String str, String str2, String str3) {
        while (str.contains(str2)) {
            Matcher matcher = Pattern.compile(new ObfuscatedString(new long[]{702326904453470255L, -632727659450026174L, -8059552027638999332L, -2626700372258825311L}).toString()).matcher(str);
            if (matcher.find()) {
                String group = matcher.group(1);
                Objects.requireNonNull(group);
                int parseInt = Integer.parseInt(group);
                String obfuscatedString = new ObfuscatedString(new long[]{3021414176248868312L}).toString();
                for (int i = 0; i < parseInt; i++) {
                    obfuscatedString = ((Object) obfuscatedString) + str3;
                }
                str = str.replace(str2 + parseInt + new ObfuscatedString(new long[]{2858161429146945690L, 6882763137123283949L}).toString(), obfuscatedString);
            }
        }
        return str;
    }

    private void connectSocket(String str, int i) {
        Socket socket = new Socket();
        this.server = socket;
        int i2 = this.mTunnelType;
        if (i2 == 3 || i2 == 4 || i2 == 5) {
            socket.bind(new InetSocketAddress(0));
        }
        this.server.connect(new InetSocketAddress(str, i));
        doVpnProtect(this.server);
    }
}
