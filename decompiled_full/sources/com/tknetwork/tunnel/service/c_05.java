package com.tknetwork.tunnel.service;

import android.annotation.SuppressLint;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.VpnService;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.SystemClock;
import android.preference.PreferenceManager;
import android.security.KeyChain;
import android.util.Base64;
import androidx.annotation.RequiresApi;
import app.tunnel.vpncommons.utils.FileUtils;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.connectivity.ConnectionState;
import com.tknetwork.tunnel.connectivity.ConnectivityReceiverBase;
import com.tknetwork.tunnel.thread.UDPTunnelThread;
import com.tknetwork.tunnel.utils.VPNUtil;
import config.ConfigUtil;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1005xc1f7307f;
import defpackage.RunnableC0842x5762f236;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.net.Socket;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.PrivateKey;
import java.security.cert.X509Certificate;
import java.text.SimpleDateFormat;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Timer;
import java.util.TimerTask;
import javax.crypto.Cipher;
import net.openvpn.openvpn.CPUUsage;
import net.openvpn.openvpn.ClientAPI_Config;
import net.openvpn.openvpn.ClientAPI_ConnectionInfo;
import net.openvpn.openvpn.ClientAPI_DynamicChallenge;
import net.openvpn.openvpn.ClientAPI_EvalConfig;
import net.openvpn.openvpn.ClientAPI_Event;
import net.openvpn.openvpn.ClientAPI_ExternalPKICertRequest;
import net.openvpn.openvpn.ClientAPI_ExternalPKISignRequest;
import net.openvpn.openvpn.ClientAPI_InterfaceStats;
import net.openvpn.openvpn.ClientAPI_LLVector;
import net.openvpn.openvpn.ClientAPI_LogInfo;
import net.openvpn.openvpn.ClientAPI_MergeConfig;
import net.openvpn.openvpn.ClientAPI_OpenVPNClient;
import net.openvpn.openvpn.ClientAPI_ProvideCreds;
import net.openvpn.openvpn.ClientAPI_ServerEntry;
import net.openvpn.openvpn.ClientAPI_ServerEntryVector;
import net.openvpn.openvpn.ClientAPI_Status;
import net.openvpn.openvpn.ClientAPI_TransportStats;
import net.openvpn.openvpn.JellyBeanHack;
import net.openvpn.openvpn.OpenVPNClientThread;
import net.openvpn.openvpn.OpenVPNDebug;
import net.openvpn.openvpn.PasswordUtil;
import net.openvpn.openvpn.PrefUtil;
import net.openvpn.openvpn.ProxyList;

/* loaded from: classes3.dex */
public class c_05 extends VpnService implements VPNUtil.VPNProtectListener, Handler.Callback, OpenVPNClientThread.EventReceiver {
    public static final int EV_PRIO_HIGH = 3;
    public static final int EV_PRIO_INVISIBLE = 0;
    public static final int EV_PRIO_LOW = 1;
    public static final int EV_PRIO_MED = 2;
    private static final int GCI_REQ_ESTABLISH = 0;
    private static final int GCI_REQ_NOTIFICATION = 1;
    private static final int MSG_EVENT = 1;
    private static final int MSG_LOG = 2;
    private static final int NOTIFICATION_ID = 1642;
    private static UDPTunnelThread dnsTunnelThread = null;
    private static final boolean isStopping = true;
    private static String lastStateMsg = null;
    public static final int log_deque_max = 250;
    private static ConfigUtil mConfigUtil;
    private static Handler mHandler;
    private static OpenVPNClientThread mThread;
    private static ConfigUtil util;
    private Bundle bundle;
    private ConnectivityManager connMgr;
    private CPUUsage cpu_usage;
    private Profile current_profile;
    private boolean enable_notifications;
    private HashMap event_info;
    private JellyBeanHack jellyBeanHack;
    private EventMsg last_event;
    private EventMsg last_event_prof_manage;
    private ConnectivityReceiver mConnectivityReceiver;
    private NotificationManager mNotificationManager;
    Notification.Builder mNotifyBuilder;
    private PrefUtil prefs;
    private ProfileList profile_list;
    public ProxyList proxy_list;
    private PasswordUtil pwds;
    private Timer timer;
    public static final String ACTION_BASE = new ObfuscatedString(new long[]{-4395851216773657553L, 6413597146433203739L, 1809041354436447848L, -5345883079666841166L}).toString();
    public static final String ACTION_BIND = new ObfuscatedString(new long[]{-1689136526734702516L, 7782563380806097083L, -18904503211045261L, 5807709295270519811L}).toString();
    public static final String ACTION_CONNECT = new ObfuscatedString(new long[]{-815504859742384120L, 4677270323720947137L, 3610375895955858205L, -3109798732910074113L, -173585861915499434L}).toString();
    public static final String ACTION_DELETE_PROFILE = new ObfuscatedString(new long[]{-3849394819299811584L, 2148648262125494792L, -5035747207852579207L, 1056309291165954856L, 689925550816134829L, -2257662767371659650L}).toString();
    public static final String ACTION_DISCONNECT = new ObfuscatedString(new long[]{-951656623261398054L, -7674597114772735613L, -3233255508457298540L, 8737496734643626215L, 1005965230190722000L}).toString();
    public static final String ACTION_IMPORT_PROFILE = new ObfuscatedString(new long[]{-8164074501723680641L, -849864988150903400L, -6886481338965637218L, -8530969130342051429L, -505245593790165074L, -3446738541760981L}).toString();
    public static final String ACTION_IMPORT_PROFILE_VIA_PATH = new ObfuscatedString(new long[]{3566900797115943908L, -6174453221131718735L, -2957443377667553205L, -8859532794212300865L, -1408032796934745026L, 7033528908537206768L, -5380805384048097901L, 7207182225724396297L}).toString();
    public static final String ACTION_RENAME_PROFILE = new ObfuscatedString(new long[]{2377855507482023825L, 9044315682105325482L, -8273174935938078393L, 2311302003878342460L, -2161094475197224452L, 301224683821488080L}).toString();
    public static final String ACTION_SUBMIT_PROXY_CREDS = new ObfuscatedString(new long[]{-5293977106800049045L, -4151207523444240526L, -1257727277086008292L, 6999794565674651583L, -6105041658887820598L, 2286763550064171709L, -3241671920332759501L}).toString();
    public static final String INTENT_PREFIX = new ObfuscatedString(new long[]{-5955967752138513920L, -1128716407266254178L, 5258986119456203454L, -2083635214326319149L}).toString();
    private static final String TAG = new ObfuscatedString(new long[]{5974040724776228460L, 8314539759872988902L}).toString();
    private static final ArrayDeque<EventReceiver> clients = new ArrayDeque<>();
    private static final ArrayDeque<LogMsg> log_deque = new ArrayDeque<>();
    public static boolean i = true;
    private final SimpleDateFormat dateFormat = new SimpleDateFormat(new ObfuscatedString(new long[]{3855048042282917772L, -6824112049216989308L, 7163101925322172451L}).toString());
    private final IBinder mBinder = new LocalBinder();
    private final Handler m_Handler = new Handler();
    public boolean paused = false;
    public boolean screen_on = true;
    private boolean active = false;
    private boolean shutdown_pending = false;
    private long thread_started = 0;
    private long mConnectedTime = 0;

    /* renamed from: com.tknetwork.tunnel.service.c_05$1 */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends TimerTask {
        final /* synthetic */ EventMsg val$evm;

        public AnonymousClass1(EventMsg eventMsg) {
            r2 = eventMsg;
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            if (!c_05.this.resString(r2.res_id).equalsIgnoreCase(new ObfuscatedString(new long[]{1946071334835237135L, 3188102248107312536L, -225109855457218069L}).toString())) {
                return;
            }
            c_05.mHandler.sendEmptyMessage(99);
        }
    }

    /* loaded from: classes3.dex */
    public static class Challenge {
        private String challenge;
        private boolean echo;
        private boolean response_required;

        public String get_challenge() {
            return this.challenge;
        }

        public boolean get_echo() {
            return this.echo;
        }

        public boolean get_response_required() {
            return this.response_required;
        }

        public String toString() {
            return String.format(new ObfuscatedString(new long[]{3362262568408903577L, 5365702785592571486L}).toString(), this.challenge, Boolean.valueOf(this.echo), Boolean.valueOf(this.response_required));
        }
    }

    /* loaded from: classes3.dex */
    public static class ConnectionStats {
        public long bytes_in;
        public long bytes_out;
        public int duration;
        public int last_packet_received;
    }

    /* loaded from: classes3.dex */
    public class ConnectivityReceiver extends ConnectivityReceiverBase {
        private final String TAG;
        private ConnectionState currentState;

        public ConnectivityReceiver(Context context) {
            super(context);
            this.TAG = new ObfuscatedString(new long[]{-4420308436326861874L, -1484178774005632297L, -4008792674085164421L, 2191401889674497662L}).toString();
            this.currentState = getConnectionState();
        }

        private void checkNewState() {
            ConnectionState connectionState = getConnectionState();
            if (this.currentState.hasChanged(connectionState)) {
                onStateChange(connectionState);
            }
            this.currentState = connectionState;
        }

        private ConnectionState getConnectionState() {
            return ConnectionState.getInstance(getManager());
        }

        private boolean getPVBS() {
            return c_05.this.prefs.get_boolean(new ObfuscatedString(new long[]{4809077363372652935L, 436069138298121784L, -151473450726833414L, -3677854858750158738L, -5249640019315949180L}).toString(), false);
        }

        private void onStateChange(ConnectionState connectionState) {
            boolean pvbs = getPVBS();
            if (this.currentState.isConnected() && connectionState.isDisconnected()) {
                c_05 c_05Var = c_05.this;
                if (!c_05Var.paused && c_05Var.active) {
                    c_05.this.network_pause();
                    return;
                }
                return;
            }
            if (this.currentState.isDisconnected() && connectionState.isConnected()) {
                c_05 c_05Var2 = c_05.this;
                if (c_05Var2.paused && c_05Var2.active) {
                    if (!pvbs || c_05.this.screen_on) {
                        c_05.this.network_resume();
                        return;
                    }
                    return;
                }
                return;
            }
            if (c_05.this.active) {
                c_05 c_05Var3 = c_05.this;
                if (!c_05Var3.paused) {
                    c_05Var3.network_reconnect(1);
                }
            }
        }

        @Override // com.tknetwork.tunnel.connectivity.ConnectivityReceiverBase
        public void onAvailable(Object obj) {
            checkNewState();
        }

        @Override // com.tknetwork.tunnel.connectivity.ConnectivityReceiverBase
        public void onLost(Object obj) {
            checkNewState();
        }
    }

    /* loaded from: classes3.dex */
    public static class DynamicChallenge {
        public Challenge challenge;
        public String cookie;
        public long expires;

        public /* synthetic */ DynamicChallenge(int i) {
            this();
        }

        public long expire_delay() {
            return this.expires - SystemClock.elapsedRealtime();
        }

        public boolean is_expired() {
            if (SystemClock.elapsedRealtime() > this.expires) {
                return true;
            }
            return false;
        }

        public String toString() {
            return String.format(new ObfuscatedString(new long[]{2785868895836621279L, -6983823551476298851L}).toString(), this.challenge.toString(), this.cookie, Long.valueOf(this.expires));
        }

        private DynamicChallenge() {
            this.challenge = new Challenge();
        }
    }

    /* loaded from: classes3.dex */
    public static class EventInfo {
        public int flags;
        public int icon_res_id;
        public int priority;
        public int progress;
        public int res_id;

        public EventInfo(int i, int i2, int i3, int i4, int i5) {
            this.res_id = i;
            this.icon_res_id = i2;
            this.progress = i3;
            this.priority = i4;
            this.flags = i5;
        }
    }

    /* loaded from: classes3.dex */
    public static class EventMsg {
        public static final int F_ERROR = 1;
        public static final int F_EXCLUDE_SELF = 16;
        public static final int F_FROM_JAVA = 2;
        public static final int F_PROF_IMPORT = 32;
        public static final int F_PROF_MANAGE = 4;
        public static final int F_UI_RESET = 8;
        public Runnable c;
        public ClientAPI_ConnectionInfo conn_info;
        public String info;
        public Handler k;
        public String name;
        public String profile_override;
        public EventReceiver sender;
        public long expires = 0;
        public int flags = 0;
        public int icon_res_id = -1;
        public int priority = 1;
        public int progress = 0;
        public int res_id = -1;
        public Transition transition = Transition.NO_CHANGE;

        /* loaded from: classes3.dex */
        public enum Transition {
            NO_CHANGE,
            TO_CONNECTED,
            TO_DISCONNECTED
        }

        public static EventMsg disconnected() {
            EventMsg eventMsg = new EventMsg();
            eventMsg.flags = 2;
            eventMsg.res_id = R.string.disconnected;
            eventMsg.icon_res_id = R.drawable.disconnected;
            eventMsg.name = new ObfuscatedString(new long[]{4771440774760420967L, 6667472490638223681L, 2399865475067315796L}).toString();
            eventMsg.info = new ObfuscatedString(new long[]{6600899057014641002L}).toString();
            return eventMsg;
        }

        public boolean is_expired() {
            if (this.expires != 0 && SystemClock.elapsedRealtime() > this.expires) {
                return true;
            }
            return false;
        }

        public boolean is_reflected(EventReceiver eventReceiver) {
            EventReceiver eventReceiver2 = this.sender;
            if (eventReceiver2 == null) {
                return false;
            }
            if ((this.flags & 16) == 0 && eventReceiver2 == eventReceiver) {
                return false;
            }
            return true;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(String.format(new ObfuscatedString(new long[]{759741869017830118L, -2239933893739124370L, -8260545194516629661L}).toString(), this.name));
            if (this.info.length() > 0) {
                stringBuffer.append(String.format(new ObfuscatedString(new long[]{-6315737007109369526L, -2127101038633874757L, -6285161504446424806L}).toString(), this.info));
            }
            Transition transition = this.transition;
            if (transition != Transition.NO_CHANGE) {
                stringBuffer.append(String.format(new ObfuscatedString(new long[]{-6017576877889043007L, 1955833043557782278L, 8179026824586671059L}).toString(), transition));
            }
            return stringBuffer.toString();
        }
    }

    /* loaded from: classes3.dex */
    public interface EventReceiver {
        void event(EventMsg eventMsg);

        PendingIntent get_configure_intent(int i);

        void log(LogMsg logMsg);
    }

    /* loaded from: classes3.dex */
    public static class InternalError extends RuntimeException {
    }

    /* loaded from: classes3.dex */
    public class LocalBinder extends Binder {
        public LocalBinder() {
        }

        public c_05 getService() {
            return c_05.this;
        }
    }

    /* loaded from: classes3.dex */
    public static class LogMsg {
        public String line;
    }

    /* loaded from: classes3.dex */
    public class MergedProfile extends Profile {
        public String profile_content;

        public /* synthetic */ MergedProfile(c_05 c_05Var, String str, String str2, ClientAPI_EvalConfig clientAPI_EvalConfig) {
            this(str, str2, false, clientAPI_EvalConfig);
        }

        private MergedProfile(String str, String str2, boolean z, ClientAPI_EvalConfig clientAPI_EvalConfig) {
            super(str, str2, z, clientAPI_EvalConfig);
        }
    }

    /* loaded from: classes3.dex */
    public class Profile {
        private boolean allow_password_save;
        private boolean autologin;
        private DynamicChallenge dynamic_challenge;
        private String errorText;
        private boolean external_pki;
        private String external_pki_alias;
        public String location;
        private String name;
        public String orig_filename;
        private boolean private_key_password_required;
        private ProxyContext proxy_context;
        private ServerList server_list;
        private Challenge static_challenge;
        private String userlocked_username;

        public Profile(String str, String str2, boolean z, ClientAPI_EvalConfig clientAPI_EvalConfig) {
            boolean z2;
            this.location = str;
            this.orig_filename = str2;
            if (z) {
                this.name = str2;
                if (ProfileFN.has_ovpn_ext(str2)) {
                    this.name = ProfileFN.strip_ovpn_ext(this.name);
                }
                try {
                    this.name = URLDecoder.decode(this.name, new ObfuscatedString(new long[]{1111007315280059320L, -1551163624082237848L}).toString());
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                    return;
                }
            } else {
                this.name = str2;
            }
            if (clientAPI_EvalConfig.getError()) {
                this.errorText = clientAPI_EvalConfig.getMessage();
                return;
            }
            this.userlocked_username = clientAPI_EvalConfig.getUserlockedUsername();
            this.autologin = clientAPI_EvalConfig.getAutologin();
            this.external_pki = clientAPI_EvalConfig.getExternalPki();
            this.private_key_password_required = clientAPI_EvalConfig.getPrivateKeyPasswordRequired();
            this.allow_password_save = clientAPI_EvalConfig.getAllowPasswordSave();
            String staticChallenge = clientAPI_EvalConfig.getStaticChallenge();
            if (staticChallenge.length() > 0) {
                Challenge challenge = new Challenge();
                challenge.challenge = staticChallenge;
                challenge.echo = clientAPI_EvalConfig.getStaticChallengeEcho();
                challenge.response_required = true;
                this.static_challenge = challenge;
            }
            if (!z) {
                String profileName = clientAPI_EvalConfig.getProfileName();
                String friendlyName = clientAPI_EvalConfig.getFriendlyName();
                String str3 = this.location;
                if (str3 != null) {
                    str3.equals(new ObfuscatedString(new long[]{-607032155815872188L, -6089486649256891631L}).toString());
                }
                if (friendlyName.length() > 0) {
                    profileName = friendlyName;
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (str2 != null && str2.equalsIgnoreCase(new ObfuscatedString(new long[]{6275324617359142080L, -8380390194930991476L, 8251293159621291685L}).toString())) {
                    str2 = null;
                }
                str2 = ProfileFN.has_ovpn_ext(str2) ? ProfileFN.strip_ovpn_ext(str2) : str2;
                String str4 = (str2 == null || profileName == null || !str2.equals(profileName)) ? str2 : null;
                StringBuffer stringBuffer = new StringBuffer();
                if (this.autologin && !z2 && str4 == null) {
                    stringBuffer.append(c_05.this.getText(R.string.autologin_suffix).toString());
                }
                if (str4 != null) {
                    stringBuffer.append(str4);
                }
                this.name = stringBuffer.toString();
            }
            this.server_list = new ServerList();
            ClientAPI_ServerEntryVector serverList = clientAPI_EvalConfig.getServerList();
            int size = (int) serverList.size();
            for (int i = 0; i < size; i++) {
                ClientAPI_ServerEntry clientAPI_ServerEntry = serverList.get(i);
                ServerEntry serverEntry = new ServerEntry();
                serverEntry.server = clientAPI_ServerEntry.getServer();
                serverEntry.friendly_name = clientAPI_ServerEntry.getFriendlyName();
                this.server_list.list.add(serverEntry);
            }
            this.external_pki_alias = c_05.this.prefs.get_string_by_profile(this.name, new ObfuscatedString(new long[]{3275989210544829691L, 4929086873920124341L, -149471782436027184L}).toString());
        }

        private void expire_dynamic_challenge() {
            DynamicChallenge dynamicChallenge = this.dynamic_challenge;
            if (dynamicChallenge != null && dynamicChallenge.is_expired()) {
                this.dynamic_challenge = null;
            }
        }

        public boolean get_epki() {
            return this.external_pki;
        }

        public String get_epki_alias() {
            return this.external_pki_alias;
        }

        public void invalidate_epki_alias(String str) {
            String str2 = this.external_pki_alias;
            if (str2 != null && str2.equals(str)) {
                this.external_pki_alias = null;
                c_05.this.prefs.delete_key_by_profile(this.name, new ObfuscatedString(new long[]{6247553686939179928L, 164459270889493091L, 4027536671780518077L}).toString());
                c_05.this.jellyBeanHackPurge();
            }
        }

        public void persist_epki_alias(String str) {
            this.external_pki_alias = str;
            c_05.this.prefs.set_string_by_profile(this.name, new ObfuscatedString(new long[]{-2082685978994992729L, 3680248702796635836L, 1616681617530562407L}).toString(), str);
            c_05.this.jellyBeanHackPurge();
        }

        public boolean challenge_defined() {
            expire_dynamic_challenge();
            if (this.static_challenge == null && this.dynamic_challenge == null) {
                return false;
            }
            return true;
        }

        public void forget_cert() {
            if (this.external_pki_alias != null) {
                this.external_pki_alias = null;
                c_05.this.prefs.delete_key_by_profile(this.name, new ObfuscatedString(new long[]{-912020281836067532L, -3415866716149414359L, -4611256158249005027L}).toString());
                c_05.this.jellyBeanHackPurge();
            }
        }

        public boolean get_allow_password_save() {
            return this.allow_password_save;
        }

        public boolean get_autologin() {
            return this.autologin;
        }

        public Challenge get_challenge() {
            expire_dynamic_challenge();
            DynamicChallenge dynamicChallenge = this.dynamic_challenge;
            if (dynamicChallenge != null) {
                return dynamicChallenge.challenge;
            }
            return this.static_challenge;
        }

        public long get_dynamic_challenge_expire_delay() {
            if (is_dynamic_challenge()) {
                return this.dynamic_challenge.expire_delay();
            }
            return 0L;
        }

        public String get_error() {
            return this.errorText;
        }

        public String get_filename() {
            String str = this.location;
            if (str != null && str.equals(new ObfuscatedString(new long[]{5759496846232289563L, -3589389035958218780L}).toString())) {
                return this.orig_filename;
            }
            String encode_profile_fn = ProfileFN.encode_profile_fn(this.name);
            if (encode_profile_fn == null) {
                return this.orig_filename;
            }
            return encode_profile_fn;
        }

        public String get_location() {
            return this.location;
        }

        public String get_name() {
            return this.name;
        }

        public boolean get_private_key_password_required() {
            return this.private_key_password_required;
        }

        public ProxyContext get_proxy_context(boolean z) {
            ProxyContext proxyContext = this.proxy_context;
            if (proxyContext != null && !proxyContext.is_expired()) {
                return this.proxy_context;
            }
            if (z) {
                this.proxy_context = new ProxyContext(0);
            } else {
                this.proxy_context = null;
            }
            return this.proxy_context;
        }

        public ServerList get_server_list() {
            return this.server_list;
        }

        public String get_type_string() {
            if (get_autologin()) {
                return c_05.this.getText(R.string.profile_type_autologin).toString();
            }
            if (get_epki()) {
                return c_05.this.getText(R.string.profile_type_epki).toString();
            }
            return c_05.this.getText(R.string.profile_type_standard).toString();
        }

        public String get_userlocked_username() {
            return this.userlocked_username;
        }

        public boolean have_external_pki_alias() {
            if (this.external_pki && this.external_pki_alias != null) {
                return true;
            }
            return false;
        }

        public boolean is_deleteable() {
            String str = this.location;
            if (str != null && !str.equals(new ObfuscatedString(new long[]{3318895538928719242L, -8183322157102310973L}).toString())) {
                return true;
            }
            return false;
        }

        public boolean is_dynamic_challenge() {
            expire_dynamic_challenge();
            if (this.dynamic_challenge != null) {
                return true;
            }
            return false;
        }

        public boolean is_renameable() {
            return is_deleteable();
        }

        public boolean need_external_pki_alias() {
            if (this.external_pki && this.external_pki_alias == null) {
                return true;
            }
            return false;
        }

        public void reset_dynamic_challenge() {
            this.dynamic_challenge = null;
        }

        public void reset_proxy_context() {
            this.proxy_context = null;
        }

        public boolean server_list_defined() {
            if (this.server_list.list.size() > 0) {
                return true;
            }
            return false;
        }

        public String toString() {
            String obfuscatedString;
            String obfuscatedString2;
            String obfuscatedString3 = new ObfuscatedString(new long[]{6102901689524830054L, -478073167925009617L, -4660922470104509250L, 3134292853954436373L, 2886304314495174650L, -5874737080426975347L, 4039419768221913966L, 7059507833107307164L, 5393890429231287911L, 8129907148629845724L, 7886228305542195765L}).toString();
            String str = this.name;
            String str2 = this.orig_filename;
            String str3 = this.userlocked_username;
            Boolean valueOf = Boolean.valueOf(this.autologin);
            Boolean valueOf2 = Boolean.valueOf(this.external_pki);
            String str4 = this.external_pki_alias;
            String serverList = this.server_list.toString();
            Challenge challenge = this.static_challenge;
            if (challenge != null) {
                obfuscatedString = challenge.toString();
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{4378045009251074966L, 47082640850426279L}).toString();
            }
            DynamicChallenge dynamicChallenge = this.dynamic_challenge;
            if (dynamicChallenge != null) {
                obfuscatedString2 = dynamicChallenge.toString();
            } else {
                obfuscatedString2 = new ObfuscatedString(new long[]{-7268221392944158761L, 7691114700674616195L}).toString();
            }
            return String.format(obfuscatedString3, str, str2, str3, valueOf, valueOf2, str4, serverList, obfuscatedString, obfuscatedString2);
        }

        public boolean userlocked_username_defined() {
            if (this.userlocked_username.length() > 0) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes3.dex */
    public static class ProfileFN {
        private ProfileFN() {
        }

        public static String encode_profile_fn(String str) {
            try {
                return URLEncoder.encode(str, new ObfuscatedString(new long[]{-5897764067916154383L, 5465349236568724351L}).toString()) + new ObfuscatedString(new long[]{2106256226209522083L, 7260678418979120029L}).toString();
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
                return null;
            }
        }

        public static boolean has_ovpn_ext(String str) {
            if (str == null) {
                return false;
            }
            if (!str.endsWith(new ObfuscatedString(new long[]{-4415108093880164157L, 2167688600749771614L}).toString()) && !str.endsWith(new ObfuscatedString(new long[]{6383860102540692073L, -6426608133890104158L}).toString())) {
                return false;
            }
            return true;
        }

        public static String strip_ovpn_ext(String str) {
            if (!has_ovpn_ext(str)) {
                return str;
            }
            return str.substring(0, str.length() - 5);
        }
    }

    /* loaded from: classes3.dex */
    public class ProfileList extends ArrayList<Profile> {

        /* loaded from: classes3.dex */
        public class CustomComparator implements Comparator<Profile> {
            public /* synthetic */ CustomComparator(ProfileList profileList, int i) {
                this();
            }

            private CustomComparator() {
            }

            @Override // java.util.Comparator
            public int compare(Profile profile, Profile profile2) {
                return profile.name.compareTo(profile2.name);
            }
        }

        public ProfileList() {
        }

        public void invalidate_epki_alias(String str) {
            Iterator<Profile> it = iterator();
            while (it.hasNext()) {
                it.next().invalidate_epki_alias(str);
            }
        }

        public void load_profiles(String str) {
            String obfuscatedString;
            String[] fileList;
            boolean z;
            String str2;
            int i;
            char c = 0;
            if (str.equals(new ObfuscatedString(new long[]{-500726054183448603L, -1130052638421325908L}).toString())) {
                obfuscatedString = new ObfuscatedString(new long[]{6852313627345812546L, 6835796127917321220L}).toString();
                fileList = c_05.this.getResources().getAssets().list(new ObfuscatedString(new long[]{6520506500082175044L}).toString());
                z = false;
            } else if (str.equals(new ObfuscatedString(new long[]{7459390326700342377L, -5212468484107707301L}).toString())) {
                obfuscatedString = new ObfuscatedString(new long[]{964774742585664969L, -2598778816758012941L, -5167545295947465456L, 4517661954342125527L}).toString();
                fileList = c_05.this.fileList();
                z = true;
            } else {
                throw new InternalError();
            }
            int length = fileList.length;
            int i2 = 0;
            while (i2 < length) {
                String str3 = fileList[i2];
                if (ProfileFN.has_ovpn_ext(str3)) {
                    try {
                        str2 = c_05.this.read_file(str, str3);
                    } catch (IOException unused) {
                        new ObfuscatedString(new long[]{-8107253267462290052L, 5439743403912663445L}).toString();
                        Object[] objArr = new Object[2];
                        objArr[c] = str3;
                        objArr[1] = obfuscatedString;
                        String.format(new ObfuscatedString(new long[]{2810575996180071744L, -6158535858253287281L, 8650578937974283750L, 4598927724126760909L, -7988726781559088591L, 1736011595033075652L}).toString(), objArr);
                        str2 = null;
                    }
                    try {
                        ClientAPI_Config clientAPI_Config = new ClientAPI_Config();
                        clientAPI_Config.setContent(str2);
                        ClientAPI_EvalConfig eval_config_static = ClientAPI_OpenVPNClient.eval_config_static(clientAPI_Config);
                        if (eval_config_static.getError()) {
                            new ObfuscatedString(new long[]{-444775362917092860L, -6003097886144361149L}).toString();
                            String message = eval_config_static.getMessage();
                            Object[] objArr2 = new Object[2];
                            objArr2[c] = str3;
                            objArr2[1] = message;
                            String.format(new ObfuscatedString(new long[]{-5889262058272404483L, -3113961674255446456L, -8862917286698466016L, 2271772589066059547L, -7253557127389628886L}).toString(), objArr2);
                        } else {
                            i = i2;
                            add(new Profile(str, str3, z, eval_config_static));
                            i2 = i + 1;
                            c = 0;
                        }
                    } catch (Exception unused2) {
                        new ObfuscatedString(new long[]{-3986058172269690459L, 4373040519155034807L}).toString();
                        new ObfuscatedString(new long[]{-8237730322466229459L, -2443525731005852752L, 1177406540796168064L, -662296488734849300L, -6173598657080622251L, -212104933560125324L}).toString();
                        return;
                    }
                }
                i = i2;
                i2 = i + 1;
                c = 0;
            }
        }

        public void sort() {
            Collections.sort(this, new CustomComparator(this, 0));
        }

        public Profile get_profile_by_name(String str) {
            if (str != null) {
                Iterator<Profile> it = iterator();
                while (it.hasNext()) {
                    Profile next = it.next();
                    if (str.equals(next.name)) {
                        return next;
                    }
                }
                return null;
            }
            return null;
        }

        public String[] profile_names() {
            String[] strArr = new String[size()];
            for (int i = 0; i < size(); i++) {
                strArr[i] = get(i).name;
            }
            return strArr;
        }
    }

    /* loaded from: classes3.dex */
    public static class ProxyContext {
        private boolean allow_creds_dialog;
        private Intent connect_intent;
        private long expires;
        private boolean explicit_creds;
        private int n_retries;
        private String profile_name;
        private ProxyList.Item proxy;
        private String proxy_password;
        private String proxy_username;

        public /* synthetic */ ProxyContext(int i) {
            this();
        }

        private void reset() {
            this.profile_name = null;
            this.proxy = null;
            this.connect_intent = null;
            this.expires = 0L;
            this.explicit_creds = false;
            this.proxy_username = null;
            this.proxy_password = null;
            this.allow_creds_dialog = false;
            this.n_retries = 0;
        }

        public void client_api_config(ClientAPI_Config clientAPI_Config) {
            ProxyList.Item item = this.proxy;
            if (item != null) {
                clientAPI_Config.setProxyHost(item.host);
                clientAPI_Config.setProxyPort(this.proxy.port);
                String str = this.proxy_username;
                if (str != null && this.proxy_password != null) {
                    clientAPI_Config.setProxyUsername(str);
                    clientAPI_Config.setProxyPassword(this.proxy_password);
                }
                clientAPI_Config.setProxyAllowCleartextAuth(this.proxy.allow_cleartext_auth);
            }
        }

        public void configure_creds_dialog_intent(Intent intent) {
            if (this.proxy != null && this.profile_name != null) {
                intent.putExtra(new ObfuscatedString(new long[]{-2535636599347152376L, 5162134991932322793L, -7311593350949198024L, 3667589698026764862L, 4908544820020794581L}).toString(), this.profile_name);
                intent.putExtra(new ObfuscatedString(new long[]{7331343613663157406L, 4423009956237913007L, 66083698873445811L, -1011089939698988955L, -8627487661129731421L}).toString(), this.proxy.name());
                intent.putExtra(new ObfuscatedString(new long[]{4433254124178858324L, 4643547039708502798L, -8992424382867446364L, 7733075391366858131L, -5949415547853123084L}).toString(), this.n_retries);
                intent.putExtra(new ObfuscatedString(new long[]{9019066696528618627L, 8107545159612095738L, 4207330917097131901L, 7010266515322054604L, -2536296922655777335L}).toString(), this.expires);
            }
        }

        public void invalidate_proxy_creds(ProxyList proxyList) {
            ProxyList.Item item = this.proxy;
            if (item != null && item.invalidate_creds()) {
                proxyList.put(this.proxy);
                proxyList.save();
            }
            this.proxy_username = null;
            this.proxy_password = null;
        }

        public boolean is_expired() {
            if (this.expires != 0 && SystemClock.elapsedRealtime() > this.expires) {
                return true;
            }
            return false;
        }

        public String name() {
            ProxyList.Item item = this.proxy;
            if (item != null) {
                return item.name();
            }
            return null;
        }

        public void new_connection(Intent intent, String str, String str2, String str3, String str4, boolean z, ProxyList proxyList, boolean z2) {
            if (!z2) {
                ProxyList.Item item = proxyList.get(str2);
                if (item != null) {
                    this.proxy = item;
                    this.profile_name = str;
                    this.connect_intent = intent;
                    this.allow_creds_dialog = z;
                    this.n_retries = 0;
                    this.expires = SystemClock.elapsedRealtime() + 120000;
                    if (!this.explicit_creds) {
                        if (str3 != null && str4 != null) {
                            this.proxy_username = str3;
                            this.proxy_password = str4;
                            return;
                        } else {
                            this.proxy_username = item.username;
                            this.proxy_password = item.password;
                            return;
                        }
                    }
                    return;
                }
                reset();
            }
        }

        public boolean should_launch_creds_dialog() {
            if (this.proxy != null && this.allow_creds_dialog) {
                return true;
            }
            return false;
        }

        public Intent submit_proxy_creds(String str, String str2, String str3, boolean z, ProxyList proxyList) {
            ProxyList.Item item = this.proxy;
            if (item != null && item.name().equals(str) && str2 != null && str3 != null) {
                this.proxy_username = str2;
                this.proxy_password = str3;
                this.explicit_creds = true;
                if (z) {
                    ProxyList.Item item2 = this.proxy;
                    item2.username = str2;
                    item2.password = str3;
                    item2.remember_creds = z;
                    proxyList.put(item2);
                    proxyList.save();
                }
                this.n_retries++;
                return this.connect_intent;
            }
            return null;
        }

        private ProxyContext() {
        }
    }

    /* loaded from: classes3.dex */
    public static class ServerEntry {
        private String friendly_name;
        private String server;

        public String display_name() {
            if (this.friendly_name.length() > 0) {
                return this.friendly_name;
            }
            return this.server;
        }

        public String toString() {
            return String.format(new ObfuscatedString(new long[]{7208311929275602308L, -1618736280311153767L}).toString(), this.server, this.friendly_name);
        }
    }

    /* loaded from: classes3.dex */
    public static class ServerList {
        private final ArrayList<ServerEntry> list = new ArrayList<>();

        public String[] display_names() {
            int size = this.list.size();
            String[] strArr = new String[size];
            for (int i = 0; i < size; i++) {
                strArr[i] = this.list.get(i).display_name();
            }
            return strArr;
        }

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            Iterator<ServerEntry> it = this.list.iterator();
            while (it.hasNext()) {
                stringBuffer.append(it.next().toString() + new ObfuscatedString(new long[]{2618938374718378180L, 4621003088426691949L}).toString());
            }
            return stringBuffer.toString();
        }
    }

    /* loaded from: classes3.dex */
    public class TunBuilder extends VpnService.Builder implements OpenVPNClientThread.TunBuilder {
        public /* synthetic */ TunBuilder(c_05 c_05Var, int i) {
            this();
        }

        private void log_error(String str, Exception exc) {
            new ObfuscatedString(new long[]{-8390306291690343626L, -6782344651641269523L}).toString();
            String.format(new ObfuscatedString(new long[]{-857416014422159408L, -7056655427032797956L, -1465063259428477781L, 7610303192518728189L}).toString(), str, exc.toString());
        }

        @Override // net.openvpn.openvpn.OpenVPNClientThread.TunBuilder
        public boolean tun_builder_add_address(String str, int i, String str2, boolean z, boolean z2) {
            try {
                new ObfuscatedString(new long[]{-4011772617897757224L, -1696387010626001614L}).toString();
                String.format(new ObfuscatedString(new long[]{6866146387009225986L, 6023265378208865113L, -7354704880511452335L, -6961785442657778431L, -4938026406587216255L, 7855700533541949937L, -8417878636254194040L}).toString(), str, Integer.valueOf(i), str2, Boolean.valueOf(z), Boolean.valueOf(z2));
                addAddress(str, i);
                return true;
            } catch (Exception e) {
                log_error(new ObfuscatedString(new long[]{-5458480138578468320L, 6526328407362716752L, -5161508455308514757L, -4446564081756004784L}).toString(), e);
                return false;
            }
        }

        @Override // net.openvpn.openvpn.OpenVPNClientThread.TunBuilder
        public boolean tun_builder_add_dns_server(String str, boolean z) {
            try {
                new ObfuscatedString(new long[]{-1629137422556244122L, 8216763078037083226L}).toString();
                String.format(new ObfuscatedString(new long[]{-1108016182173302667L, 7627934638123817200L, 1678708924867569159L, 7108164261168811693L, 6684324134962774495L, 977994037371497399L}).toString(), str, Boolean.valueOf(z));
                addDnsServer(str);
                return true;
            } catch (Exception e) {
                log_error(new ObfuscatedString(new long[]{6265595759876274662L, 8652360626892518904L, 7028813401062399261L, 4558086633702280184L, -6892777261131976214L}).toString(), e);
                return false;
            }
        }

        @Override // net.openvpn.openvpn.OpenVPNClientThread.TunBuilder
        public boolean tun_builder_add_route(String str, int i, boolean z) {
            try {
                new ObfuscatedString(new long[]{-772365866393241953L, 6929499656504879447L}).toString();
                String.format(new ObfuscatedString(new long[]{-3739905032018728832L, -5988338374917182782L, 2092747544339155226L, -7727231272298473093L, -5579721764226602654L}).toString(), str, Integer.valueOf(i), Boolean.valueOf(z));
                addRoute(str, i);
                return true;
            } catch (Exception e) {
                log_error(new ObfuscatedString(new long[]{-4882473162391062953L, 4579163253004415648L, -2827410264857381992L, -8706063205384887969L}).toString(), e);
                return false;
            }
        }

        @Override // net.openvpn.openvpn.OpenVPNClientThread.TunBuilder
        public boolean tun_builder_add_search_domain(String str) {
            try {
                new ObfuscatedString(new long[]{-8428365256170123713L, 7157982503128466421L}).toString();
                String.format(new ObfuscatedString(new long[]{-3332322044540744953L, -2388220156003022431L, 493909738894799364L, 6137522630202294245L, -3786477645819310793L}).toString(), str);
                addSearchDomain(str);
                return true;
            } catch (Exception e) {
                log_error(new ObfuscatedString(new long[]{31160945894512265L, 1614925837980207095L, -7836554079523849843L, -4540940850515599597L, 1842290126475839848L}).toString(), e);
                return false;
            }
        }

        @Override // net.openvpn.openvpn.OpenVPNClientThread.TunBuilder
        public int tun_builder_establish() {
            try {
                new ObfuscatedString(new long[]{-3297500312095335986L, 2676867415920636798L}).toString();
                new ObfuscatedString(new long[]{-1488142516850147396L, 4829992423723447663L, -4634155769933980660L, 2172542020924437515L}).toString();
                PendingIntent pendingIntent = c_05.this.get_configure_intent(0);
                if (pendingIntent != null) {
                    setConfigureIntent(pendingIntent);
                }
                return establish().detachFd();
            } catch (Exception e) {
                log_error(new ObfuscatedString(new long[]{-4710044928147972125L, -7428547580903210505L, 3798439594625565741L, 3591482953820071158L}).toString(), e);
                return -1;
            }
        }

        @Override // net.openvpn.openvpn.OpenVPNClientThread.TunBuilder
        public boolean tun_builder_exclude_route(String str, int i, boolean z) {
            try {
                new ObfuscatedString(new long[]{-7052171928997232164L, 4430499300718709711L}).toString();
                String.format(new ObfuscatedString(new long[]{-2775602020479762445L, 7183893926108086841L, 7375212102316143190L, 1193799348372708528L, -5876006133049357768L, 4899147168187486679L, 5683090465442911434L, -1520205441586886491L}).toString(), str, Integer.valueOf(i), Boolean.valueOf(z));
                return true;
            } catch (Exception e) {
                log_error(new ObfuscatedString(new long[]{1958749478605481494L, 3497861523336681156L, 4342944601824497856L, -566277814541845636L, -2896966874528012679L}).toString(), e);
                return false;
            }
        }

        @Override // net.openvpn.openvpn.OpenVPNClientThread.TunBuilder
        public boolean tun_builder_reroute_gw(boolean z, boolean z2, long j) {
            try {
                new ObfuscatedString(new long[]{957311515757213255L, -6818295028349457116L}).toString();
                String.format(new ObfuscatedString(new long[]{7868108722225852484L, 3591496032990535372L, -2093106256770775953L, 9134522331793671294L, 4162276007316772011L, -3922321461771693882L, 1561793223657244703L}).toString(), Boolean.valueOf(z), Boolean.valueOf(z2), Long.valueOf(j));
                if ((j & 65536) != 0) {
                    return true;
                }
                if (z) {
                    addRoute(new ObfuscatedString(new long[]{-834921018414502212L, -5150454862564344065L}).toString(), 0);
                }
                if (!z2) {
                    return true;
                }
                addRoute(new ObfuscatedString(new long[]{-8120068594502413123L, -2310671409666509552L}).toString(), 0);
                return true;
            } catch (Exception e) {
                log_error(new ObfuscatedString(new long[]{-7388983118925991069L, -2713328102454758257L, -3349231508671511196L, 808789282596803706L}).toString(), e);
                return false;
            }
        }

        @Override // net.openvpn.openvpn.OpenVPNClientThread.TunBuilder
        public boolean tun_builder_set_mtu(int i) {
            try {
                new ObfuscatedString(new long[]{9091923826426624858L, -5144189032522783682L}).toString();
                String.format(new ObfuscatedString(new long[]{-1926833371552073709L, -8563741907224371831L, 2929556320963925605L, 2888526529974672019L}).toString(), Integer.valueOf(i));
                setMtu(i);
                return true;
            } catch (Exception e) {
                log_error(new ObfuscatedString(new long[]{7379581587718015560L, -4684922234950272382L, -6530346884168940108L, 1198642647532476793L}).toString(), e);
                return false;
            }
        }

        @Override // net.openvpn.openvpn.OpenVPNClientThread.TunBuilder
        public boolean tun_builder_set_remote_address(String str, boolean z) {
            try {
                new ObfuscatedString(new long[]{8615640762857533844L, 2836976747306216463L}).toString();
                String.format(new ObfuscatedString(new long[]{7317019579600242290L, 1160587151784426834L, -2712100540943919724L, -8407313669551042011L, -479699607371212742L, 7161959676471178782L}).toString(), str, Boolean.valueOf(z));
                return true;
            } catch (Exception e) {
                log_error(new ObfuscatedString(new long[]{5261746383799925910L, -2417140255469090596L, 6734868427102870785L, 9102058498792202046L, -7838785458287458625L}).toString(), e);
                return false;
            }
        }

        @Override // net.openvpn.openvpn.OpenVPNClientThread.TunBuilder
        public boolean tun_builder_set_session_name(String str) {
            try {
                new ObfuscatedString(new long[]{-5860521855787010722L, 4442385471645213388L}).toString();
                String.format(new ObfuscatedString(new long[]{-5231369271559693486L, -3062739267382955689L, -4652510520211393467L, 4766817500471692530L, 6773366145446749531L}).toString(), str);
                setSession(c_05.this.getString(R.string.app_name));
                return true;
            } catch (Exception e) {
                log_error(new ObfuscatedString(new long[]{-8145652662464941451L, -896902699366740882L, -7782514414102264310L, -2992945036072847799L, -9182075121600619587L}).toString(), e);
                return false;
            }
        }

        @Override // net.openvpn.openvpn.OpenVPNClientThread.TunBuilder
        public void tun_builder_teardown(boolean z) {
            try {
                new ObfuscatedString(new long[]{-1053843884494273318L, -1198125015666573996L}).toString();
                String.format(new ObfuscatedString(new long[]{-2845091307791672585L, 2737026409339330619L, 2390851133096523436L, -5890575025112381117L, -7689374591142152812L}).toString(), Boolean.valueOf(z));
            } catch (Exception e) {
                log_error(new ObfuscatedString(new long[]{-2765265702141913084L, 4022796147574587771L, -7710341801083629516L, 9037219426941467116L}).toString(), e);
            }
        }

        private TunBuilder() {
            super(c_05.this);
        }
    }

    static {
        System.loadLibrary(new ObfuscatedString(new long[]{7515740845663656818L, 929676067297126318L}).toString());
        ClientAPI_OpenVPNClient.init_process();
        new ObfuscatedString(new long[]{4573684417943759456L, 3249146152551923750L}).toString();
        ClientAPI_OpenVPNClient.crypto_self_test();
    }

    public static void addLogInfo(String str) {
        String sSHHost = mConfigUtil.getSSHHost();
        String replace = str.trim().replace(sSHHost, new ObfuscatedString(new long[]{-1804205438799699935L, 4340474975535837516L}).toString()).replace(mConfigUtil.getPort(), new ObfuscatedString(new long[]{-5619910177545272980L, -409599109320035500L}).toString());
        if (!replace.contains(new ObfuscatedString(new long[]{-8764456028562071534L, -1569624481448862642L}).toString())) {
            TkLogStatus.logInfo(replace);
        }
    }

    private String cert_format_pem(X509Certificate x509Certificate) {
        return String.format(new ObfuscatedString(new long[]{-799432461476157740L, 368365595118794409L, 5463590345706386187L, 6164199329599881979L, 4347341500290047598L, 4577694438672003730L, -3865096106844820619L, 4640312451219048468L, 8684378265165311618L}).toString(), Base64.encodeToString(x509Certificate.getEncoded(), 0));
    }

    private void connect_action(String str, Intent intent, boolean z) {
        if (this.active) {
            this.paused = false;
            stop_thread();
            new Handler().postDelayed(new RunnableC0842x5762f236(this, str, intent, z), 2000L);
            return;
        }
        lambda$connect_action$0(str, intent, z);
    }

    @RequiresApi(api = 26)
    private void createNotificationChannel(NotificationManager notificationManager, String str) {
        String string = getString(R.string.channel_name);
        String string2 = getString(R.string.channel_description);
        NotificationChannel m3563x1378447b = AbstractC1005xc1f7307f.m3563x1378447b(str, string);
        m3563x1378447b.setShowBadge(true);
        m3563x1378447b.setDescription(string2);
        notificationManager.createNotificationChannel(m3563x1378447b);
    }

    private void crypto_self_test() {
        String crypto_self_test = ClientAPI_OpenVPNClient.crypto_self_test();
        if (crypto_self_test.length() > 0) {
            new ObfuscatedString(new long[]{7147338016295357803L, 7545884449170469805L}).toString();
            String.format(new ObfuscatedString(new long[]{6182058701140317475L, 482544415687255144L, 3109930437011972811L, -8942258405628112671L, -3881359360294844209L}).toString(), crypto_self_test);
        }
    }

    private void delete_profile_action(String str, Intent intent) {
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{1051912425871427004L, 5230479722934413806L}).toString());
        String stringExtra = intent.getStringExtra(m3341xc20437a5.toString());
        get_profile_list();
        Profile profile = this.profile_list.get_profile_by_name(stringExtra);
        if (profile == null) {
            return;
        }
        if (profile.is_deleteable()) {
            if (this.active && profile == this.current_profile) {
                stop_thread();
            }
            if (deleteFile(profile.get_filename())) {
                this.pwds.remove(new ObfuscatedString(new long[]{-1233304577267394970L, -6104634994366246520L}).toString(), stringExtra);
                this.pwds.remove(new ObfuscatedString(new long[]{-4147570206201655252L, 4421340636236523126L}).toString(), stringExtra);
                refresh_profile_list();
                gen_event(0, new ObfuscatedString(new long[]{-6760518407922674190L, -3680092646167363852L, 8861558039009139239L, 5982381976252549818L}).toString(), profile.get_name());
                return;
            }
            gen_event(1, new ObfuscatedString(new long[]{-1573221574468128728L, -2221023191113670989L, -417699684593036966L, 4056184920126424581L}).toString(), profile.get_name());
            return;
        }
        gen_event(1, new ObfuscatedString(new long[]{8355898538867793373L, 2714121671368415428L, -2669481196468047186L, -6336257167450155186L}).toString(), stringExtra);
    }

    private void delete_profiles() {
        ProfileList profileList = get_profile_list();
        if (profileList != null) {
            for (int i2 = 0; i2 < profileList.size(); i2++) {
                Profile profile = profileList.get(i2);
                if (profile != null) {
                    deleteFile(profile.get_name());
                    this.pwds.remove(new ObfuscatedString(new long[]{-8809589117680046461L, 9117722852607610632L}).toString(), profile.get_name());
                    this.pwds.remove(new ObfuscatedString(new long[]{1283687098432514140L, 1000862954853546164L}).toString(), profile.get_name());
                }
            }
            refresh_profile_list();
        }
    }

    private void disconnect_action(String str, Intent intent) {
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-4574133583537315807L, 5200254109989760563L}).toString());
        boolean booleanExtra = intent.getBooleanExtra(m3341xc20437a5.toString(), false);
        this.paused = true;
        stop_thread();
        if (booleanExtra) {
            stopSelf();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x022d A[Catch: IOException -> 0x01e4, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IOException -> 0x01e4, blocks: (B:51:0x019e, B:53:0x01a7, B:55:0x01af, B:58:0x01b9, B:60:0x01c1, B:15:0x022d, B:18:0x025a, B:22:0x02a2, B:39:0x02bc, B:43:0x02ce, B:48:0x02e1), top: B:50:0x019e }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x025a A[Catch: IOException -> 0x01e4, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IOException -> 0x01e4, blocks: (B:51:0x019e, B:53:0x01a7, B:55:0x01af, B:58:0x01b9, B:60:0x01c1, B:15:0x022d, B:18:0x025a, B:22:0x02a2, B:39:0x02bc, B:43:0x02ce, B:48:0x02e1), top: B:50:0x019e }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x02a2 A[Catch: IOException -> 0x01e4, TRY_ENTER, TRY_LEAVE, TryCatch #0 {IOException -> 0x01e4, blocks: (B:51:0x019e, B:53:0x01a7, B:55:0x01af, B:58:0x01b9, B:60:0x01c1, B:15:0x022d, B:18:0x025a, B:22:0x02a2, B:39:0x02bc, B:43:0x02ce, B:48:0x02e1), top: B:50:0x019e }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x02b3 A[Catch: IOException -> 0x034f, TRY_ENTER, TRY_LEAVE, TryCatch #1 {IOException -> 0x034f, blocks: (B:9:0x0186, B:13:0x0225, B:16:0x0252, B:19:0x0299, B:24:0x02f9, B:36:0x02b3, B:40:0x02c5, B:45:0x02d8, B:49:0x02ea, B:12:0x01ed), top: B:8:0x0186 }] */
    /* renamed from: do_connect_action */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void lambda$connect_action$0(String str, Intent intent, boolean z) {
        String str2;
        ProxyContext proxyContext;
        String str3;
        String str4;
        char c;
        int i2;
        String read_file;
        String valueOf;
        String replace;
        String str5;
        String replace2;
        String m3334xd2bcb0cf = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-5189320808119958938L, 6396003626594448860L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf2 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-6429195851850723626L, -2295539360724332120L, -31661926083720494L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf3 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-2954180391652761714L, 1140024054405570870L, 6788331287454944630L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf4 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{4109830185274372213L, -3690002934054079931L, -8648091123663467166L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf5 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-7090222155970733818L, -5396988345210698636L, 8440218108447793350L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{452551533776133443L, 7104114462207543L, 4709289495926580678L, -2167483049693344870L, 4337816530077619561L}).toString());
        boolean booleanExtra = intent.getBooleanExtra(m3341xc20437a5.toString(), false);
        String m3334xd2bcb0cf6 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-6587595522409096969L, 7114714660150181184L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf7 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-4725855515733493483L, 7915587941521703753L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf8 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-4435781843309539838L, 1842365962254296549L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf9 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-7691632331762832924L, 8008777747026885094L, -2038795922318770277L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf10 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-6937101534352839345L, 7884721744405857847L, 7219966779620719730L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf11 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-7972817904148064046L, 317880486866281802L, 868621909272937103L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        StringBuilder m3341xc20437a52 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a52.append(new ObfuscatedString(new long[]{-8893455557795779623L, -81383685535218971L, -7757708127724936653L}).toString());
        boolean booleanExtra2 = intent.getBooleanExtra(m3341xc20437a52.toString(), false);
        String m3334xd2bcb0cf12 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-8316382152864283685L, -1527601410778982664L, 3217363410019558261L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf13 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-7556251398987815990L, 5186279542321035311L, 6840557689454068795L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf14 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-4381750770217569306L, 4246703086513427469L, -1781704254340109123L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf15 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-5005912184929920513L, 5198519368622207380L, 4961110929270354260L, -5250753728576883934L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String pw_repl = OpenVPNDebug.pw_repl(m3334xd2bcb0cf10, m3334xd2bcb0cf11);
        Profile locate_profile = locate_profile(m3334xd2bcb0cf);
        if (locate_profile == null) {
            return;
        }
        if (m3334xd2bcb0cf3 != null) {
            ProxyContext proxyContext2 = locate_profile.get_proxy_context(true);
            str2 = m3334xd2bcb0cf10;
            proxyContext2.new_connection(intent, m3334xd2bcb0cf, m3334xd2bcb0cf3, m3334xd2bcb0cf4, m3334xd2bcb0cf5, booleanExtra, this.proxy_list, z);
            proxyContext = proxyContext2;
        } else {
            str2 = m3334xd2bcb0cf10;
            locate_profile.reset_proxy_context();
            proxyContext = null;
        }
        String str6 = locate_profile.get_location();
        String str7 = locate_profile.get_filename();
        try {
            read_file = read_file(str6, str7);
            valueOf = String.valueOf(mConfigUtil.getSSLPort());
        } catch (IOException unused) {
            str3 = str7;
            str4 = str6;
            c = 0;
        }
        try {
            if (mConfigUtil.getTunnelType() != 2) {
                try {
                    if (mConfigUtil.getTunnelType() != 3 && mConfigUtil.getTunnelType() != 4 && mConfigUtil.getTunnelType() != 5) {
                        if (mConfigUtil.getTunnelType() == 7) {
                            read_file = read_file.replace(new ObfuscatedString(new long[]{3402417760448053543L, 7812045934298853317L, -7229583757550796922L}).toString(), new ObfuscatedString(new long[]{2873340661565503516L, -4895787160554070452L}).toString());
                        }
                        if (mConfigUtil.isQueryMode()) {
                            String replace3 = read_file.replace(getIpOrHost(read_file), mConfigUtil.getFrontQueryString());
                            read_file = replace3.replace(getPort(replace3), new ObfuscatedString(new long[]{-4258528660233746042L, 4195716744329060112L}).toString());
                        }
                        if (mConfigUtil.getCustomSSLPortEnabled()) {
                            String replace4 = read_file.replace(getIpOrHost(read_file), mConfigUtil.getProxy());
                            read_file = replace4.replace(getPort(replace4), new ObfuscatedString(new long[]{5585689364079459501L}).toString() + mConfigUtil.getSSLPort());
                        }
                        if (mConfigUtil.getTunnelType() != 7) {
                            replace2 = read_file.replace(getPort(read_file), mConfigUtil.getUdpPort());
                        } else if (mConfigUtil.getTunnelType() == 3) {
                            replace2 = read_file.replace(getPort(read_file), valueOf);
                        } else {
                            if (mConfigUtil.getTunnelType() == 4) {
                                replace = read_file.replace(getPort(read_file), valueOf);
                            } else if (mConfigUtil.getTunnelType() == 5) {
                                replace = read_file.replace(getPort(read_file), valueOf);
                            } else {
                                replace = read_file.replace(getPort(read_file), mConfigUtil.getSSHPortString());
                            }
                            str5 = replace;
                            new ObfuscatedString(new long[]{2110207955553394101L, -4961577376708533886L}).toString();
                            String.format(new ObfuscatedString(new long[]{4857860539432550329L, -4554032066190678705L, 813117658615109440L, 4641338116909588847L, 3069772254846860992L}).toString(), Integer.valueOf(str5.length()));
                            str3 = str7;
                            str4 = str6;
                            c = 0;
                            start_connection(locate_profile, str5, m3334xd2bcb0cf2, proxyContext, m3334xd2bcb0cf6, m3334xd2bcb0cf7, m3334xd2bcb0cf8, m3334xd2bcb0cf9, str2, pw_repl, booleanExtra2, m3334xd2bcb0cf12, m3334xd2bcb0cf13, m3334xd2bcb0cf14, m3334xd2bcb0cf15);
                            return;
                        }
                        str5 = replace2;
                        new ObfuscatedString(new long[]{2110207955553394101L, -4961577376708533886L}).toString();
                        String.format(new ObfuscatedString(new long[]{4857860539432550329L, -4554032066190678705L, 813117658615109440L, 4641338116909588847L, 3069772254846860992L}).toString(), Integer.valueOf(str5.length()));
                        str3 = str7;
                        str4 = str6;
                        c = 0;
                        start_connection(locate_profile, str5, m3334xd2bcb0cf2, proxyContext, m3334xd2bcb0cf6, m3334xd2bcb0cf7, m3334xd2bcb0cf8, m3334xd2bcb0cf9, str2, pw_repl, booleanExtra2, m3334xd2bcb0cf12, m3334xd2bcb0cf13, m3334xd2bcb0cf14, m3334xd2bcb0cf15);
                        return;
                    }
                } catch (IOException unused2) {
                    str3 = str7;
                    str4 = str6;
                    i2 = 2;
                    c = 0;
                    Object[] objArr = new Object[i2];
                    objArr[c] = str4;
                    objArr[1] = str3;
                    long[] jArr = new long[i2];
                    // fill-array-data instruction
                    jArr[0] = 1761156676125301334L;
                    jArr[1] = 111934325652360053L;
                    gen_event(1, new ObfuscatedString(new long[]{-3374981756694883070L, 2927201179482558215L, 7707416387811295060L, -4428920041534892584L}).toString(), String.format(new ObfuscatedString(jArr).toString(), objArr));
                    return;
                }
            }
            start_connection(locate_profile, str5, m3334xd2bcb0cf2, proxyContext, m3334xd2bcb0cf6, m3334xd2bcb0cf7, m3334xd2bcb0cf8, m3334xd2bcb0cf9, str2, pw_repl, booleanExtra2, m3334xd2bcb0cf12, m3334xd2bcb0cf13, m3334xd2bcb0cf14, m3334xd2bcb0cf15);
            return;
        } catch (IOException unused3) {
            i2 = 2;
            Object[] objArr2 = new Object[i2];
            objArr2[c] = str4;
            objArr2[1] = str3;
            long[] jArr2 = new long[i2];
            // fill-array-data instruction
            jArr2[0] = 1761156676125301334L;
            jArr2[1] = 111934325652360053L;
            gen_event(1, new ObfuscatedString(new long[]{-3374981756694883070L, 2927201179482558215L, 7707416387811295060L, -4428920041534892584L}).toString(), String.format(new ObfuscatedString(jArr2).toString(), objArr2));
            return;
        }
        read_file = read_file + String.format(new ObfuscatedString(new long[]{-7996318743257153244L, 8263256548021217094L, -8124063585969235306L, -8959515430190111415L, 7765617860801347566L, 465438123488595296L, 7677349224337470095L, 6705007075402267389L, -2015779172032594758L, -1971223175128535748L, -6213670352597084175L, -2269281526299101661L}).toString(), new ObfuscatedString(new long[]{-4856271262096871771L, 4598476862821238730L, -1137437132787804226L}).toString());
        if (mConfigUtil.isQueryMode()) {
        }
        if (mConfigUtil.getCustomSSLPortEnabled()) {
        }
        if (mConfigUtil.getTunnelType() != 7) {
        }
        str5 = replace2;
        new ObfuscatedString(new long[]{2110207955553394101L, -4961577376708533886L}).toString();
        String.format(new ObfuscatedString(new long[]{4857860539432550329L, -4554032066190678705L, 813117658615109440L, 4641338116909588847L, 3069772254846860992L}).toString(), Integer.valueOf(str5.length()));
        str3 = str7;
        str4 = str6;
        c = 0;
    }

    private void do_connect_action1(String str, Intent intent, boolean z) {
        String str2;
        ProxyContext proxyContext;
        String str3;
        String str4;
        char c;
        int i2;
        String str5;
        String m3334xd2bcb0cf = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{2787616419458879762L, -8577217313636586273L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf2 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{5354658338825305092L, -6989698442565106615L, 2100329365363931501L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf3 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-5814549055182767748L, -1934672657822824642L, -8369743231237465084L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf4 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-2007191462729855149L, -2718239092302708021L, -1174021260557264481L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf5 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-1362430059592804108L, -6247099127980198942L, 8601788092107692897L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{7624567963990906713L, -6947405834281412608L, -5086874584582720798L, -1392519087317428023L, 4829906298007247478L}).toString());
        boolean booleanExtra = intent.getBooleanExtra(m3341xc20437a5.toString(), false);
        String m3334xd2bcb0cf6 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{2317935748526738310L, 324776466045716913L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf7 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{2380493272879483708L, 210669741635603960L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf8 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{8151864018169881316L, 1544361766195333352L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf9 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{6118300752270672062L, 3744058863680065981L, -2287548646793481972L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf10 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{2898735926715023247L, -8795421033680756937L, -5891273689726742846L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf11 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-2512267408076471766L, -385132749623471854L, -9063606537423504436L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        StringBuilder m3341xc20437a52 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a52.append(new ObfuscatedString(new long[]{7080694953211178232L, 4938089247637748593L, 4406276134673193541L}).toString());
        boolean booleanExtra2 = intent.getBooleanExtra(m3341xc20437a52.toString(), false);
        String m3334xd2bcb0cf12 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-4725567440485426797L, 4673089631358507996L, -1797987349308864131L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf13 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-2499417009136566499L, -4772621333495849583L, -583388398133827274L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf14 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-2561310594999383643L, 3665592502375577502L, 5388704248899554952L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf15 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{8662882446028326837L, 3779875012507391484L, -452367984614753315L, 7441927481097287172L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String pw_repl = OpenVPNDebug.pw_repl(m3334xd2bcb0cf10, m3334xd2bcb0cf11);
        Profile locate_profile = locate_profile(m3334xd2bcb0cf);
        if (locate_profile == null) {
            return;
        }
        if (m3334xd2bcb0cf3 != null) {
            ProxyContext proxyContext2 = locate_profile.get_proxy_context(true);
            str2 = m3334xd2bcb0cf10;
            proxyContext2.new_connection(intent, m3334xd2bcb0cf, m3334xd2bcb0cf3, m3334xd2bcb0cf4, m3334xd2bcb0cf5, booleanExtra, this.proxy_list, z);
            proxyContext = proxyContext2;
        } else {
            str2 = m3334xd2bcb0cf10;
            locate_profile.reset_proxy_context();
            proxyContext = null;
        }
        String str6 = locate_profile.get_location();
        String str7 = locate_profile.get_filename();
        String sSHPortString = mConfigUtil.getSSHPortString();
        try {
            String read_file = read_file(str6, str7);
            int tunnelType = mConfigUtil.getTunnelType();
            if (tunnelType == 3 || tunnelType == 4 || tunnelType == 5) {
                sSHPortString = String.valueOf(mConfigUtil.getSSLPort());
            }
            String replace = read_file.replace(getPort(read_file), sSHPortString);
            String ipOrHost = getIpOrHost(replace);
            new ObfuscatedString(new long[]{7798141772799803525L}).toString();
            String replace2 = replace.replace(ipOrHost, mConfigUtil.getSSHHost());
            if (mConfigUtil.isQueryMode()) {
                try {
                    String replace3 = replace2.replace(ipOrHost, mConfigUtil.getFrontQueryString());
                    replace2 = replace3.replace(getPort(replace3), new ObfuscatedString(new long[]{6600296285014518967L, -400326387482052840L}).toString());
                } catch (IOException unused) {
                    str3 = str7;
                    str4 = str6;
                    i2 = 2;
                    c = 0;
                    Object[] objArr = new Object[i2];
                    objArr[c] = str4;
                    objArr[1] = str3;
                    long[] jArr = new long[i2];
                    // fill-array-data instruction
                    jArr[0] = 43580010586389346L;
                    jArr[1] = -7544815498400272253L;
                    gen_event(1, new ObfuscatedString(new long[]{-4794879778578028417L, 4396144117651147202L, 7736454744057044368L, 8602121907076221815L}).toString(), String.format(new ObfuscatedString(jArr).toString(), objArr));
                }
            }
            if (mConfigUtil.getCustomSSLPortEnabled()) {
                String replace4 = replace2.replace(ipOrHost, mConfigUtil.getProxy());
                replace2 = replace4.replace(getPort(replace4), String.valueOf(mConfigUtil.getSSLPort()));
            }
            Object[] objArr2 = {Integer.valueOf(replace2.length())};
            new ObfuscatedString(new long[]{-3521908849247364125L, -6872909198032181770L}).toString();
            String.format(new ObfuscatedString(new long[]{-4095485917171042989L, -1425376664987409792L, 8352588043774696958L, 2366639398738444683L, 84987119014163294L}).toString(), objArr2);
            if (mConfigUtil.getTunnelType() == 7) {
                try {
                    String replace5 = replace2.replace(getPort(replace2), new ObfuscatedString(new long[]{-2213579154999819456L}).toString());
                    if (replace5.contains(new ObfuscatedString(new long[]{9046466266415676293L, -3181288110987636099L, -923142762912359817L}).toString())) {
                        String obfuscatedString = new ObfuscatedString(new long[]{-2133776789371063511L, -5355331941930366021L, 2756295688923224699L}).toString();
                        long[] jArr2 = new long[1];
                        jArr2[0] = 6239014752877695294L;
                        replace5 = replace5.replace(obfuscatedString, new ObfuscatedString(jArr2).toString());
                    }
                    str5 = replace5 + new ObfuscatedString(new long[]{-1090043725795046955L, -8505203625368653919L, 7764318316409360632L}).toString();
                } catch (IOException unused2) {
                    str3 = str7;
                    str4 = str6;
                    i2 = 2;
                    c = 0;
                    Object[] objArr3 = new Object[i2];
                    objArr3[c] = str4;
                    objArr3[1] = str3;
                    long[] jArr3 = new long[i2];
                    // fill-array-data instruction
                    jArr3[0] = 43580010586389346L;
                    jArr3[1] = -7544815498400272253L;
                    gen_event(1, new ObfuscatedString(new long[]{-4794879778578028417L, 4396144117651147202L, 7736454744057044368L, 8602121907076221815L}).toString(), String.format(new ObfuscatedString(jArr3).toString(), objArr3));
                }
            } else {
                str5 = replace2 + new ObfuscatedString(new long[]{-1115965225061097187L, -409687456787987042L, 2164313398051015511L}).toString();
            }
            str3 = str7;
            str4 = str6;
            c = 0;
            try {
                start_connection(locate_profile, str5, m3334xd2bcb0cf2, proxyContext, m3334xd2bcb0cf6, m3334xd2bcb0cf7, m3334xd2bcb0cf8, m3334xd2bcb0cf9, str2, pw_repl, booleanExtra2, m3334xd2bcb0cf12, m3334xd2bcb0cf13, m3334xd2bcb0cf14, m3334xd2bcb0cf15);
            } catch (IOException unused3) {
                i2 = 2;
                Object[] objArr32 = new Object[i2];
                objArr32[c] = str4;
                objArr32[1] = str3;
                long[] jArr32 = new long[i2];
                // fill-array-data instruction
                jArr32[0] = 43580010586389346L;
                jArr32[1] = -7544815498400272253L;
                gen_event(1, new ObfuscatedString(new long[]{-4794879778578028417L, 4396144117651147202L, 7736454744057044368L, 8602121907076221815L}).toString(), String.format(new ObfuscatedString(jArr32).toString(), objArr32));
            }
        } catch (IOException unused4) {
            str3 = str7;
            str4 = str6;
            c = 0;
        }
    }

    private void gen_event(int i2, String str, String str2) {
        gen_event(i2, str, str2, null, null);
    }

    private String getIpOrHost(String str) {
        for (String str2 : str.split(new ObfuscatedString(new long[]{7300492534639907576L, 8175662955130256833L}).toString())) {
            if (str2.toLowerCase().contains(new ObfuscatedString(new long[]{-6873633290810159479L, -4758187600046468446L}).toString())) {
                return str2.split(new ObfuscatedString(new long[]{2544655009452073631L, 704083007296127979L}).toString())[1];
            }
        }
        return new ObfuscatedString(new long[]{7374490538797993767L, -6494842048701548425L}).toString();
    }

    private String getPort(String str) {
        for (String str2 : str.split(new ObfuscatedString(new long[]{207952941731364914L, 2774059216670014280L}).toString())) {
            if (str2.toLowerCase().contains(new ObfuscatedString(new long[]{-2439832329467199874L, -4701345720335924791L}).toString())) {
                return str2.split(new ObfuscatedString(new long[]{4614256898889416987L, -2250447890703414034L}).toString())[2];
            }
        }
        return new ObfuscatedString(new long[]{-1002904000556965384L, -290229313513400187L}).toString();
    }

    public static Date get_app_expire() {
        int app_expire = ClientAPI_OpenVPNClient.app_expire();
        if (app_expire > 0) {
            return new Date(app_expire * 1000);
        }
        return null;
    }

    public PendingIntent get_configure_intent(int i2) {
        Iterator<EventReceiver> it = clients.iterator();
        while (it.hasNext()) {
            PendingIntent pendingIntent = it.next().get_configure_intent(i2);
            if (pendingIntent != null) {
                return pendingIntent;
            }
        }
        return null;
    }

    public static String get_openvpn_core_platform() {
        return ClientAPI_OpenVPNClient.platform();
    }

    private boolean import_profile(String str, String str2, boolean z) {
        if (ProfileFN.has_ovpn_ext(str2) && FileUtils.dirname(str2) == null) {
            if (z) {
                ClientAPI_MergeConfig merge_config_string_static = ClientAPI_OpenVPNClient.merge_config_string_static(str);
                String str3 = new ObfuscatedString(new long[]{6426182487783849819L, -4634611751453108296L}).toString() + merge_config_string_static.getStatus();
                if (str3.equals(new ObfuscatedString(new long[]{7314516979466500156L, -8284871669323858362L, -6203297503824075574L, 7574387146724568769L}).toString())) {
                    str = merge_config_string_static.getProfileContent();
                } else {
                    gen_event(1, str3, merge_config_string_static.getErrorText());
                    return false;
                }
            }
            ClientAPI_Config clientAPI_Config = new ClientAPI_Config();
            clientAPI_Config.setContent(str);
            ClientAPI_EvalConfig eval_config_static = ClientAPI_OpenVPNClient.eval_config_static(clientAPI_Config);
            if (eval_config_static.getError()) {
                gen_event(1, new ObfuscatedString(new long[]{-4495372678841294513L, -1204619962969180043L, 593390608999688214L, 5832987467567962496L}).toString(), String.format(new ObfuscatedString(new long[]{4717609370223974509L, 5989820941469213010L}).toString(), str2, eval_config_static.getMessage()));
                return false;
            }
            Profile profile = new Profile(new ObfuscatedString(new long[]{4112625460792308155L, -1690647143155222171L}).toString(), str2, false, eval_config_static);
            try {
                FileUtils.writeFileAppPrivate(this, profile.get_filename(), str);
                String str4 = profile.get_name();
                this.pwds.remove(new ObfuscatedString(new long[]{8764616601484645366L, -576704918014777973L}).toString(), str4);
                this.pwds.remove(new ObfuscatedString(new long[]{-2400013978644970486L, -8356628596258106685L}).toString(), str4);
                refresh_profile_list();
                gen_event(0, new ObfuscatedString(new long[]{1780719063197212878L, 2038590472442954688L, 4081648543047942948L, 1045672511064770126L}).toString(), str4, str4);
                return true;
            } catch (IOException unused) {
                gen_event(1, new ObfuscatedString(new long[]{-5108941985372582243L, 8468483169184972885L, 9047985678226370810L, 643698820022865891L}).toString(), str2);
                return false;
            }
        }
        gen_event(1, new ObfuscatedString(new long[]{48461019863202617L, 7353629569616873239L, -232484625951568183L, -114104866121234800L}).toString(), str2);
        return false;
    }

    private void import_profile_action(String str, Intent intent) {
        String m3334xd2bcb0cf = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{5870150157604496613L, 8947755158512140581L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        String m3334xd2bcb0cf2 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{6287377448784837036L, -758804801577662980L, 7249090149659675886L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{2011536664675760439L, -8574411660098892691L}).toString());
        import_profile(m3334xd2bcb0cf, m3334xd2bcb0cf2, intent.getBooleanExtra(m3341xc20437a5.toString(), false));
    }

    private void import_profile_via_path_action(String str, Intent intent) {
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-6558001318986692890L, 7102797861519026916L}).toString());
        ClientAPI_MergeConfig merge_config_static = ClientAPI_OpenVPNClient.merge_config_static(intent.getStringExtra(m3341xc20437a5.toString()), true);
        String str2 = new ObfuscatedString(new long[]{-684170597448589385L, 5535692430401925895L}).toString() + merge_config_static.getStatus();
        if (str2.equals(new ObfuscatedString(new long[]{-7233980148267956033L, -5000497962363614621L, 7254171746355429760L, 8952304892855969795L}).toString())) {
            import_profile(merge_config_static.getProfileContent(), merge_config_static.getBasename(), false);
        } else {
            gen_event(1, str2, merge_config_static.getErrorText());
        }
    }

    @RequiresApi(api = 24)
    private void jbNotificationExtras(Notification.Builder builder) {
        try {
            builder.getClass().getMethod(new ObfuscatedString(new long[]{2586798889973863270L, 8348886379903747553L, -6215610011625008798L}).toString(), Integer.TYPE).invoke(builder, 2);
            builder.getClass().getMethod(new ObfuscatedString(new long[]{-3719320672119771548L, -4371800314213868532L, -5858650012970026532L, -4970057158552198172L}).toString(), Boolean.TYPE).invoke(builder, Boolean.TRUE);
        } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException unused) {
        }
    }

    private Profile locate_profile(String str) {
        get_profile_list();
        Profile profile = this.profile_list.get_profile_by_name(str);
        if (profile != null) {
            return profile;
        }
        gen_event(1, new ObfuscatedString(new long[]{-8817228761316178700L, 7225100942927788450L, 4732336694119813428L, -6804908253059739323L}).toString(), str);
        return null;
    }

    public static ArrayDeque<LogMsg> log_history() {
        return log_deque;
    }

    public static void log_message(String str) {
        LogMsg logMsg = new LogMsg();
        logMsg.line = str;
        log_message(logMsg);
    }

    private void log_stats() {
        if (this.active) {
            String[] stat_names = stat_names();
            ClientAPI_LLVector stat_values_full = stat_values_full();
            if (stat_values_full != null) {
                for (int i2 = 0; i2 < stat_names.length; i2++) {
                    String str = stat_names[i2];
                    long j = stat_values_full.get(i2);
                    if (j > 0) {
                        new ObfuscatedString(new long[]{-1803637363982836229L, -5365493896915868989L}).toString();
                        String.format(new ObfuscatedString(new long[]{-4257019628838981883L, -6159572451047413543L, 6519926343423676723L}).toString(), str, Long.valueOf(j));
                    }
                }
            }
        }
    }

    public static long max_profile_size() {
        return ClientAPI_OpenVPNClient.max_profile_size();
    }

    private void populate_event_info_map() {
        HashMap hashMap = new HashMap();
        this.event_info = hashMap;
        hashMap.put(new ObfuscatedString(new long[]{1092760672637048575L, -3471341089041814098L, 8251088259854610202L}).toString(), new EventInfo(R.string.reconnecting, R.drawable.connecting, 20, 2, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-4644853431019026391L, -4425612119347512191L}).toString(), new EventInfo(R.string.resolve, R.drawable.connecting, 30, 1, 0));
        this.event_info.put(new ObfuscatedString(new long[]{9145793042292093803L, -1177602575948212635L, -8181732413086942301L}).toString(), new EventInfo(R.string.wait_proxy, R.drawable.connecting, 40, 1, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-5590894772384364217L, -6269221966370286501L}).toString(), new EventInfo(R.string.wait, R.drawable.connecting, 50, 1, 0));
        this.event_info.put(new ObfuscatedString(new long[]{8066421349965143389L, -2727069187336933229L, 4394276244287665197L}).toString(), new EventInfo(R.string.connecting, R.drawable.connecting, 60, 1, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-8268176804343656742L, -8029840490087186962L, 2059901915082618338L}).toString(), new EventInfo(R.string.get_config, R.drawable.connecting, 70, 1, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-4821134101639744156L, -7637241571368902938L, 2207223660975897431L}).toString(), new EventInfo(R.string.assign_ip, R.drawable.connecting, 80, 1, 0));
        this.event_info.put(new ObfuscatedString(new long[]{7285805736314266910L, -8129192820175395911L, -4157350301199771542L}).toString(), new EventInfo(R.string.add_routes, R.drawable.connecting, 90, 1, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-1379570549876311187L, -8033301630731048979L, 2235192041520562878L}).toString(), new EventInfo(R.string.connected, R.drawable.connected, 100, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-401315190052533043L, 1034487644780101009L, 4578527583713388787L}).toString(), new EventInfo(R.string.disconnected, R.drawable.disconnected, 0, 2, 0));
        this.event_info.put(new ObfuscatedString(new long[]{6219617832291193083L, -3258743057012412415L, -8403011374541000272L}).toString(), new EventInfo(R.string.auth_failed, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-2686309601882056960L, -2359093662874883439L, -5010777671792345858L, -2348743419969737864L}).toString(), new EventInfo(R.string.pem_password_fail, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-1623753242265942941L, -6131126538529608860L, -529100469036737966L}).toString(), new EventInfo(R.string.cert_verify_fail, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-2895609405766924265L, -5608146036380004466L, -4784072446018216189L}).toString(), new EventInfo(R.string.tls_version_min, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-436456940592513559L, 6420123580406135400L, 5844768904782643941L, 3740569097417368187L}).toString(), new EventInfo(R.string.dynamic_challenge, R.drawable.error, 0, 2, 0));
        this.event_info.put(new ObfuscatedString(new long[]{864458644958344409L, -830956192077031247L, -7533221662768409613L}).toString(), new EventInfo(R.string.tun_setup_failed, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-7273914934852259371L, -5450890516947234100L, 461125685542476674L}).toString(), new EventInfo(R.string.tun_iface_create, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-107103285434987228L, 2376726624625826822L, -870916507635702426L, 1713279461928405637L}).toString(), new EventInfo(R.string.tap_not_supported, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{6532909822114109781L, 8642244812061623675L, -7892238963620511982L, 7043611614412642558L}).toString(), new EventInfo(R.string.profile_not_found, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{6571804167923153874L, -2967391148636224939L, 4416305004381445440L, -3655245902140003281L}).toString(), new EventInfo(R.string.config_file_parse_error, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-5199164623860744616L, -6578169288754013890L, -7241976969197950198L}).toString(), new EventInfo(R.string.need_creds_error, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-4600848561348656070L, -9081337354646867082L, -548572574019647955L}).toString(), new EventInfo(R.string.creds_error, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{7622331685170069699L, -5718946781122935842L, -4914856293401558411L, 4582228579313822494L}).toString(), new EventInfo(R.string.connection_timeout, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-4512930139471200687L, 4134503378556534887L, -1709499721179617448L}).toString(), new EventInfo(R.string.inactive_timeout, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-5056063958972566405L, 4324160306729135783L}).toString(), new EventInfo(R.string.info_msg, R.drawable.rightarrow, 0, 0, 0));
        this.event_info.put(new ObfuscatedString(new long[]{3264344658300202042L, 7172100766380956672L}).toString(), new EventInfo(R.string.warn_msg, R.drawable.rightarrow, 0, 0, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-1636517734290871751L, -5956070423776410785L, -8644044857766594395L}).toString(), new EventInfo(R.string.proxy_need_creds, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{8927822343284461547L, -3064608176615529084L, 4705569751163290367L}).toString(), new EventInfo(R.string.proxy_error, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-6688170084761668635L, -4207619419643600356L, -5482950186759061281L, -8550119411580125122L}).toString(), new EventInfo(R.string.proxy_context_expired, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{6564998603328515099L, -1248977215593759721L, 2933071563790547048L}).toString(), new EventInfo(R.string.epki_error, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-1360798191948484647L, 2928017657835756646L, -8067859631210375368L, -2546070328702343249L}).toString(), new EventInfo(R.string.epki_invalid_alias, R.drawable.error, 0, 0, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-3911521726749884396L, 4470244822616736907L}).toString(), new EventInfo(R.string.pause, R.drawable.pause, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-7686660632035997802L, 6867532544752531044L}).toString(), new EventInfo(R.string.resume, R.drawable.connecting, 0, 2, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-3377033068194234124L, -8234334095328577512L, 1696440476979831842L, 6895824360503978690L}).toString(), new EventInfo(R.string.core_thread_active, R.drawable.connecting, 10, 1, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-2855398865023011939L, 2805615625718852830L, 7584730212228066664L, 7615916671574149676L}).toString(), new EventInfo(R.string.core_thread_inactive, -1, 0, 0, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-4393390780854569468L, -8519674393003816464L, 7823293676367609886L, -7134790227721683942L}).toString(), new EventInfo(R.string.core_thread_error, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{405225966012731705L, 7235012019217960407L, 3027876736788814816L, 2935900098455650232L}).toString(), new EventInfo(R.string.core_thread_abandoned, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-8037919316442301696L, 1182721313749675313L, -1548543309486311733L}).toString(), new EventInfo(R.string.client_halt, R.drawable.error, 0, 3, 0));
        this.event_info.put(new ObfuscatedString(new long[]{4789187908023091667L, 7253405113907148725L, -2541977541188183630L}).toString(), new EventInfo(R.string.client_restart, R.drawable.connecting, 0, 2, 0));
        this.event_info.put(new ObfuscatedString(new long[]{-6080239311596896046L, -67583144407408853L, -5907341962021270545L, 7447127213769748304L}).toString(), new EventInfo(R.string.profile_import_success, R.drawable.rightarrow, 0, 2, 44));
        this.event_info.put(new ObfuscatedString(new long[]{4556226176088316118L, -5828433873950241923L, -8015551912166580940L, -7277923087984216753L}).toString(), new EventInfo(R.string.profile_delete_success, R.drawable.delete, 0, 2, 12));
        this.event_info.put(new ObfuscatedString(new long[]{759621409273207896L, 6397388958274984665L, 615514905324571272L, -2510484797996058379L}).toString(), new EventInfo(R.string.profile_delete_failed, R.drawable.error, 0, 2, 4));
        this.event_info.put(new ObfuscatedString(new long[]{1292525004234084103L, 3610335838209197311L, 5486786948860656367L, -9178604757828362926L}).toString(), new EventInfo(R.string.profile_parse_error, R.drawable.error, 0, 3, 4));
        this.event_info.put(new ObfuscatedString(new long[]{1457720786071010374L, 3594971237274462608L, 123623014283121211L}).toString(), new EventInfo(R.string.profile_conflict, R.drawable.error, 0, 3, 4));
        this.event_info.put(new ObfuscatedString(new long[]{-7623323456427305626L, 5010610734740585200L, 5450505331809489663L, -3518551998346957934L}).toString(), new EventInfo(R.string.profile_write_error, R.drawable.error, 0, 3, 4));
        this.event_info.put(new ObfuscatedString(new long[]{-6785566941292714138L, 6018962264088948944L, 6688297037601797023L, 8174506167194724673L}).toString(), new EventInfo(R.string.profile_filename_error, R.drawable.error, 0, 3, 4));
        this.event_info.put(new ObfuscatedString(new long[]{-7917448916541435216L, 79588913075957725L, -658745968908702752L, -8719737897982958329L}).toString(), new EventInfo(R.string.profile_rename_success, R.drawable.rightarrow, 0, 2, 12));
        this.event_info.put(new ObfuscatedString(new long[]{4350822132248384417L, 3190557300753991286L, -111308430876354909L, -6477662978644767699L}).toString(), new EventInfo(R.string.profile_rename_failed, R.drawable.error, 0, 2, 4));
        this.event_info.put(new ObfuscatedString(new long[]{2003358139034194127L, -7636209714823039812L, -695645653234212443L, -7416389953710264493L}).toString(), new EventInfo(R.string.profile_merge_exception, R.drawable.error, 0, 2, 4));
        this.event_info.put(new ObfuscatedString(new long[]{6600941486982274916L, -2352198741107536484L, 389130060143681795L, -4482856960646362442L, -9189441512096466786L}).toString(), new EventInfo(R.string.profile_merge_ovpn_ext_fail, R.drawable.error, 0, 2, 4));
        this.event_info.put(new ObfuscatedString(new long[]{5909311995066079558L, 3319365444699992261L, 3749295615363023669L, 6414991457792532972L, -4053510259857249954L}).toString(), new EventInfo(R.string.profile_merge_ovpn_file_fail, R.drawable.error, 0, 2, 4));
        this.event_info.put(new ObfuscatedString(new long[]{-6737952083691300559L, -693225252551725242L, 6249588837340217747L, -772306444926907439L}).toString(), new EventInfo(R.string.profile_merge_ref_fail, R.drawable.error, 0, 2, 4));
        this.event_info.put(new ObfuscatedString(new long[]{-4213848327818305136L, 797804867400487175L, 4248693963584485793L, -8791009453670784735L, -6752626480427718618L}).toString(), new EventInfo(R.string.profile_merge_multiple_ref_fail, R.drawable.error, 0, 2, 4));
        this.event_info.put(new ObfuscatedString(new long[]{1816596219150303404L, 579047470195584729L}).toString(), new EventInfo(R.string.ui_reset, R.drawable.rightarrow, 0, 0, 8));
    }

    public static void reconnect() {
        if (mThread != null) {
            log_message(new ObfuscatedString(new long[]{-2901803996459714418L, -3838994879941246856L, -7239189496019609574L}).toString());
            mThread.reconnect(0);
        }
    }

    private void register_connectivity_receiver() {
        this.mConnectivityReceiver = new ConnectivityReceiver(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(new ObfuscatedString(new long[]{-2929026216191562028L, 159608335318057296L, -473975845131537180L, 3748505770423186204L, 5500839931152345217L, -3608573186031532220L}).toString());
        intentFilter.addAction(new ObfuscatedString(new long[]{6438731407036437402L, 8818935853160879952L, -506281284693418068L, 1163731510990110962L, 4417993663270883625L}).toString());
        intentFilter.addAction(new ObfuscatedString(new long[]{-4586339972515819414L, -1504064341443251967L, -588790444732739929L, 1293886240833958421L, 4924956440984612550L}).toString());
        this.mConnectivityReceiver.register();
    }

    private void rename_profile_action(String str, Intent intent) {
        String m3334xd2bcb0cf = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-8679190849644219916L, 5389632123286452405L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
        StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
        m3341xc20437a5.append(new ObfuscatedString(new long[]{-113226329434507645L, 3900309537106537527L, 9155789551585822405L}).toString());
        String stringExtra = intent.getStringExtra(m3341xc20437a5.toString());
        get_profile_list();
        Profile profile = this.profile_list.get_profile_by_name(m3334xd2bcb0cf);
        if (profile == null) {
            return;
        }
        if (profile.is_renameable() && stringExtra != null && stringExtra.length() != 0) {
            File filesDir = getFilesDir();
            String format = String.format(new ObfuscatedString(new long[]{7172161337925393566L, 6648725910296871788L}).toString(), filesDir.getPath(), profile.orig_filename);
            String format2 = String.format(new ObfuscatedString(new long[]{-65116169108059829L, -2276783390326262884L}).toString(), filesDir.getPath(), ProfileFN.encode_profile_fn(stringExtra));
            if (FileUtils.renameFile(format, format2)) {
                refresh_profile_list();
                Profile profile2 = this.profile_list.get_profile_by_name(stringExtra);
                if (profile2 == null) {
                    new ObfuscatedString(new long[]{-4953896357664709890L, -3546201467243187800L}).toString();
                    new ObfuscatedString(new long[]{5716514133501546491L, 1204539937916179917L, -865833690357721560L, -2261655632040498077L, 5271518451768769988L, -4559611030540435956L, -1195967606890288459L}).toString();
                    gen_event(1, new ObfuscatedString(new long[]{-8185607714553810980L, 8854267275676533291L, 8151738946226988414L, -1977822173810763448L}).toString(), m3334xd2bcb0cf);
                    return;
                } else {
                    this.pwds.remove(new ObfuscatedString(new long[]{336810354043181701L, 7269065710627006204L}).toString(), m3334xd2bcb0cf);
                    this.pwds.remove(new ObfuscatedString(new long[]{5126124150369763420L, -9216355634418993038L}).toString(), m3334xd2bcb0cf);
                    gen_event(0, new ObfuscatedString(new long[]{832283791610570460L, -5119164739349668672L, -5329048531501282360L, -8528399876347559715L}).toString(), profile2.get_name(), profile2.get_name());
                    return;
                }
            }
            new ObfuscatedString(new long[]{1157923182994449016L, -3119178502241790075L}).toString();
            String.format(new ObfuscatedString(new long[]{6912830140143489954L, 254516422310200647L, 2942296604778833607L, 7098592564705815591L, -6609044711774479828L, -7641205468101927285L, -7446358301574521048L, 9017816823881792576L, -889731018984184944L}).toString(), format, format2);
            gen_event(1, new ObfuscatedString(new long[]{-5931354490703804995L, -8542985478383419106L, 7558824153085412773L, -6930484650234876890L}).toString(), m3334xd2bcb0cf);
            return;
        }
        new ObfuscatedString(new long[]{-7398885445717048465L, -5800282843574639606L}).toString();
        new ObfuscatedString(new long[]{-5976078889361774963L, 6232046481992225168L, -6200325246814592593L, -7000897093598927555L, 6899823788096269990L, -35854350141031506L, -7952463590264316585L}).toString();
        gen_event(1, new ObfuscatedString(new long[]{4994734498831719779L, 7757651577566076976L, 1231992450889659604L, 7725222412266267952L}).toString(), m3334xd2bcb0cf);
    }

    public static String render_bandwidth(long j, boolean z) {
        int i2;
        ObfuscatedString obfuscatedString;
        ObfuscatedString obfuscatedString2;
        if (z) {
            j *= 8;
        }
        if (z) {
            i2 = 1000;
        } else {
            i2 = 1024;
        }
        if (j < i2) {
            StringBuilder sb = new StringBuilder();
            sb.append(j);
            long[] jArr = {1331085269481338171L, 7629817906567745325L};
            if (z) {
                // fill-array-data instruction
                jArr[0] = -136724087379803856L;
                jArr[1] = 3118093455514691223L;
                obfuscatedString2 = new ObfuscatedString(jArr);
            } else {
                obfuscatedString2 = new ObfuscatedString(jArr);
            }
            sb.append(obfuscatedString2.toString());
            return sb.toString();
        }
        double d = j;
        double d2 = i2;
        int log = (int) (Math.log(d) / Math.log(d2));
        StringBuilder sb2 = new StringBuilder();
        long[] jArr2 = {-1382924982723778172L, 4360150968319792243L};
        if (z) {
            // fill-array-data instruction
            jArr2[0] = 6709747666064584910L;
            jArr2[1] = -5193689521813607202L;
            obfuscatedString = new ObfuscatedString(jArr2);
        } else {
            obfuscatedString = new ObfuscatedString(jArr2);
        }
        sb2.append(obfuscatedString.toString().charAt(log - 1));
        String m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{955080291283943125L}), sb2);
        if (z) {
            return String.format(Locale.getDefault(), new ObfuscatedString(new long[]{4944091858111582903L, 8995291852702466549L, -6792275202425421756L}).toString(), Double.valueOf(d / Math.pow(d2, log)), m3332x9d12c1f4);
        }
        return String.format(Locale.getDefault(), new ObfuscatedString(new long[]{-192871103854888596L, -4972355256531330139L}).toString(), Double.valueOf(d / Math.pow(d2, log)), m3332x9d12c1f4);
    }

    public String resString(int i2) {
        return getResources().getString(i2);
    }

    private void start_connection(Profile profile, String str, String str2, ProxyContext proxyContext, String str3, String str4, String str5, String str6, String str7, String str8, boolean z, String str9, String str10, String str11, String str12) {
        OpenVPNClientThread openVPNClientThread;
        boolean z2;
        String str13;
        int i2;
        String str14;
        String str15;
        String str16;
        char c;
        String obfuscatedString;
        if (this.active) {
            return;
        }
        this.enable_notifications = this.prefs.get_boolean(new ObfuscatedString(new long[]{3720976821089848863L, -3993037692843922490L, 2877865558394666549L, -4030914136352743171L}).toString(), false);
        OpenVPNClientThread openVPNClientThread2 = new OpenVPNClientThread();
        ClientAPI_Config clientAPI_Config = new ClientAPI_Config();
        if (ConfigUtil.getInstance(this).getTunnelType() != 7) {
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
            openVPNClientThread = openVPNClientThread2;
            z2 = true;
            m3341xc20437a5.append(String.format(new ObfuscatedString(new long[]{-2550489846027741798L, 3668106115413047900L, -8488174543148802847L, 6601028990395259435L, 2150960610186402623L, 4590560592047595115L, 311248356328519918L, -7407636389744819997L, -6749361144231580568L, 5491355993945935916L, -4708173481267409083L, 1118583710296800749L}).toString(), new ObfuscatedString(new long[]{7199843655588674261L, 4495025851936023878L, 8040710615846779040L}).toString()));
            str13 = m3341xc20437a5.toString();
        } else {
            openVPNClientThread = openVPNClientThread2;
            z2 = true;
            str13 = str;
        }
        clientAPI_Config.setContent(str13);
        clientAPI_Config.setInfo(z2);
        log_message(clientAPI_Config.getContent());
        if (str3 != null) {
            clientAPI_Config.setServerOverride(str3);
        }
        if (str4 != null) {
            clientAPI_Config.setProtoOverride(str4);
        }
        if (str5 != null) {
            clientAPI_Config.setIpv6(str5);
        }
        if (str6 != null) {
            try {
                i2 = Integer.parseInt(str6);
            } catch (NumberFormatException unused) {
                i2 = 0;
            }
            clientAPI_Config.setConnTimeout(i2);
        }
        if (str12 != null) {
            clientAPI_Config.setCompressionMode(str12);
        }
        if (str9 != null) {
            clientAPI_Config.setPrivateKeyPassword(str9);
        }
        clientAPI_Config.setTunPersist(this.prefs.get_boolean(new ObfuscatedString(new long[]{-7475607396041207447L, 456994366937260357L, 4082277492031803812L}).toString(), false));
        clientAPI_Config.setGoogleDnsFallback(this.prefs.get_boolean(new ObfuscatedString(new long[]{-223675385859279892L, 810294843284200603L, -6918604762098242310L, -5980837042434191443L}).toString(), false));
        clientAPI_Config.setForceAesCbcCiphersuites(this.prefs.get_boolean(new ObfuscatedString(new long[]{2689515732991194333L, -8445417211933840969L, 420612206193962923L, -1020513548062437664L, -4435303605006621414L}).toString(), false));
        clientAPI_Config.setAltProxy(this.prefs.get_boolean(new ObfuscatedString(new long[]{3381135894809026739L, -5598383604209165541L, -1422214418193865259L}).toString(), false));
        new ObfuscatedString(new long[]{3063717941650476654L, -7505821805537460597L, -3351556591056620769L}).toString();
        if (this.prefs.get_boolean(new ObfuscatedString(new long[]{-4901218614483964578L, -1651332416959722155L, 4982990797177003705L, -2114199750654169695L}).toString(), false)) {
            new ObfuscatedString(new long[]{-5698818675100283084L, 5206629790056124369L, 354608840674037632L}).toString();
        }
        String str17 = this.prefs.get_string(new ObfuscatedString(new long[]{-7434191501961936976L, -3412419548376704679L, 5797328406900897342L, 5442553450246720308L}).toString());
        if (str17 != null) {
            clientAPI_Config.setTlsVersionMinOverride(str17);
        }
        if (str2 != null) {
            clientAPI_Config.setGuiVersion(str2);
        }
        if (profile.get_epki()) {
            if (str11 != null) {
                profile.persist_epki_alias(str11);
                str14 = str11;
            } else {
                str14 = profile.get_epki_alias();
            }
            if (str14 != null) {
                if (str14.equals(new ObfuscatedString(new long[]{696653377067743726L, -3507547213729667225L, 6503666624357266553L, -6681292191203004517L}).toString())) {
                    clientAPI_Config.setDisableClientCert(true);
                } else {
                    clientAPI_Config.setExternalPkiAlias(str14);
                }
            }
        } else {
            str14 = str11;
        }
        if (proxyContext != null) {
            proxyContext.client_api_config(clientAPI_Config);
        }
        OpenVPNClientThread openVPNClientThread3 = openVPNClientThread;
        ClientAPI_EvalConfig eval_config = openVPNClientThread3.eval_config(clientAPI_Config);
        if (eval_config.getError()) {
            gen_event(1, new ObfuscatedString(new long[]{-4975682946812764341L, 1424099509608151315L, -8545441332787006065L, -7980777082785753275L}).toString(), eval_config.getMessage());
            return;
        }
        ClientAPI_ProvideCreds clientAPI_ProvideCreds = new ClientAPI_ProvideCreds();
        if (profile.is_dynamic_challenge()) {
            str15 = str10;
            if (str15 != null) {
                clientAPI_ProvideCreds.setResponse(str15);
            }
            clientAPI_ProvideCreds.setDynamicChallengeCookie(profile.dynamic_challenge.cookie);
            profile.reset_dynamic_challenge();
            str16 = str7;
        } else {
            str15 = str10;
            if (eval_config.getAutologin()) {
                str16 = str7;
            } else {
                str16 = str7;
                if (str16 != null && str7.length() == 0) {
                    gen_event(1, new ObfuscatedString(new long[]{-8511098572385175771L, -8536307280907399901L, 4803959253649637224L}).toString(), null);
                    return;
                }
            }
            if (str16 != null) {
                clientAPI_ProvideCreds.setUsername(str16);
            }
            if (str8 != null) {
                clientAPI_ProvideCreds.setPassword(str8);
            }
            if (str15 != null) {
                clientAPI_ProvideCreds.setResponse(str15);
            }
        }
        clientAPI_ProvideCreds.setCachePassword(z);
        clientAPI_ProvideCreds.setReplacePasswordWithSessionID(true);
        ClientAPI_Status provide_creds = openVPNClientThread3.provide_creds(clientAPI_ProvideCreds);
        if (provide_creds.getError()) {
            gen_event(1, new ObfuscatedString(new long[]{7753182438020889697L, -9027452034707852212L, 2453600352356920227L}).toString(), provide_creds.getMessage());
            return;
        }
        String obfuscatedString2 = new ObfuscatedString(new long[]{-7469181324853978606L, 3421117585383989252L, 5833527212687596045L, 1026971030471013579L, -3952773965618047391L, 7052726801978714653L, 1862923710852841204L, -4730342208505684290L, 5704795821972382048L, -4391428794068859867L, 3999906489701354289L, -739657688638076384L, -1935416037379480893L, -6148355419182615102L}).toString();
        String str18 = profile.name;
        if (proxyContext != null) {
            obfuscatedString = proxyContext.name();
            c = 2;
        } else {
            c = 2;
            obfuscatedString = new ObfuscatedString(new long[]{-6465651430309410258L, -5674981295325601239L}).toString();
        }
        Object[] objArr = new Object[10];
        objArr[0] = str18;
        objArr[1] = str16;
        objArr[c] = obfuscatedString;
        objArr[3] = str3;
        objArr[4] = str4;
        objArr[5] = str5;
        objArr[6] = str6;
        objArr[7] = str15;
        objArr[8] = str14;
        objArr[9] = str12;
        new ObfuscatedString(new long[]{-8566874388968836581L, -6975167368609252377L}).toString();
        String.format(obfuscatedString2, objArr);
        this.current_profile = profile;
        set_autostart_profile_name(profile.get_name());
        this.paused = false;
        start_notification_dnstt();
        gen_event(0, new ObfuscatedString(new long[]{160569127175075729L, 696024678742805038L, 3329850332639197296L, 6393069286937125623L}).toString(), null);
        openVPNClientThread3.connect(this);
        mThread = openVPNClientThread3;
        this.thread_started = SystemClock.elapsedRealtime();
        this.cpu_usage = new CPUUsage();
        this.active = true;
    }

    @SuppressLint({"ForegroundServiceType"})
    private void start_notification_dnstt() {
        if (this.mNotifyBuilder == null && this.current_profile != null) {
            String obfuscatedString = new ObfuscatedString(new long[]{2905287708005428412L, -6492387885549649315L}).toString();
            Notification.Builder builder = new Notification.Builder(this);
            this.mNotifyBuilder = builder;
            if (Build.VERSION.SDK_INT >= 26) {
                builder.setChannelId(obfuscatedString);
                createNotificationChannel(this.mNotificationManager, obfuscatedString);
            }
            this.mNotifyBuilder.setContentIntent(get_configure_intent(1)).setSmallIcon(R.drawable.ic_launcher).setContentTitle(getString(R.string.app_name)).setContentText(resString(R.string.notification_initial_content)).setOnlyAlertOnce(true).setOngoing(true);
            this.mNotificationManager.notify(NOTIFICATION_ID, this.mNotifyBuilder.getNotification());
            startForeground(NOTIFICATION_ID, this.mNotifyBuilder.getNotification());
        }
    }

    public static String[] stat_names() {
        int stats_n = ClientAPI_OpenVPNClient.stats_n();
        String[] strArr = new String[stats_n];
        for (int i2 = 0; i2 < stats_n; i2++) {
            strArr[i2] = ClientAPI_OpenVPNClient.stats_name(i2);
        }
        return strArr;
    }

    private void stop_notification() {
        this.mConnectedTime = 0L;
        Timer timer = this.timer;
        if (timer != null) {
            timer.cancel();
        }
        stopForeground(true);
    }

    private void stop_thread() {
        if (this.active) {
            mThread.stop();
            mThread.wait_thread_short();
            new ObfuscatedString(new long[]{-7629933279357914215L, 2263123928225306827L}).toString();
            new ObfuscatedString(new long[]{-5527494701241848299L, 5083507723342303699L, 263168841148979085L, -5430814026719594127L, 3662002317281153343L}).toString();
        }
    }

    private void submit_proxy_creds_action(String str, Intent intent) {
        ProxyContext proxyContext;
        Profile locate_profile = locate_profile(AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-3085043626639384085L, 1725735989143010883L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent));
        if (locate_profile != null && (proxyContext = locate_profile.get_proxy_context(false)) != null) {
            String m3334xd2bcb0cf = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-2665270261292077803L, 5399104289958427608L, 6352030727863611553L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
            String m3334xd2bcb0cf2 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-1331030188676146413L, -6186126549768382451L, 3666808178956563101L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
            String m3334xd2bcb0cf3 = AbstractC0749x8313616e.m3334xd2bcb0cf(new ObfuscatedString(new long[]{-3811430575566608551L, 3504678866663993009L, -5790490676986156232L}), AbstractC0749x8313616e.m3341xc20437a5(str), intent);
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{-4106790126503577873L, -3037621197969408122L, 6125781265567327375L, -6411396738330416694L}).toString());
            Intent submit_proxy_creds = proxyContext.submit_proxy_creds(m3334xd2bcb0cf, m3334xd2bcb0cf2, m3334xd2bcb0cf3, intent.getBooleanExtra(m3341xc20437a5.toString(), false), this.proxy_list);
            if (submit_proxy_creds != null) {
                connect_action(str, submit_proxy_creds, true);
                return;
            }
        }
        gen_event(1, new ObfuscatedString(new long[]{2605899014798688686L, 9032067955338612756L, -3542941981905858877L, 3338653195661025875L}).toString(), null);
    }

    private void unregister_connectivity_receiver() {
        this.mConnectivityReceiver.unregister();
    }

    @SuppressLint({"ForegroundServiceType"})
    private void update_notification_event(EventMsg eventMsg) {
        Notification.Builder builder = this.mNotifyBuilder;
        if (builder != null && eventMsg.priority >= 1) {
            builder.setContentText(resString(eventMsg.res_id));
            this.mNotifyBuilder.setSmallIcon(R.drawable.ic_cloud_on);
            if (resString(eventMsg.res_id).equalsIgnoreCase(new ObfuscatedString(new long[]{-7210073812719304418L, 8975953809502289067L, -5452689399418364400L}).toString())) {
                this.mNotifyBuilder.setContentTitle(mConfigUtil.getServerType());
                long currentTimeMillis = System.currentTimeMillis();
                this.mConnectedTime = currentTimeMillis;
                this.mNotifyBuilder.setWhen(currentTimeMillis);
                if (Build.VERSION.SDK_INT >= 24) {
                    jbNotificationExtras(this.mNotifyBuilder);
                }
                Timer timer = new Timer();
                this.timer = timer;
                timer.schedule(new TimerTask() { // from class: com.tknetwork.tunnel.service.c_05.1
                    final /* synthetic */ EventMsg val$evm;

                    public AnonymousClass1(EventMsg eventMsg2) {
                        r2 = eventMsg2;
                    }

                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        if (!c_05.this.resString(r2.res_id).equalsIgnoreCase(new ObfuscatedString(new long[]{1946071334835237135L, 3188102248107312536L, -225109855457218069L}).toString())) {
                            return;
                        }
                        c_05.mHandler.sendEmptyMessage(99);
                    }
                }, 0L, 1000L);
            } else {
                Timer timer2 = this.timer;
                if (timer2 != null) {
                    timer2.cancel();
                }
                this.mNotifyBuilder.setContentTitle(resString(R.string.app_name));
                this.mNotifyBuilder.setContentText(resString(eventMsg2.res_id));
            }
            this.mNotificationManager.notify(NOTIFICATION_ID, this.mNotifyBuilder.getNotification());
            startForeground(NOTIFICATION_ID, this.mNotifyBuilder.getNotification());
        }
    }

    public void Logtk(String str) {
        TkLogStatus.logInfo(str);
    }

    public void addProfile(String str, String str2) {
        ClientAPI_Config clientAPI_Config = new ClientAPI_Config();
        clientAPI_Config.setContent(str2);
        ClientAPI_EvalConfig eval_config_static = ClientAPI_OpenVPNClient.eval_config_static(clientAPI_Config);
        if (eval_config_static.getError()) {
            gen_event(1, new ObfuscatedString(new long[]{9088221283106249483L, 7199227557868115222L, -6610985365545048417L, -6172957048159429782L}).toString(), String.format(new ObfuscatedString(new long[]{5728761942011551796L, -7999574846114212305L}).toString(), str, eval_config_static.getMessage()));
        }
        Profile profile = new Profile(new ObfuscatedString(new long[]{-5246689062676461251L, 8581223036774184290L}).toString(), str, false, eval_config_static);
        try {
            FileUtils.writeFileAppPrivate(this, profile.get_filename(), str2);
            String str3 = profile.get_name();
            this.pwds.remove(new ObfuscatedString(new long[]{-6100044038547430435L, -896239035811542178L}).toString(), str3);
            this.pwds.remove(new ObfuscatedString(new long[]{-4744156390678322933L, 7042958315554506637L}).toString(), str3);
            refresh_profile_list();
            gen_event(0, new ObfuscatedString(new long[]{-8397328202997708371L, 4990017406043505029L, 2135387063225533894L, -238042094193013770L}).toString(), str3, str3);
        } catch (IOException unused) {
            gen_event(1, new ObfuscatedString(new long[]{3536069541995613250L, 5250240537523722697L, 7346265616476233426L, 467855100861740367L}).toString(), str);
        }
    }

    public void client_attach(EventReceiver eventReceiver) {
        ArrayDeque<EventReceiver> arrayDeque = clients;
        arrayDeque.remove(eventReceiver);
        arrayDeque.addFirst(eventReceiver);
        Object[] objArr = {Integer.valueOf(arrayDeque.size())};
        new ObfuscatedString(new long[]{-1946237560195924228L, -5617446163370870895L}).toString();
        String.format(new ObfuscatedString(new long[]{-3229474349426187107L, -7154874691312561920L, -3336618662908588218L, -9172408637190681692L, 2984118101732245888L}).toString(), objArr);
    }

    public void client_detach(EventReceiver eventReceiver) {
        ArrayDeque<EventReceiver> arrayDeque = clients;
        arrayDeque.remove(eventReceiver);
        Object[] objArr = {Integer.valueOf(arrayDeque.size())};
        new ObfuscatedString(new long[]{-2001539063015762825L, -842967224174456290L}).toString();
        String.format(new ObfuscatedString(new long[]{2318837920396531689L, 7876580344118256766L, -2006833648314227235L, 7327649635233395364L, 3600531956130078843L}).toString(), objArr);
    }

    @Override // net.openvpn.openvpn.OpenVPNClientThread.EventReceiver
    public void done(ClientAPI_Status clientAPI_Status) {
        boolean error = clientAPI_Status.getError();
        String message = clientAPI_Status.getMessage();
        new ObfuscatedString(new long[]{5193189454865406082L, 3928581769125878346L}).toString();
        String.format(new ObfuscatedString(new long[]{-4284915725613573220L, -7025063850301618807L, -5626222747347880920L, -3043208880883466766L, -6789119700827869509L, -3975870287990006211L}).toString(), Boolean.valueOf(error), message);
        log_stats();
        if (error) {
            if (message != null && message.equals(new ObfuscatedString(new long[]{3661367063139644473L, -6377619390448076485L, 2191694493274598058L, 2850135193129370986L}).toString())) {
                gen_event(1, new ObfuscatedString(new long[]{2452728998500732403L, 3225651089489516874L, 6216124209991502931L, 4359765527487128505L}).toString(), null);
            } else {
                String status = clientAPI_Status.getStatus();
                if (status.length() == 0) {
                    status = new ObfuscatedString(new long[]{7450509203971159107L, -1982581769532483320L, 3718388936909366626L, -9072335570135883766L}).toString();
                }
                gen_event(1, status, message);
            }
        }
        gen_event(0, new ObfuscatedString(new long[]{-2070692351753936679L, -4323858219146993708L, 9106720050123742805L, 7655215475424524446L}).toString(), null);
        this.active = false;
    }

    @Override // net.openvpn.openvpn.OpenVPNClientThread.EventReceiver
    public void event(ClientAPI_Event clientAPI_Event) {
        OpenVPNClientThread openVPNClientThread;
        EventMsg eventMsg = new EventMsg();
        if (clientAPI_Event.getError()) {
            eventMsg.flags |= 1;
        }
        eventMsg.name = clientAPI_Event.getName();
        eventMsg.info = clientAPI_Event.getInfo();
        EventInfo eventInfo = (EventInfo) this.event_info.get(eventMsg.name);
        if (eventInfo != null) {
            eventMsg.progress = eventInfo.progress;
            eventMsg.priority = eventInfo.priority;
            int i2 = eventInfo.res_id;
            eventMsg.res_id = i2;
            eventMsg.icon_res_id = eventInfo.icon_res_id;
            eventMsg.flags = eventInfo.flags | eventMsg.flags;
            if (i2 == R.string.connected && (openVPNClientThread = mThread) != null) {
                eventMsg.conn_info = openVPNClientThread.connection_info();
            }
        } else {
            eventMsg.res_id = R.string.unknown;
        }
        Handler handler = mHandler;
        handler.sendMessage(handler.obtainMessage(1, eventMsg));
    }

    @Override // net.openvpn.openvpn.OpenVPNClientThread.EventReceiver
    public void external_pki_cert_request(ClientAPI_ExternalPKICertRequest clientAPI_ExternalPKICertRequest) {
        try {
            X509Certificate[] certificateChain = KeyChain.getCertificateChain(this, clientAPI_ExternalPKICertRequest.getAlias());
            if (certificateChain == null) {
                clientAPI_ExternalPKICertRequest.setError(true);
                clientAPI_ExternalPKICertRequest.setInvalidAlias(true);
                return;
            }
            if (certificateChain.length >= 1) {
                clientAPI_ExternalPKICertRequest.setCert(cert_format_pem(certificateChain[0]));
                if (certificateChain.length >= 2) {
                    StringBuilder sb = new StringBuilder();
                    for (int i2 = 1; i2 < certificateChain.length; i2++) {
                        sb.append(cert_format_pem(certificateChain[i2]));
                    }
                    clientAPI_ExternalPKICertRequest.setSupportingChain(sb.toString());
                    return;
                }
                return;
            }
            clientAPI_ExternalPKICertRequest.setError(true);
            clientAPI_ExternalPKICertRequest.setInvalidAlias(true);
            clientAPI_ExternalPKICertRequest.setErrorText(resString(R.string.epki_missing_cert));
        } catch (Exception e) {
            new ObfuscatedString(new long[]{-4409734001062490958L, -5233478235826821086L}).toString();
            new ObfuscatedString(new long[]{-6237481315146089790L, 5398819762586816911L, -6448836506771549612L, 8502015943352842659L, 8100985839013111697L, -8642742131968410752L}).toString();
            clientAPI_ExternalPKICertRequest.setError(true);
            clientAPI_ExternalPKICertRequest.setInvalidAlias(true);
            clientAPI_ExternalPKICertRequest.setErrorText(e.toString());
        }
    }

    @Override // net.openvpn.openvpn.OpenVPNClientThread.EventReceiver
    public void external_pki_sign_request(ClientAPI_ExternalPKISignRequest clientAPI_ExternalPKISignRequest) {
        byte[] rsaSign;
        try {
            String obfuscatedString = new ObfuscatedString(new long[]{-6149857118621459770L, 355444423341077540L, 5795901856281211261L, -8757631229038526491L, -1518161020783544402L, 4603739857153876565L, -5766090752257401765L}).toString();
            byte[] decode = Base64.decode(clientAPI_ExternalPKISignRequest.getData(), 0);
            if (this.jellyBeanHack == null) {
                new ObfuscatedString(new long[]{444477406924707226L, 1369304371078571287L}).toString();
                new ObfuscatedString(new long[]{-1211549610041900966L, -562929174630660620L, 4987293665836175419L, 6531996101656082369L}).toString();
                PrivateKey privateKey = KeyChain.getPrivateKey(this, clientAPI_ExternalPKISignRequest.getAlias());
                if (privateKey != null) {
                    Cipher cipher = Cipher.getInstance(new ObfuscatedString(new long[]{-3273962698650696964L, 6466336414298434203L, -5862689091636142644L, -6996400061831389910L}).toString());
                    cipher.init(1, privateKey);
                    rsaSign = cipher.doFinal(decode);
                } else {
                    clientAPI_ExternalPKISignRequest.setError(true);
                    clientAPI_ExternalPKISignRequest.setInvalidAlias(true);
                    rsaSign = null;
                }
            } else {
                new ObfuscatedString(new long[]{-2721339362193998253L, -3809938273880164634L}).toString();
                new ObfuscatedString(new long[]{-8869716884050211421L, -5997174092702141758L, 8256566182822089492L, -2761591844296143439L}).toString();
                if (this.jellyBeanHack.enabled()) {
                    PrivateKey privateKey2 = this.jellyBeanHack.getPrivateKey(this, clientAPI_ExternalPKISignRequest.getAlias());
                    if (privateKey2 != null) {
                        rsaSign = this.jellyBeanHack.rsaSign(privateKey2, decode);
                    } else {
                        clientAPI_ExternalPKISignRequest.setError(true);
                        clientAPI_ExternalPKISignRequest.setInvalidAlias(true);
                        rsaSign = null;
                    }
                } else {
                    String obfuscatedString2 = new ObfuscatedString(new long[]{9152909551620791298L, -7774544404066516190L, 6689808891472385624L, 3209406153193401942L, -2023932027068933389L}).toString();
                    new ObfuscatedString(new long[]{-7697414545247476812L, 6639899414130367647L}).toString();
                    String.format(obfuscatedString, obfuscatedString2);
                    clientAPI_ExternalPKISignRequest.setError(true);
                    clientAPI_ExternalPKISignRequest.setInvalidAlias(true);
                    clientAPI_ExternalPKISignRequest.setErrorText(obfuscatedString2);
                    return;
                }
            }
            if (rsaSign != null) {
                clientAPI_ExternalPKISignRequest.setSig(Base64.encodeToString(rsaSign, 2));
            }
        } catch (Exception e) {
            new ObfuscatedString(new long[]{5401901586081752393L, 4195792252016931482L}).toString();
            new ObfuscatedString(new long[]{1823957380153389562L, -689710364310117510L, 7208407941138054046L, -3040619704660583035L, 2907462865918883290L, 2308956109004252668L}).toString();
            clientAPI_ExternalPKISignRequest.setError(true);
            clientAPI_ExternalPKISignRequest.setInvalidAlias(true);
            clientAPI_ExternalPKISignRequest.setErrorText(e.toString());
        }
    }

    public void gen_proxy_context_expired_event() {
        gen_event(0, new ObfuscatedString(new long[]{6618836261992349509L, -394367618416109643L, -807084188115960022L, -7751566456194912241L}).toString(), null);
    }

    public void gen_ui_reset_event(boolean z, EventReceiver eventReceiver) {
        int i2;
        if (z) {
            i2 = 16;
        } else {
            i2 = 0;
        }
        gen_event(i2, new ObfuscatedString(new long[]{629583017476398427L, -3234767009779415227L}).toString(), null, null, eventReceiver);
    }

    public ConnectionStats get_connection_stats() {
        ConnectionStats connectionStats = new ConnectionStats();
        ClientAPI_TransportStats transport_stats = mThread.transport_stats();
        connectionStats.last_packet_received = -1;
        if (this.active) {
            int elapsedRealtime = ((int) (SystemClock.elapsedRealtime() - this.thread_started)) / 1000;
            connectionStats.duration = elapsedRealtime;
            if (elapsedRealtime < 0) {
                connectionStats.duration = 0;
            }
            connectionStats.bytes_in = transport_stats.getBytesIn();
            connectionStats.bytes_out = transport_stats.getBytesOut();
            int lastPacketReceived = transport_stats.getLastPacketReceived();
            if (lastPacketReceived >= 0) {
                connectionStats.last_packet_received = lastPacketReceived >> 10;
            }
            TkLogStatus.updateByteCount(transport_stats.getBytesIn(), transport_stats.getBytesOut());
        } else {
            connectionStats.duration = 0;
            connectionStats.bytes_in = 0L;
            connectionStats.bytes_out = 0L;
        }
        return connectionStats;
    }

    public Profile get_current_profile() {
        Profile profile = this.current_profile;
        if (profile != null) {
            return profile;
        }
        ProfileList profileList = get_profile_list();
        if (profileList.size() >= 1) {
            return profileList.get(0);
        }
        return null;
    }

    public EventMsg get_last_event() {
        EventMsg eventMsg = this.last_event;
        if (eventMsg != null && !eventMsg.is_expired()) {
            return this.last_event;
        }
        return null;
    }

    public EventMsg get_last_event_prof_manage() {
        EventMsg eventMsg = this.last_event_prof_manage;
        if (eventMsg != null && !eventMsg.is_expired()) {
            return this.last_event_prof_manage;
        }
        return null;
    }

    public ProfileList get_profile_list() {
        if (this.profile_list == null) {
            refresh_profile_list();
        }
        return this.profile_list;
    }

    public long get_tunnel_bytes_per_cpu_second() {
        CPUUsage cPUUsage = this.cpu_usage;
        if (cPUUsage != null) {
            double usage = cPUUsage.usage();
            if (usage > 0.0d) {
                ClientAPI_InterfaceStats tun_stats = mThread.tun_stats();
                return (long) ((tun_stats.getBytesOut() + tun_stats.getBytesIn()) / usage);
            }
            return 0L;
        }
        return 0L;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        ProfileList profileList;
        int i2;
        EventMsg eventMsg = get_last_event();
        int i3 = message.what;
        if (i3 != 1) {
            if (i3 != 2) {
                if (i3 != 99) {
                    new ObfuscatedString(new long[]{-33141082637505861L, -7673337687955766940L}).toString();
                    new ObfuscatedString(new long[]{8153996376416718058L, 2403664972514403596L, -6742098248534994128L, -7933096652340106180L}).toString();
                }
            } else {
                LogMsg logMsg = (LogMsg) message.obj;
                new ObfuscatedString(new long[]{4643901359271544400L, -2845524410312512837L}).toString();
                String.format(new ObfuscatedString(new long[]{7568976037227597900L, -3732998748109202035L}).toString(), logMsg.line);
                log_message(logMsg);
            }
        } else {
            EventMsg eventMsg2 = (EventMsg) message.obj;
            String str = null;
            switch (eventMsg2.res_id) {
                case R.string.auth_failed /* 2131951666 */:
                    Profile profile = this.current_profile;
                    if (profile != null) {
                        profile.get_name();
                        break;
                    }
                    break;
                case R.string.connected /* 2131951742 */:
                    Profile profile2 = this.current_profile;
                    if (profile2 != null) {
                        profile2.reset_proxy_context();
                        break;
                    }
                    break;
                case R.string.core_thread_inactive /* 2131951759 */:
                    CPUUsage cPUUsage = this.cpu_usage;
                    if (cPUUsage != null) {
                        cPUUsage.stop();
                    }
                    stop_notification();
                    if (!this.shutdown_pending) {
                        set_autostart_profile_name(null);
                        break;
                    }
                    break;
                case R.string.disconnected /* 2131951774 */:
                    TkLogStatus.updateStateString(new ObfuscatedString(new long[]{4687925821386772336L, 6000849350888647652L, -4322121515742974809L}).toString(), new ObfuscatedString(new long[]{234184249981200261L, -2946922177396418347L, 5935309566903466499L}).toString());
                    if (eventMsg != null) {
                        if ((eventMsg.flags & 1) != 0) {
                            eventMsg2.priority = 0;
                        }
                        Profile profile3 = this.current_profile;
                        if (profile3 != null && (i2 = eventMsg.res_id) != R.string.proxy_need_creds && i2 != R.string.dynamic_challenge) {
                            profile3.reset_proxy_context();
                            break;
                        }
                    }
                    break;
                case R.string.dynamic_challenge /* 2131951777 */:
                    if (this.current_profile != null) {
                        ClientAPI_DynamicChallenge clientAPI_DynamicChallenge = new ClientAPI_DynamicChallenge();
                        if (ClientAPI_OpenVPNClient.parse_dynamic_challenge(eventMsg2.info, clientAPI_DynamicChallenge)) {
                            DynamicChallenge dynamicChallenge = new DynamicChallenge(0);
                            dynamicChallenge.expires = SystemClock.elapsedRealtime() + 60000;
                            dynamicChallenge.cookie = eventMsg2.info;
                            dynamicChallenge.challenge.challenge = clientAPI_DynamicChallenge.getChallenge();
                            dynamicChallenge.challenge.echo = clientAPI_DynamicChallenge.getEcho();
                            dynamicChallenge.challenge.response_required = clientAPI_DynamicChallenge.getResponseRequired();
                            this.current_profile.dynamic_challenge = dynamicChallenge;
                            eventMsg2.info = new ObfuscatedString(new long[]{-213197187711623791L}).toString();
                            break;
                        }
                    }
                    break;
                case R.string.pause /* 2131952039 */:
                    this.paused = true;
                    break;
                case R.string.pem_password_fail /* 2131952043 */:
                    eventMsg2.info = new ObfuscatedString(new long[]{5712192045659647815L}).toString();
                    Profile profile4 = this.current_profile;
                    if (profile4 != null) {
                        profile4.get_name();
                        break;
                    }
                    break;
            }
            if (eventMsg2.res_id == R.string.epki_invalid_alias && (profileList = this.profile_list) != null) {
                profileList.invalidate_epki_alias(eventMsg2.info);
            }
            if (eventMsg2.res_id == R.string.connected) {
                TkLogStatus.updateStateString(new ObfuscatedString(new long[]{7221389863268751225L, -7347594410662734141L, 3075287012164205559L}).toString(), new ObfuscatedString(new long[]{7941426188135712723L, 6524799057208194782L, 7722847760426193686L, 4653603112322450302L}).toString());
            }
            int i4 = eventMsg2.res_id;
            if (i4 == R.string.connected && (eventMsg == null || eventMsg.res_id != R.string.connected)) {
                eventMsg2.transition = EventMsg.Transition.TO_CONNECTED;
            } else if (i4 != R.string.connected && eventMsg != null && eventMsg.res_id == R.string.connected) {
                eventMsg2.transition = EventMsg.Transition.TO_DISCONNECTED;
            }
            if ((4 & eventMsg2.flags) != 0) {
                this.last_event_prof_manage = eventMsg2;
            } else if (eventMsg2.priority >= 2) {
                this.last_event = eventMsg2;
            }
            if (i4 != R.string.ui_reset) {
                str = eventMsg2.toString();
            }
            if (str != null) {
                new ObfuscatedString(new long[]{-4355642490982228274L, 4443199347710224621L}).toString();
            }
            if (str != null) {
                log_message(str);
            }
            if (eventMsg2.res_id == R.string.core_thread_inactive) {
                log_message(String.format(new ObfuscatedString(new long[]{5345117793410649748L, 6818953537897081046L, -2871707214049287227L, -1641016702047960615L, -7975274783101132441L}).toString(), Long.valueOf(get_tunnel_bytes_per_cpu_second())));
            }
            update_notification_event(eventMsg2);
            Iterator<EventReceiver> it = clients.iterator();
            while (it.hasNext()) {
                EventReceiver next = it.next();
                if ((eventMsg2.flags & 16) == 0 || next != eventMsg2.sender) {
                    next.event(eventMsg2);
                }
            }
        }
        return true;
    }

    public boolean is_active() {
        return this.active;
    }

    public void jellyBeanHackPurge() {
        JellyBeanHack jellyBeanHack = this.jellyBeanHack;
        if (jellyBeanHack != null) {
            jellyBeanHack.resetPrivateKey();
        }
    }

    @Override // net.openvpn.openvpn.OpenVPNClientThread.EventReceiver
    public void log(ClientAPI_LogInfo clientAPI_LogInfo) {
        LogMsg logMsg = new LogMsg();
        logMsg.line = clientAPI_LogInfo.getText();
        Handler handler = mHandler;
        handler.sendMessage(handler.obtainMessage(2, logMsg));
    }

    public MergedProfile merge_parse_profile(String str, String str2) {
        if (str != null && str2 != null) {
            ClientAPI_MergeConfig merge_config_string_static = ClientAPI_OpenVPNClient.merge_config_string_static(str2);
            String str3 = new ObfuscatedString(new long[]{-2814323069293841395L, 630678465224151040L}).toString() + merge_config_string_static.getStatus();
            if (str3.equals(new ObfuscatedString(new long[]{-4306257636075666913L, -705763735770762396L, -5547713968562979953L, 6309716742100475216L}).toString())) {
                String profileContent = merge_config_string_static.getProfileContent();
                ClientAPI_Config clientAPI_Config = new ClientAPI_Config();
                clientAPI_Config.setContent(profileContent);
                MergedProfile mergedProfile = new MergedProfile(this, new ObfuscatedString(new long[]{3209597927431014806L, 7200867823345642102L}).toString(), str, ClientAPI_OpenVPNClient.eval_config_static(clientAPI_Config));
                mergedProfile.profile_content = profileContent;
                return mergedProfile;
            }
            ClientAPI_EvalConfig clientAPI_EvalConfig = new ClientAPI_EvalConfig();
            EventInfo eventInfo = (EventInfo) this.event_info.get(str3);
            if (eventInfo != null) {
                str3 = resString(eventInfo.res_id);
            }
            clientAPI_EvalConfig.setError(true);
            clientAPI_EvalConfig.setMessage(str3 + new ObfuscatedString(new long[]{5712532059294189343L, 5284368640992963976L}).toString() + merge_config_string_static.getErrorText());
            return new MergedProfile(this, new ObfuscatedString(new long[]{-2255451709629796362L, 734353876531274797L}).toString(), str, clientAPI_EvalConfig);
        }
        return null;
    }

    public void network_pause() {
        if (this.active) {
            this.paused = true;
            mThread.pause(new ObfuscatedString(new long[]{-9043743170593674948L}).toString());
        }
    }

    public void network_reconnect(int i2) {
        if (this.active) {
            mThread.reconnect(i2);
        }
    }

    public void network_resume() {
        if (this.active) {
            this.paused = false;
            mThread.resume();
        }
    }

    @Override // android.net.VpnService, android.app.Service
    public IBinder onBind(Intent intent) {
        if (intent != null && intent.getAction().equals(new ObfuscatedString(new long[]{3276439067961283791L, -7734459487734429282L, -7190232821195098049L, 592828283498712584L}).toString())) {
            new ObfuscatedString(new long[]{7215836792816332677L, -4396024370265045168L}).toString();
            String.format(new ObfuscatedString(new long[]{4562834582672303858L, 2725438329545658343L, 646154938210589553L, 4995377162241469282L}).toString(), intent);
            return this.mBinder;
        }
        new ObfuscatedString(new long[]{2864193516725235143L, -2928776937763424582L}).toString();
        String.format(new ObfuscatedString(new long[]{-8085684737452965896L, -6400512098155875198L, -6502155645083100748L, -5848970192454328006L, -3480308458972416628L}).toString(), intent);
        return super.onBind(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        new ObfuscatedString(new long[]{-9115434076043278885L, -5795731464487494140L}).toString();
        new ObfuscatedString(new long[]{-1474579436047056330L, 137738225956427550L, 409448298491326983L, 2922101619236054089L, 4189328619188781017L}).toString();
        crypto_self_test();
        mHandler = new Handler(this);
        this.mNotificationManager = (NotificationManager) getSystemService(new ObfuscatedString(new long[]{3713954158007640041L, -6691176339779450336L, -7373724156227448702L}).toString());
        populate_event_info_map();
        register_connectivity_receiver();
        this.prefs = new PrefUtil(PreferenceManager.getDefaultSharedPreferences(this));
        this.pwds = new PasswordUtil(PreferenceManager.getDefaultSharedPreferences(this));
        this.jellyBeanHack = JellyBeanHack.newJellyBeanHack();
        ProxyList proxyList = new ProxyList(resString(R.string.proxy_none));
        this.proxy_list = proxyList;
        proxyList.set_backing_file(this, new ObfuscatedString(new long[]{-6990973884523008036L, -8202074377021838546L, 8028224935610211089L}).toString());
        this.proxy_list.load();
    }

    @Override // android.app.Service
    public void onDestroy() {
        new ObfuscatedString(new long[]{7148717932310346410L, 3277230040073193314L}).toString();
        new ObfuscatedString(new long[]{1792482259679879991L, 3628025180201975728L, -6005544594806486395L, -1208518477906218348L}).toString();
        this.shutdown_pending = true;
        stop_thread();
        unregister_connectivity_receiver();
        super.onDestroy();
    }

    @Override // android.net.VpnService
    public void onRevoke() {
        new ObfuscatedString(new long[]{6800587517141178056L, 8915622387269604648L}).toString();
        new ObfuscatedString(new long[]{4478842919947338524L, -5698232776166491551L, 5007004978509676134L, 3055302111983233052L}).toString();
        stop_thread();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x008f, code lost:
    
        if (r7.equals(new com.panda912.muddy.ObfuscatedString(new long[]{-3951409460934503773L, 8429365203682697452L, 1894363039893501980L, -7729201084075170279L, 6213683182339695098L, -4719146145200196876L}).toString()) != false) goto L79;
     */
    @Override // android.app.Service
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int onStartCommand(Intent intent, int i2, int i3) {
        char c = 3;
        if (intent != null) {
            this.bundle = intent.getExtras();
            String obfuscatedString = new ObfuscatedString(new long[]{-8474489075159136094L, 9096190385960374659L, 8907598258542106103L, 8131430866484968028L}).toString();
            String action = intent.getAction();
            new ObfuscatedString(new long[]{-1347742288981257751L, -3572022506363105943L}).toString();
            String.format(new ObfuscatedString(new long[]{6320298876561685534L, 1982014453009162272L, 1383608438126451618L, 8454463041029495589L, -6599499360074492352L}).toString(), action);
            if (action != null) {
                switch (action.hashCode()) {
                    case -2125565839:
                        if (action.equals(new ObfuscatedString(new long[]{1168515684845938393L, 8629899144607336177L, -3382679489262303865L, 1822962011279818L, 774060744020792557L}).toString())) {
                            c = 0;
                            break;
                        }
                        c = 65535;
                        break;
                    case -1238903442:
                        if (action.equals(new ObfuscatedString(new long[]{6570810841447464271L, -8002136546216076920L, 2529122413878505160L, 465937120275136723L, 6343421018217811460L, -5123209295987261356L}).toString())) {
                            c = 5;
                            break;
                        }
                        c = 65535;
                        break;
                    case -722934891:
                        if (action.equals(new ObfuscatedString(new long[]{-9150299117968610689L, 7572483946214937641L, 4418353630037802380L, -818188548740165573L, -2397322128101252100L}).toString())) {
                            c = 2;
                            break;
                        }
                        c = 65535;
                        break;
                    case 504841217:
                        if (action.equals(new ObfuscatedString(new long[]{8348182451352327887L, -8604168510033405121L, 5803950811630945415L, -1135354569672921486L, 286016518979873040L, -9082192359256349120L}).toString())) {
                            c = 6;
                            break;
                        }
                        c = 65535;
                        break;
                    case 940313238:
                        if (action.equals(new ObfuscatedString(new long[]{-612315389841462311L, 3222236358521368662L, 5953200893628145079L, -1603506718655482036L, -8923352487466283662L, 748111856857231178L, -5614066515035566688L, 7853204464867069825L}).toString())) {
                            c = 4;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1253714280:
                        break;
                    case 1274741758:
                        if (action.equals(new ObfuscatedString(new long[]{-6253825931476505408L, -8660272716848857408L, 2928007404732258265L}).toString())) {
                            c = 7;
                            break;
                        }
                        c = 65535;
                        break;
                    case 1763223165:
                        if (action.equals(new ObfuscatedString(new long[]{-7468844779546227607L, 3216069249397557458L, -634296383690466074L, 3283724773742176112L, -3229767114200045934L, 5983023516692849394L, -5661616609772072244L}).toString())) {
                            c = 1;
                            break;
                        }
                        c = 65535;
                        break;
                    default:
                        c = 65535;
                        break;
                }
                switch (c) {
                    case 0:
                        VPNUtil.setVPNProtectListener(this);
                        VPNUtil.setVPNService(this);
                        mConfigUtil = ConfigUtil.getInstance(this);
                        connect_action(obfuscatedString, intent, false);
                        break;
                    case 1:
                        submit_proxy_creds_action(obfuscatedString, intent);
                        break;
                    case 2:
                        disconnect_action(obfuscatedString, intent);
                        break;
                    case 3:
                        import_profile_action(obfuscatedString, intent);
                        break;
                    case 4:
                        import_profile_via_path_action(obfuscatedString, intent);
                        break;
                    case 5:
                        delete_profile_action(obfuscatedString, intent);
                        break;
                    case 6:
                        rename_profile_action(obfuscatedString, intent);
                        break;
                    case 7:
                        delete_profiles();
                        break;
                }
            }
        }
        return 2;
    }

    @Override // net.openvpn.openvpn.OpenVPNClientThread.EventReceiver
    public boolean pause_on_connection_timeout() {
        new ObfuscatedString(new long[]{-522319107526407013L, 4292372888720899513L}).toString();
        String.format(new ObfuscatedString(new long[]{7393243388681519010L, 8448827735686254083L, -2608304142760370704L, 2691004018638694382L, 4943980296487555342L}).toString(), Boolean.FALSE);
        return false;
    }

    @Override // com.tknetwork.tunnel.utils.VPNUtil.VPNProtectListener
    public boolean protectSocket(Socket socket) {
        return protect(socket);
    }

    public String read_file(String str, String str2) {
        if (str.equals(new ObfuscatedString(new long[]{4572004482800281614L, 3715844798618968590L}).toString())) {
            return FileUtils.readAsset(this, str2);
        }
        if (str.equals(new ObfuscatedString(new long[]{2605733008480122557L, 4178698949893956835L}).toString())) {
            return FileUtils.readFileAppPrivate(this, str2);
        }
        throw new InternalError();
    }

    public void refresh_profile_list() {
        ProfileList profileList = new ProfileList();
        try {
            profileList.load_profiles(new ObfuscatedString(new long[]{1360528127546343352L, 6381394952530703982L}).toString());
            profileList.load_profiles(new ObfuscatedString(new long[]{2883794651907751203L, 5600208208753523702L}).toString());
            profileList.sort();
        } catch (IOException unused) {
        }
        new ObfuscatedString(new long[]{-5766937723705805314L, -3115203746246676904L}).toString();
        new ObfuscatedString(new long[]{-7963678379199324658L, -6547263232723449441L, 3508335693462741848L, -4241457433153152346L}).toString();
        Iterator<Profile> it = profileList.iterator();
        while (it.hasNext()) {
            Object[] objArr = {it.next().toString()};
            new ObfuscatedString(new long[]{6388569244863206842L, 706446880413941846L}).toString();
            String.format(new ObfuscatedString(new long[]{8948085277895741544L, -7795257695339812225L}).toString(), objArr);
        }
        this.profile_list = profileList;
    }

    public void set_autostart_profile_name(String str) {
        if (str != null) {
            this.prefs.set_string(new ObfuscatedString(new long[]{-1410481108987718861L, 2080059097978615829L, -8565727613444998479L, -107930043651648728L}).toString(), str);
        } else {
            this.prefs.delete_key(new ObfuscatedString(new long[]{-4246200153164679386L, -8711094608277792956L, -4632475900887515988L, -5959901141101275934L}).toString());
        }
    }

    @Override // net.openvpn.openvpn.OpenVPNClientThread.EventReceiver
    public boolean socket_protect(int i2) {
        boolean protect = protect(i2);
        new ObfuscatedString(new long[]{-3174094635827150099L, 7003854133376367850L}).toString();
        String.format(new ObfuscatedString(new long[]{3366855396085844636L, -7493211422735232583L, -6590820314545639872L, 3920539423899829457L, -5193583644469172017L, 28628632635293547L, 3346829761537526810L}).toString(), Integer.valueOf(i2), Boolean.valueOf(protect));
        return protect;
    }

    public ClientAPI_LLVector stat_values_full() {
        OpenVPNClientThread openVPNClientThread = mThread;
        if (openVPNClientThread != null) {
            return openVPNClientThread.stats_bundle();
        }
        return null;
    }

    @Override // net.openvpn.openvpn.OpenVPNClientThread.EventReceiver
    public OpenVPNClientThread.TunBuilder tun_builder_new() {
        return new TunBuilder(this, 0);
    }

    public OpenVPNClientThread.TunBuilder tun_builder_new1() {
        TunBuilder tunBuilder = new TunBuilder(this, 0);
        Bundle bundle = this.bundle;
        if (bundle != null) {
            boolean z = bundle.getBoolean(new ObfuscatedString(new long[]{9150470653804780511L, -4319810584685252536L, 8081195401211959454L, 5138476458070037485L}).toString());
            for (String str : this.bundle.getStringArray(new ObfuscatedString(new long[]{-3509950952686687894L, 5847221636703220391L, 2601078602746747709L}).toString())) {
                if (z) {
                    try {
                        tunBuilder.addAllowedApplication(str);
                    } catch (PackageManager.NameNotFoundException unused) {
                    }
                } else {
                    tunBuilder.addDisallowedApplication(str);
                }
            }
        }
        return tunBuilder;
    }

    private void gen_event(int i2, String str, String str2, String str3) {
        gen_event(i2, str, str2, str3, null);
    }

    private void gen_event(int i2, String str, String str2, String str3, EventReceiver eventReceiver) {
        EventInfo eventInfo = (EventInfo) this.event_info.get(str);
        EventMsg eventMsg = new EventMsg();
        int i3 = i2 | 2;
        eventMsg.flags = i3;
        if (eventInfo != null) {
            eventMsg.progress = eventInfo.progress;
            eventMsg.priority = eventInfo.priority;
            eventMsg.res_id = eventInfo.res_id;
            eventMsg.icon_res_id = eventInfo.icon_res_id;
            eventMsg.sender = eventReceiver;
            eventMsg.flags = i3 | eventInfo.flags;
        } else {
            eventMsg.res_id = R.string.unknown;
        }
        eventMsg.name = str;
        if (str2 != null) {
            eventMsg.info = str2;
        } else {
            eventMsg.info = new ObfuscatedString(new long[]{8695772296370425294L}).toString();
        }
        if ((eventMsg.flags & 4) != 0) {
            eventMsg.expires = SystemClock.elapsedRealtime() + 60000;
        }
        eventMsg.profile_override = str3;
        Handler handler = mHandler;
        handler.sendMessage(handler.obtainMessage(1, eventMsg));
    }

    private static void log_message(LogMsg logMsg) {
        String[] strArr;
        String str;
        String obfuscatedString = new ObfuscatedString(new long[]{-7054786412071313134L, -5681684987713682577L, -8767219556451628140L}).toString();
        String obfuscatedString2 = new ObfuscatedString(new long[]{-5850250038477166452L, 3723425509055530325L, 4950291133942281182L}).toString();
        String obfuscatedString3 = new ObfuscatedString(new long[]{-1929241728615807412L, -5955398418513156932L, 3968469718975638332L}).toString();
        String obfuscatedString4 = new ObfuscatedString(new long[]{199471431790761562L, -2627450162432125812L, -6245381258552222906L}).toString();
        String obfuscatedString5 = new ObfuscatedString(new long[]{149365251542511559L, 776380122397681870L, 5812516716571127292L}).toString();
        String obfuscatedString6 = new ObfuscatedString(new long[]{9083293228610028169L, 8047874931337175153L}).toString();
        String obfuscatedString7 = new ObfuscatedString(new long[]{-8461889099837890276L, 8089335092297051760L, 8633271580843897504L}).toString();
        String obfuscatedString8 = new ObfuscatedString(new long[]{-2928321646065453015L, -3299215666914625825L, -4040223938332807049L}).toString();
        String obfuscatedString9 = new ObfuscatedString(new long[]{-7971115147014524720L, -6464067853308636978L, -8265503654785940796L}).toString();
        String obfuscatedString10 = new ObfuscatedString(new long[]{5297439966197330323L, -7981497952143154573L}).toString();
        String obfuscatedString11 = new ObfuscatedString(new long[]{4192454440592724408L, 7376609894488431284L}).toString();
        String obfuscatedString12 = new ObfuscatedString(new long[]{-819305419311647578L, -7313474299441572414L}).toString();
        if (logMsg.line.contains(new ObfuscatedString(new long[]{-1898306573009987699L, 3947554388973019178L}).toString())) {
            String[] split = logMsg.line.split(new ObfuscatedString(new long[]{7439737153688650515L, -4644114466148340923L}).toString());
            int length = split.length;
            int i2 = 0;
            while (i2 < length) {
                String str2 = split[i2];
                if (str2.contains(obfuscatedString)) {
                    addLogInfo(str2);
                } else if (str2.contains(obfuscatedString2)) {
                    addLogInfo(str2);
                } else if (str2.contains(obfuscatedString3)) {
                    addLogInfo(str2);
                } else if (str2.contains(obfuscatedString4)) {
                    addLogInfo(str2);
                } else if (str2.contains(obfuscatedString5)) {
                    addLogInfo(str2);
                } else if (str2.contains(obfuscatedString6)) {
                    addLogInfo(str2);
                } else if (str2.contains(obfuscatedString7)) {
                    addLogInfo(str2);
                } else if (str2.contains(obfuscatedString8)) {
                    addLogInfo(str2);
                } else if (str2.contains(obfuscatedString9)) {
                    addLogInfo(str2);
                } else if (str2.contains(obfuscatedString10)) {
                    addLogInfo(str2);
                } else if (str2.contains(obfuscatedString11)) {
                    addLogInfo(str2);
                } else {
                    strArr = split;
                    str = obfuscatedString12;
                    if (str2.contains(str)) {
                        addLogInfo(str2);
                    }
                    i2++;
                    obfuscatedString12 = str;
                    split = strArr;
                }
                strArr = split;
                str = obfuscatedString12;
                i2++;
                obfuscatedString12 = str;
                split = strArr;
            }
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(new ObfuscatedString(new long[]{8765084681920668108L, -6810697464386909466L, -4490580276285752525L}).toString(), Locale.getDefault());
            String obfuscatedString13 = new ObfuscatedString(new long[]{-28538389016705248L, 6347776600216506187L}).toString();
            if (logMsg.line.isEmpty()) {
                return;
            }
            logMsg.line = String.format(obfuscatedString13, simpleDateFormat.format(new Date()), logMsg.line);
            log_deque.addLast(logMsg);
            while (true) {
                ArrayDeque<LogMsg> arrayDeque = log_deque;
                if (arrayDeque.size() <= 250) {
                    break;
                } else {
                    arrayDeque.removeFirst();
                }
            }
            Iterator<EventReceiver> it = clients.iterator();
            while (it.hasNext()) {
                it.next().log(logMsg);
            }
        }
    }
}
