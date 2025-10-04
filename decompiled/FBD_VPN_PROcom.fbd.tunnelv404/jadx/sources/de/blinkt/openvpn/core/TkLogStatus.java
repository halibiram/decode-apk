package de.blinkt.openvpn.core;

import android.os.Build;
import app.tunnel.logger.utils.TrafficData;
import com.fbd.tunnel.R;
import de.blinkt.openvpn.core.TrafficHistory;
import defpackage.C1241x4beba551;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Timer;
import java.util.Vector;

/* loaded from: classes3.dex */
public class TkLogStatus {
    public static final String VPN_ADD_ROUTES = "Adding routes";
    public static final String VPN_ASSIGN_IP = "Assigning IP addresses";
    public static final String VPN_AUTHENTICATING = "Authenticating";
    public static final String VPN_AUTH_FAILED = "Authentication failed";
    public static final String VPN_AUTH_PENDING = "Waiting Autentication";
    public static final String VPN_CONNECTED = "Connected";
    public static final String VPN_CONNECTING = "Connecting";
    public static final String VPN_GET_CONFIG = "Client configuration";
    public static final String VPN_NO_NETWORK = "Waiting network";
    public static final String VPN_PAUSE = "Pausing (waiting for network)";
    public static final String VPN_RECONNECTING = "Reconnecting";
    public static final String VPN_RESOLVE = "Resolving host names";
    public static final String VPN_RESUME = "Resuming after pause";
    public static final String VPN_STARTING = "Getting Started";
    public static final String VPN_STOPPING = "Stopping";
    public static final String VPN_WAITING = "Waiting for server";

    /* renamed from: 뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁, reason: contains not printable characters */
    public static Timer f1033x8c6fc18a;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final byte[] f1021xfbe0c504 = {93, -72, 88, 103, Byte.MIN_VALUE, 115, -1, -47, 120, 113, 98, -56, 12, -56, 52, -62, 95, -2, -114, 95};

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public static final byte[] f1022x3271d0aa = {-41, 73, 58, 102, -81, -27, -120, 45, -56, -3, 53, -49, 119, -97, -20, -80, 65, 68, -72, -22};

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public static ConnectionStatus f1028x95f25580 = ConnectionStatus.LEVEL_NOTCONNECTED;

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public static String f1029x3db60231 = "";
    public static final String VPN_DISCONNECTED = "Disconnected";

    /* renamed from: 뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎, reason: contains not printable characters */
    public static String f1030x9d12c1f4 = VPN_DISCONNECTED;

    /* renamed from: 뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠, reason: contains not printable characters */
    public static int f1031x1db10c9d = R.string.state_disconnected;

    /* renamed from: 뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻, reason: contains not printable characters */
    public static int f1032xd2bcb0cf = 0;

    /* renamed from: 뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀, reason: contains not printable characters */
    public static long f1034x1aebc6d9 = 0;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final LinkedList f1023x1378447b = new LinkedList();

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public static final Vector f1026x9e171bf9 = new Vector();

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public static final Vector f1027x34271fae = new Vector();

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final Vector f1024x75d576dc = new Vector();

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public static final Vector f1025x9738a56c = new Vector();
    public static TrafficHistory trafficHistory = new TrafficHistory();

    /* loaded from: classes3.dex */
    public interface ByteCountListener {
        void updateByteCount(long j, long j2, long j3, long j4);
    }

    /* loaded from: classes3.dex */
    public interface ConnectionTimeListener {
        void updateConnectionTime(long j);
    }

    /* loaded from: classes3.dex */
    public enum LogLevel {
        INFO(2),
        ERROR(-2),
        WARNING(1),
        VERBOSE(3),
        DEBUG(4);

        protected int mValue;

        LogLevel(int i) {
            this.mValue = i;
        }

        public static LogLevel getEnumByValue(int i) {
            if (i != -2) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            if (i != 4) {
                                return null;
                            }
                            return DEBUG;
                        }
                        return VERBOSE;
                    }
                    return INFO;
                }
                return WARNING;
            }
            return ERROR;
        }

        public int getInt() {
            return this.mValue;
        }
    }

    /* loaded from: classes3.dex */
    public interface LogListener {
        void newLog(LogItem logItem);

        void onClear();
    }

    /* loaded from: classes3.dex */
    public interface StateListener {
        void updateState(String str, String str2, int i, ConnectionStatus connectionStatus, int i2);
    }

    /* JADX WARN: Type inference failed for: r1v8, types: [app.tunnel.logger.utils.TrafficData$TrafficDataListener, java.lang.Object] */
    static {
        TrafficData.addListener(new Object());
        logInfo(R.string.mobile_info, Build.MODEL, Build.BOARD, Build.BRAND, Integer.valueOf(Build.VERSION.SDK_INT), Build.VERSION.RELEASE);
    }

    public static synchronized String CopyLogs() {
        String replace;
        synchronized (TkLogStatus.class) {
            replace = f1023x1378447b.toString().replace("<b>", "").replace("</b>", "");
        }
        return replace;
    }

    public static synchronized void addByteCountListener(ByteCountListener byteCountListener) {
        synchronized (TkLogStatus.class) {
            TrafficHistory.LastDiff lastDiff = trafficHistory.getLastDiff(null);
            byteCountListener.updateByteCount(lastDiff.getIn(), lastDiff.getOut(), lastDiff.getDiffIn(), lastDiff.getDiffOut());
            f1024x75d576dc.add(byteCountListener);
        }
    }

    public static synchronized void addConnectionTimeListener(ConnectionTimeListener connectionTimeListener) {
        synchronized (TkLogStatus.class) {
            connectionTimeListener.updateConnectionTime(f1034x1aebc6d9);
            f1025x9738a56c.add(connectionTimeListener);
        }
    }

    public static synchronized void addLogListener(LogListener logListener) {
        synchronized (TkLogStatus.class) {
            Vector vector = f1026x9e171bf9;
            if (!vector.contains(logListener)) {
                vector.add(logListener);
            }
        }
    }

    public static synchronized void addStateListener(StateListener stateListener) {
        synchronized (TkLogStatus.class) {
            Vector vector = f1027x34271fae;
            if (!vector.contains(stateListener)) {
                vector.add(stateListener);
                String str = f1030x9d12c1f4;
                if (str != null) {
                    stateListener.updateState(str, f1029x3db60231, f1031x1db10c9d, f1028x95f25580, f1032xd2bcb0cf);
                }
            }
        }
    }

    public static synchronized void clearLog() {
        synchronized (TkLogStatus.class) {
            f1023x1378447b.clear();
            Iterator it = f1026x9e171bf9.iterator();
            while (it.hasNext()) {
                ((LogListener) it.next()).onClear();
            }
        }
    }

    public static String getLastState() {
        return f1030x9d12c1f4;
    }

    public static int getLocalizedState(String str) {
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1983731909:
                if (str.equals(VPN_NO_NETWORK)) {
                    c = 0;
                    break;
                }
                break;
            case -1217068453:
                if (str.equals(VPN_DISCONNECTED)) {
                    c = 1;
                    break;
                }
                break;
            case -1216069043:
                if (str.equals(VPN_WAITING)) {
                    c = 2;
                    break;
                }
                break;
            case -759023479:
                if (str.equals(VPN_ADD_ROUTES)) {
                    c = 3;
                    break;
                }
                break;
            case -571560334:
                if (str.equals(VPN_AUTHENTICATING)) {
                    c = 4;
                    break;
                }
                break;
            case -217071427:
                if (str.equals(VPN_AUTH_PENDING)) {
                    c = 5;
                    break;
                }
                break;
            case 115735883:
                if (str.equals(VPN_RECONNECTING)) {
                    c = 6;
                    break;
                }
                break;
            case 399157596:
                if (str.equals(VPN_RESUME)) {
                    c = 7;
                    break;
                }
                break;
            case 689754497:
                if (str.equals(VPN_GET_CONFIG)) {
                    c = '\b';
                    break;
                }
                break;
            case 699643136:
                if (str.equals(VPN_PAUSE)) {
                    c = '\t';
                    break;
                }
                break;
            case 929492837:
                if (str.equals(VPN_STARTING)) {
                    c = '\n';
                    break;
                }
                break;
            case 1092004470:
                if (str.equals(VPN_ASSIGN_IP)) {
                    c = 11;
                    break;
                }
                break;
            case 1155674821:
                if (str.equals(VPN_AUTH_FAILED)) {
                    c = '\f';
                    break;
                }
                break;
            case 1217813208:
                if (str.equals(VPN_CONNECTING)) {
                    c = '\r';
                    break;
                }
                break;
            case 1424757481:
                if (str.equals(VPN_CONNECTED)) {
                    c = 14;
                    break;
                }
                break;
            case 1846740935:
                if (str.equals(VPN_RESOLVE)) {
                    c = 15;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return R.string.state_nonetwork;
            case 1:
                return R.string.state_disconnected;
            case 2:
                return R.string.state_wait;
            case 3:
                return R.string.state_add_routes;
            case 4:
                return R.string.state_auth;
            case 5:
                return R.string.state_auth_pending;
            case 6:
                return R.string.state_reconnecting;
            case 7:
                return R.string.state_resume;
            case '\b':
                return R.string.state_get_config;
            case '\t':
                return R.string.state_pause;
            case '\n':
                return R.string.state_starting;
            case 11:
                return R.string.state_assign_ip;
            case '\f':
                return R.string.state_auth_failed;
            case '\r':
                return R.string.state_connecting;
            case 14:
                return R.string.state_connected;
            case 15:
                return R.string.state_resolve;
            default:
                return R.string.state_unknown;
        }
    }

    public static int getProgressState(String str) {
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1983731909:
                if (str.equals(VPN_NO_NETWORK)) {
                    c = 0;
                    break;
                }
                break;
            case -1217068453:
                if (str.equals(VPN_DISCONNECTED)) {
                    c = 1;
                    break;
                }
                break;
            case -1216069043:
                if (str.equals(VPN_WAITING)) {
                    c = 2;
                    break;
                }
                break;
            case -759023479:
                if (str.equals(VPN_ADD_ROUTES)) {
                    c = 3;
                    break;
                }
                break;
            case -571560334:
                if (str.equals(VPN_AUTHENTICATING)) {
                    c = 4;
                    break;
                }
                break;
            case -217071427:
                if (str.equals(VPN_AUTH_PENDING)) {
                    c = 5;
                    break;
                }
                break;
            case 115735883:
                if (str.equals(VPN_RECONNECTING)) {
                    c = 6;
                    break;
                }
                break;
            case 399157596:
                if (str.equals(VPN_RESUME)) {
                    c = 7;
                    break;
                }
                break;
            case 689754497:
                if (str.equals(VPN_GET_CONFIG)) {
                    c = '\b';
                    break;
                }
                break;
            case 699643136:
                if (str.equals(VPN_PAUSE)) {
                    c = '\t';
                    break;
                }
                break;
            case 929492837:
                if (str.equals(VPN_STARTING)) {
                    c = '\n';
                    break;
                }
                break;
            case 1092004470:
                if (str.equals(VPN_ASSIGN_IP)) {
                    c = 11;
                    break;
                }
                break;
            case 1155674821:
                if (str.equals(VPN_AUTH_FAILED)) {
                    c = '\f';
                    break;
                }
                break;
            case 1217813208:
                if (str.equals(VPN_CONNECTING)) {
                    c = '\r';
                    break;
                }
                break;
            case 1424757481:
                if (str.equals(VPN_CONNECTED)) {
                    c = 14;
                    break;
                }
                break;
            case 1780292756:
                if (str.equals(VPN_STOPPING)) {
                    c = 15;
                    break;
                }
                break;
            case 1846740935:
                if (str.equals(VPN_RESOLVE)) {
                    c = 16;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 30;
            case 1:
            case '\f':
            case 15:
            default:
                return 1;
            case 2:
                return 20;
            case 3:
            case 7:
                return 80;
            case 4:
                return 85;
            case 5:
            case '\b':
                return 70;
            case 6:
                return 50;
            case '\t':
                return 65;
            case '\n':
                return 10;
            case 11:
                return 75;
            case '\r':
                return 40;
            case 14:
                return 100;
            case 16:
                return 60;
        }
    }

    public static synchronized LogItem[] getlogbuffer() {
        LogItem[] logItemArr;
        synchronized (TkLogStatus.class) {
            LinkedList linkedList = f1023x1378447b;
            logItemArr = (LogItem[]) linkedList.toArray(new LogItem[linkedList.size()]);
        }
        return logItemArr;
    }

    public static boolean isTunnelActive() {
        ConnectionStatus connectionStatus = f1028x95f25580;
        if (connectionStatus != ConnectionStatus.LEVEL_AUTH_FAILED && connectionStatus != ConnectionStatus.LEVEL_NOTCONNECTED) {
            return true;
        }
        return false;
    }

    public static void logDebug(String str) {
        m1743xfbe0c504(new LogItem(LogLevel.DEBUG, str));
    }

    public static void logError(String str) {
        m1743xfbe0c504(new LogItem(LogLevel.ERROR, str));
    }

    public static void logException(String str, Exception exc) {
        logException(LogLevel.ERROR, str, exc);
    }

    public static void logInfo(String str) {
        m1743xfbe0c504(new LogItem(LogLevel.INFO, str));
    }

    public static void logWarning(int i, Object... objArr) {
        m1743xfbe0c504(new LogItem(LogLevel.WARNING, i, objArr));
    }

    public static synchronized void removeByteCountListener(ByteCountListener byteCountListener) {
        synchronized (TkLogStatus.class) {
            f1024x75d576dc.remove(byteCountListener);
        }
    }

    public static synchronized void removeConnectionTimeListener(ConnectionTimeListener connectionTimeListener) {
        synchronized (TkLogStatus.class) {
            f1025x9738a56c.remove(connectionTimeListener);
        }
    }

    public static synchronized void removeLogListener(LogListener logListener) {
        synchronized (TkLogStatus.class) {
            f1026x9e171bf9.remove(logListener);
        }
    }

    public static synchronized void removeStateListener(StateListener stateListener) {
        synchronized (TkLogStatus.class) {
            f1027x34271fae.remove(stateListener);
        }
    }

    public static void setTrafficHistory(TrafficHistory trafficHistory2) {
        trafficHistory = trafficHistory2;
    }

    public static void startNetStat() {
        TrafficData.clearLastSessionTraffic();
        TrafficData.startTimer();
    }

    public static void stopNetStat() {
        TrafficData.stopTimer();
    }

    public static synchronized void updateByteCount(long j, long j2) {
        synchronized (TkLogStatus.class) {
            TrafficHistory.LastDiff add = trafficHistory.add(j, j2);
            Iterator it = f1024x75d576dc.iterator();
            while (it.hasNext()) {
                ((ByteCountListener) it.next()).updateByteCount(j, j2, add.getDiffIn(), add.getDiffOut());
            }
        }
    }

    public static synchronized void updateConnectionTime(long j) {
        synchronized (TkLogStatus.class) {
            Iterator it = f1025x9738a56c.iterator();
            while (it.hasNext()) {
                ((ConnectionTimeListener) it.next()).updateConnectionTime(j);
            }
        }
    }

    public static void updateStateString(String str, String str2) {
        ConnectionStatus connectionStatus;
        int localizedState = getLocalizedState(str);
        String[] strArr = {VPN_STARTING, VPN_CONNECTING, VPN_WAITING, VPN_NO_NETWORK, VPN_RECONNECTING, VPN_RESOLVE, VPN_PAUSE};
        String[] strArr2 = {VPN_AUTHENTICATING, VPN_GET_CONFIG, VPN_ASSIGN_IP, VPN_ADD_ROUTES, VPN_AUTH_PENDING, VPN_RESUME};
        String[] strArr3 = {VPN_CONNECTED};
        String[] strArr4 = {VPN_DISCONNECTED, VPN_AUTH_FAILED, VPN_STOPPING};
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i2 >= 7) {
                int i3 = 0;
                while (true) {
                    if (i3 < 6) {
                        if (str.equals(strArr2[i3])) {
                            connectionStatus = ConnectionStatus.CONNECTING_SERVER;
                            break;
                        }
                        i3++;
                    } else if (!str.equals(strArr3[0])) {
                        while (true) {
                            if (i < 3) {
                                if (str.equals(strArr4[i])) {
                                    connectionStatus = ConnectionStatus.LEVEL_NOTCONNECTED;
                                    break;
                                }
                                i++;
                            } else {
                                connectionStatus = ConnectionStatus.UNKNOWN_LEVEL;
                                break;
                            }
                        }
                    } else {
                        connectionStatus = ConnectionStatus.CONNECTED;
                    }
                }
            } else {
                if (str.equals(strArr[i2])) {
                    connectionStatus = ConnectionStatus.CONNECTING;
                    break;
                }
                i2++;
            }
        }
        updateStateString(str, str2, localizedState, connectionStatus, getProgressState(str));
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static void m1743xfbe0c504(LogItem logItem) {
        synchronized (TkLogStatus.class) {
            try {
                LinkedList linkedList = f1023x1378447b;
                linkedList.addLast(logItem);
                if (linkedList.size() > 1500) {
                    while (true) {
                        LinkedList linkedList2 = f1023x1378447b;
                        if (linkedList2.size() <= 1000) {
                            break;
                        } else {
                            linkedList2.removeFirst();
                        }
                    }
                }
                Iterator it = f1026x9e171bf9.iterator();
                while (it.hasNext()) {
                    ((LogListener) it.next()).newLog(logItem);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void logDebug(int i, Object... objArr) {
        m1743xfbe0c504(new LogItem(LogLevel.DEBUG, i, objArr));
    }

    public static void logError(int i) {
        m1743xfbe0c504(new LogItem(LogLevel.ERROR, i));
    }

    public static void logException(LogLevel logLevel, String str, Exception exc) {
        LogItem logItem;
        StringWriter stringWriter = new StringWriter();
        exc.printStackTrace(new PrintWriter(stringWriter));
        if (str != null) {
            logItem = new LogItem(logLevel, str + ": " + exc.getMessage() + ", " + stringWriter.toString());
        } else {
            logItem = new LogItem(logLevel, "Erro: " + exc.getMessage() + ", " + stringWriter.toString());
        }
        m1743xfbe0c504(logItem);
    }

    public static void logInfo(int i, Object... objArr) {
        m1743xfbe0c504(new LogItem(LogLevel.INFO, i, objArr));
    }

    public static void logWarning(String str) {
        m1743xfbe0c504(new LogItem(LogLevel.WARNING, str));
    }

    public static void logError(int i, Object... objArr) {
        m1743xfbe0c504(new LogItem(LogLevel.ERROR, i, objArr));
    }

    public static void logException(Exception exc) {
        logException(LogLevel.ERROR, null, exc);
    }

    public static synchronized void updateStateString(String str, String str2, int i, ConnectionStatus connectionStatus, int i2) {
        synchronized (TkLogStatus.class) {
            if (f1028x95f25580 == ConnectionStatus.CONNECTED && str.equals(VPN_AUTHENTICATING)) {
                m1743xfbe0c504(new LogItem(LogLevel.DEBUG, "Ignoring 7Tunnel Status in CONNECTED state (" + str + "->" + connectionStatus.toString() + "): " + str2));
                return;
            }
            f1030x9d12c1f4 = str;
            f1029x3db60231 = str2;
            f1031x1db10c9d = i;
            f1028x95f25580 = connectionStatus;
            f1032xd2bcb0cf = i2;
            Iterator it = f1027x34271fae.iterator();
            while (it.hasNext()) {
                ((StateListener) it.next()).updateState(str, str2, i, connectionStatus, i2);
            }
            if (connectionStatus == ConnectionStatus.CONNECTED) {
                Timer timer = f1033x8c6fc18a;
                if (timer != null) {
                    timer.cancel();
                }
                f1033x8c6fc18a = new Timer();
                f1033x8c6fc18a.schedule(new C1241x4beba551(), 0L, 1000L);
            }
            if (connectionStatus == ConnectionStatus.LEVEL_NOTCONNECTED) {
                Timer timer2 = f1033x8c6fc18a;
                if (timer2 != null) {
                    timer2.cancel();
                }
                f1034x1aebc6d9 = 0L;
            }
        }
    }
}
