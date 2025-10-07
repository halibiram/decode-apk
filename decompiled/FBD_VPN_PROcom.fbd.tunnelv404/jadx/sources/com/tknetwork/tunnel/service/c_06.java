package com.tknetwork.tunnel.service;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.preference.PreferenceManager;
import android.view.View;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.app.NotificationCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import app.tunnel.ssh2.tunnel.SSHThread;
import app.tunnel.ssh2.tunnel.vpn.TunnelUtils;
import com.fbd.tunnel.R;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.pro.aidl.IUltraSSHServiceInternal;
import com.tknetwork.tunnel.activities.ActivityUi;
import com.tknetwork.tunnel.adapter.Adapter;
import com.tknetwork.tunnel.core.MainReceiver;
import com.tknetwork.tunnel.service.c_05;
import com.tknetwork.tunnel.thread.UDPTunnelThread;
import com.tknetwork.tunnel.utils.ServerType;
import com.tknetwork.tunnel.utils.StatisticsGraphData;
import config.ConfigUtil;
import de.blinkt.openvpn.core.ConnectionStatus;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.AbstractC0594x7175b0df;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1026x65ee1cd8;
import defpackage.AbstractC1319x9e4ecaa8;
import defpackage.C1316xa17a502;
import defpackage.RunnableC1317x50ddcf3f;
import j$.util.Objects;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Date;

/* loaded from: classes3.dex */
public class c_06 extends Service implements TkLogStatus.StateListener {
    private static final int PRIORITY_DEFAULT = 0;
    private static final int PRIORITY_MAX = 2;
    private static final int PRIORITY_MIN = -2;
    private static final String TAG;
    public static final String TUNNEL_SSH_RESTART_SERVICE;
    public static final String TUNNEL_SSH_STOP_SERVICE;
    public static boolean isRunning;
    private static String lastStateMsg;
    private static long mConnecttime;
    public static SSHThread mTunnelManager;
    private static Thread mTunnelThread;
    public static TunListener tunListener;
    public c_04 DNSTTTunnelThread;
    private Adapter.LogAdapter adapter;

    /* renamed from: config */
    private ConfigUtil f5779config;
    private ConnectivityManager connMgr;
    private String lastChannel;
    private ArrayList<c_05.LogMsg> listLog;
    private ListView logView;
    private UDPTunnelThread mDnsThread;
    private Handler mHandler;
    private NotificationManager mNotificationManager;
    public c_07 mSSHTunnelThread;
    private StatusPoller statuspoller;
    private View v;
    public static final String START_SERVICE = new ObfuscatedString(new long[]{6185979786247747705L, -5752234876407919083L, -5391690123306859401L, -116327713778904084L, -4659998712369821403L}).toString();
    public static final String ESTABLISH_BUILDER = new ObfuscatedString(new long[]{6935605680438366665L, 7575827993339006775L, -5787615670580333361L, 6983445181962875002L, 4841037180537424399L}).toString();
    public static final String DESTROY_BUILDER = new ObfuscatedString(new long[]{-8761096057037515297L, 2610765323519629610L, 5259717766300781927L, 6901661985544107882L}).toString();
    public static final String NOTIFICATION_CHANNEL_BG_ID = new ObfuscatedString(new long[]{-2546160732607981418L, 8014390001311308119L, -5684995146853804536L}).toString();
    public static final String NOTIFICATION_CHANNEL_NEWSTATUS_ID = new ObfuscatedString(new long[]{-4068039835985159812L, 6585059059317380106L, -3756992015239874303L}).toString();
    public static final String NOTIFICATION_CHANNEL_USERREQ_ID = new ObfuscatedString(new long[]{8343893196943036836L, 7994967380134922009L, -5592605413608769645L}).toString();
    private int selectedServerType = ServerType.OPENVPN;

    @SuppressLint({"NewApi"})
    private final ConnectivityManager.NetworkCallback networkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.tknetwork.tunnel.service.c_06.1
        public AnonymousClass1() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            TkLogStatus.logDebug(new ObfuscatedString(new long[]{-6843191501551605918L, 319657946016343949L, -896294298365680135L, -3750161244182175641L}).toString());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            TkLogStatus.logDebug(new ObfuscatedString(new long[]{-8558335116493829162L, 9167186537423428114L, 6720566086386439670L}).toString());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onUnavailable() {
            TkLogStatus.logDebug(new ObfuscatedString(new long[]{3645012410989668311L, 2170014973061333286L, -4761961791268371708L, -9036804570075985169L}).toString());
        }
    };
    private final BroadcastReceiver mTunnelSSHBroadcastReceiver = new AnonymousClass2();
    private final IBinder mBinder = new IUltraSSHServiceInternal.Stub() { // from class: com.tknetwork.tunnel.service.c_06.3
        public AnonymousClass3() {
        }

        @Override // com.tknetwork.pro.aidl.IUltraSSHServiceInternal
        public void stopVPN() {
            c_06.this.stopTunnel();
        }
    };

    /* renamed from: com.tknetwork.tunnel.service.c_06$1 */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends ConnectivityManager.NetworkCallback {
        public AnonymousClass1() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            TkLogStatus.logDebug(new ObfuscatedString(new long[]{-6843191501551605918L, 319657946016343949L, -896294298365680135L, -3750161244182175641L}).toString());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            TkLogStatus.logDebug(new ObfuscatedString(new long[]{-8558335116493829162L, 9167186537423428114L, 6720566086386439670L}).toString());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onUnavailable() {
            TkLogStatus.logDebug(new ObfuscatedString(new long[]{3645012410989668311L, 2170014973061333286L, -4761961791268371708L, -9036804570075985169L}).toString());
        }
    }

    /* renamed from: com.tknetwork.tunnel.service.c_06$2 */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 extends BroadcastReceiver {
        public AnonymousClass2() {
        }

        public static /* synthetic */ void lambda$onReceive$0() {
            SSHThread sSHThread = c_06.mTunnelManager;
            if (sSHThread != null) {
                sSHThread.reconnectSSH();
            }
        }

        /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, java.lang.Runnable] */
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action == null) {
                return;
            }
            if (action.equals(c_06.TUNNEL_SSH_RESTART_SERVICE)) {
                new Thread((Runnable) new Object()).start();
            } else if (action.equals(c_06.TUNNEL_SSH_STOP_SERVICE)) {
                c_06.this.lambda$startTunnel$0();
            }
        }
    }

    /* renamed from: com.tknetwork.tunnel.service.c_06$3 */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 extends IUltraSSHServiceInternal.Stub {
        public AnonymousClass3() {
        }

        @Override // com.tknetwork.pro.aidl.IUltraSSHServiceInternal
        public void stopVPN() {
            c_06.this.stopTunnel();
        }
    }

    /* loaded from: classes3.dex */
    public static class StatusPoller implements Runnable {
        private final long mSleeptime;
        boolean mStopped = false;

        public StatusPoller(long j) {
            this.mSleeptime = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            while (!this.mStopped) {
                try {
                    Thread.sleep(this.mSleeptime);
                } catch (InterruptedException unused) {
                }
                TunListener tunListener = c_06.tunListener;
                if (tunListener != null) {
                    tunListener.updateBytesTime();
                }
            }
        }

        public void stop() {
            this.mStopped = true;
        }
    }

    /* loaded from: classes3.dex */
    public interface TunListener {
        void updateBytesTime();
    }

    static {
        StringBuilder sb = new StringBuilder();
        sb.append(c_06.class.getName());
        TUNNEL_SSH_RESTART_SERVICE = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5334793057526419743L, 3050705227238548038L, 6628837829868401939L, 3612569513349671335L, -7171281467733848680L}), sb);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(c_06.class.getName());
        TUNNEL_SSH_STOP_SERVICE = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{4656913478288993352L, 5152649088855327557L, 1387177507319247199L, -1758923261042299068L}), sb2);
        TAG = "c_06";
        isRunning = false;
        mConnecttime = 0L;
    }

    private void ServerType() {
        int i = this.selectedServerType;
        if (i == 0) {
            this.f5779config.setServerType(new ObfuscatedString(new long[]{-3883357143994304905L, 1185538792364921763L}).toString());
            return;
        }
        if (i == 1) {
            this.f5779config.setServerType(new ObfuscatedString(new long[]{-7786843371733069755L, 8210119659074610124L}).toString());
            return;
        }
        if (i == 2) {
            this.f5779config.setServerType(new ObfuscatedString(new long[]{8939245293568234569L, -3050000865973099167L}).toString());
        } else if (i == 3) {
            this.f5779config.setServerType(new ObfuscatedString(new long[]{-1675392495475003002L, 6862401392654114396L}).toString());
        } else if (i == 4) {
            this.f5779config.setServerType(new ObfuscatedString(new long[]{-7683694213071134749L, 1824998438441055158L}).toString());
        }
    }

    private void addVpnActionsToNotification(Notification.Builder builder) {
        Intent intent = new Intent(this, (Class<?>) MainReceiver.class);
        intent.setAction(new ObfuscatedString(new long[]{4934948361635240684L, -4628934107847254661L, 4879706464278614199L, -6374149707875577306L}).toString());
        builder.addAction(R.drawable.ic_recon, getString(R.string.reconnect), PendingIntent.getBroadcast(this, 0, intent, 335544320));
    }

    private void connected() {
        isRunning = true;
    }

    @TargetApi(26)
    private void createNotificationChannels() {
        NotificationManager notificationManager = (NotificationManager) getSystemService(new ObfuscatedString(new long[]{4622141713573440343L, -3381999519152336727L, -3250635120649630667L}).toString());
        String string = getString(R.string.channel_name_background);
        AbstractC1319x9e4ecaa8.m4347x9738a56c();
        NotificationChannel m3655xfbe0c504 = AbstractC1026x65ee1cd8.m3655xfbe0c504(new ObfuscatedString(new long[]{6442383686500664624L, 201272536102732905L, 2500992047704146376L}).toString(), string);
        m3655xfbe0c504.setDescription(getString(R.string.channel_description_background));
        m3655xfbe0c504.enableLights(false);
        m3655xfbe0c504.setLightColor(R.color.colorPrimary);
        notificationManager.createNotificationChannel(m3655xfbe0c504);
        String string2 = getString(R.string.channel_name_status);
        AbstractC1319x9e4ecaa8.m4347x9738a56c();
        NotificationChannel m3679xe1f61061 = AbstractC1026x65ee1cd8.m3679xe1f61061(new ObfuscatedString(new long[]{6183759060883643504L, 5926436093988482524L, 742828053703404569L}).toString(), string2);
        m3679xe1f61061.setDescription(getString(R.string.channel_description_status));
        m3679xe1f61061.enableLights(true);
        m3679xe1f61061.setLightColor(R.color.colorPrimary);
        notificationManager.createNotificationChannel(m3679xe1f61061);
        String string3 = getString(R.string.channel_name_userreq);
        AbstractC1319x9e4ecaa8.m4347x9738a56c();
        NotificationChannel m3170x34271fae = AbstractC0594x7175b0df.m3170x34271fae(new ObfuscatedString(new long[]{-3020639232565170174L, 944523976086677045L, -3354054868125916645L}).toString(), string3);
        m3170x34271fae.setDescription(getString(R.string.channel_description_userreq));
        m3170x34271fae.enableVibration(true);
        m3170x34271fae.setLightColor(R.color.colorPrimary);
        notificationManager.createNotificationChannel(m3170x34271fae);
    }

    private int getIconByConnectionStatus(ConnectionStatus connectionStatus) {
        Objects.requireNonNull(connectionStatus);
        if (connectionStatus == ConnectionStatus.CONNECTED) {
            connected();
            return R.drawable.ic_connected;
        }
        return 0;
    }

    public static String getTime() {
        long time = new Date().getTime();
        long j = mConnecttime;
        long j2 = time - j;
        if (j != 0) {
            return String.format(new ObfuscatedString(new long[]{8636157419651032102L, -3457845994440305032L, 8571250945220121186L}).toString(), Long.valueOf((j2 / 3600000) % 24), Long.valueOf((j2 / 60000) % 60), Long.valueOf((j2 / 1000) % 60));
        }
        return new ObfuscatedString(new long[]{7563805696903329495L, -7915965816404610511L}).toString();
    }

    private void jbNotificationExtras(int i, Notification.Builder builder) {
        if (i != 0) {
            try {
                builder.getClass().getMethod(new ObfuscatedString(new long[]{7350805333161551177L, -7976589010178140970L, -2304777516656092707L}).toString(), Integer.TYPE).invoke(builder, Integer.valueOf(i));
                builder.getClass().getMethod(new ObfuscatedString(new long[]{-3671984448029188391L, 8561846672808582535L, 3358729008916217122L, -4131176119394481712L}).toString(), Boolean.TYPE).invoke(builder, Boolean.TRUE);
            } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException e) {
                TkLogStatus.logException(e);
            }
        }
    }

    public /* synthetic */ void lambda$endTunnelService$1() {
        stopForeground(true);
        stopSelf();
        TkLogStatus.removeStateListener(this);
    }

    private void lpNotificationExtras(Notification.Builder builder) {
        builder.setCategory(new ObfuscatedString(new long[]{-6409807437250139616L, 3329976299770933713L}).toString());
        builder.setLocalOnly(true);
    }

    @RequiresApi(api = 24)
    @SuppressLint({"ForegroundServiceType"})
    private void showNotification(String str, String str2, @NonNull String str3, long j, ConnectionStatus connectionStatus, Intent intent) {
        int iconByConnectionStatus = getIconByConnectionStatus(connectionStatus);
        ServerType();
        NotificationManager notificationManager = (NotificationManager) getSystemService(new ObfuscatedString(new long[]{5929890214785507623L, 3313600541585693361L, 2159274235599743795L}).toString());
        int i = Build.VERSION.SDK_INT;
        if (i >= 26) {
            createNotificationChannels();
        }
        Notification.Builder priority = new Notification.Builder(this).setSmallIcon(R.drawable.ic_cloud_on).setContentTitle(getString(R.string.app_name)).setContentText(getString(R.string.state_connected)).setOnlyAlertOnce(true).setOngoing(true).setWhen(new Date().getTime()).setPriority(0);
        int i2 = 2;
        jbNotificationExtras(2, priority);
        lpNotificationExtras(priority);
        if (str3.equals(new ObfuscatedString(new long[]{-7861249347932939838L, 487980569230213909L, 2284055770174021076L}).toString())) {
            i2 = -2;
        } else if (!str3.equals(new ObfuscatedString(new long[]{-5851051042340051976L, -3314369732445032597L, -7660772664526502474L}).toString())) {
            i2 = 0;
        }
        priority.setSmallIcon(iconByConnectionStatus);
        priority.setContentText(str);
        priority.setContentIntent(PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) ActivityUi.class), 201326592));
        if (j != 0) {
            priority.setWhen(j);
        }
        jbNotificationExtras(i2, priority);
        if (i >= 26) {
            priority.setChannelId(str3);
        }
        if (str2 != null && !str2.equals(new ObfuscatedString(new long[]{-8504958721443075202L}).toString())) {
            priority.setTicker(str2);
        }
        Notification build = priority.build();
        int hashCode = str3.hashCode();
        notificationManager.notify(hashCode, build);
        startForeground(hashCode, build);
        String str4 = this.lastChannel;
        if (str4 != null && !str3.equals(str4)) {
            notificationManager.cancel(this.lastChannel.hashCode());
        }
        this.lastChannel = str3;
    }

    private void startTunnelBroadcast() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.connMgr.registerDefaultNetworkCallback(this.networkCallback);
        }
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(TUNNEL_SSH_STOP_SERVICE);
        intentFilter.addAction(TUNNEL_SSH_RESTART_SERVICE);
        LocalBroadcastManager.getInstance(this).registerReceiver(this.mTunnelSSHBroadcastReceiver, intentFilter);
    }

    public static void startmanager() {
        mConnecttime = new Date().getTime();
        Thread thread = new Thread(mTunnelManager);
        mTunnelThread = thread;
        thread.start();
        TkLogStatus.logInfo(R.string.tunnel_start, new Object[0]);
    }

    private void stopTunnelBroadcast() {
        LocalBroadcastManager.getInstance(this).unregisterReceiver(this.mTunnelSSHBroadcastReceiver);
        if (Build.VERSION.SDK_INT >= 24) {
            this.connMgr.unregisterNetworkCallback(this.networkCallback);
        }
    }

    /* renamed from: endTunnelService */
    public void lambda$startTunnel$0() {
        this.mHandler.post(new RunnableC1317x50ddcf3f(this, 0));
    }

    public String getIpPublic() {
        NetworkInfo activeNetworkInfo = this.connMgr.getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting()) {
            return TunnelUtils.getLocalIpAddress();
        }
        return new ObfuscatedString(new long[]{-4542544371887340012L, -7825651783893719205L, -382511430646950187L}).toString();
    }

    public void logs(String str) {
        TkLogStatus.logInfo(str);
    }

    public void networkStateChange(Context context) {
        String message;
        try {
            NetworkInfo activeNetworkInfo = this.connMgr.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                message = new ObfuscatedString(new long[]{3593237861955080598L, 704887494665147270L, 3169087334872542185L}).toString();
            } else {
                String subtypeName = activeNetworkInfo.getSubtypeName();
                if (subtypeName == null) {
                    subtypeName = new ObfuscatedString(new long[]{-5632561019989657322L}).toString();
                }
                String extraInfo = activeNetworkInfo.getExtraInfo();
                if (extraInfo == null) {
                    extraInfo = new ObfuscatedString(new long[]{4369372592630053379L}).toString();
                }
                message = String.format(new ObfuscatedString(new long[]{-3464521496391242146L, 4259840286958939910L, -7141283642655611127L, 7189205046330014819L}).toString(), activeNetworkInfo.getTypeName(), activeNetworkInfo.getDetailedState(), extraInfo, subtypeName);
            }
        } catch (Exception e) {
            message = e.getMessage();
        }
        TkLogStatus.logInfo(message);
        lastStateMsg = message;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    @Override // android.app.Service
    public void onCreate() {
        new ObfuscatedString(new long[]{-7735964759507997625L, -1909306312209121897L}).toString();
        this.f5779config = ConfigUtil.getInstance(this);
        super.onCreate();
        this.mHandler = new Handler();
        this.connMgr = (ConnectivityManager) getSystemService(new ObfuscatedString(new long[]{2103941915760038221L, 5257188369300651195L, -3425917149186725675L}).toString());
        PreferenceManager.getDefaultSharedPreferences(this).edit();
        StatisticsGraphData.getStatisticData().getDataTransferStats();
        if (this.mNotificationManager == null) {
            this.mNotificationManager = (NotificationManager) getSystemService(new ObfuscatedString(new long[]{-1721213291914533215L, -8764764751354632276L, 9019335659936090488L}).toString());
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        new ObfuscatedString(new long[]{-8087498254945755808L, 4551298693874126434L, -4455009646184205354L}).toString();
        super.onDestroy();
        stopTunnel();
        StatusPoller statusPoller = this.statuspoller;
        if (statusPoller != null) {
            statusPoller.stop();
        }
        stopTunnelBroadcast();
        TkLogStatus.removeStateListener(this);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        new ObfuscatedString(new long[]{-1157439708190758178L, 6996557084273646356L, 5705476820087245380L}).toString();
        startTunnelBroadcast();
        intent.getExtras();
        TkLogStatus.addStateListener(this);
        this.statuspoller = new StatusPoller(1000L);
        new Thread(this.statuspoller, new ObfuscatedString(new long[]{573355459029649056L, 4269363619035551274L, -1999744013517686778L}).toString()).start();
        if (new ObfuscatedString(new long[]{636990896378450130L, 1853530198883406784L, 5456732171733098812L, 3043236567116355286L, -524966161023689095L}).toString().equals(intent.getAction())) {
            return 2;
        }
        String string = getString(TkLogStatus.getLocalizedState(TkLogStatus.getLastState()));
        if (Build.VERSION.SDK_INT >= 24) {
            showNotification(string, string, new ObfuscatedString(new long[]{-2031380110340665330L, -8621949902349228882L, -508356337953799314L}).toString(), 0L, ConnectionStatus.LEVEL_START, null);
        }
        new Thread(new RunnableC1317x50ddcf3f(this, 1)).start();
        return 2;
    }

    public synchronized void startClientDNSTT() {
        try {
            try {
                c_04 c_04Var = this.DNSTTTunnelThread;
                if (c_04Var != null) {
                    c_04Var.interrupt();
                    this.DNSTTTunnelThread = null;
                }
                this.f5779config.setBypass(true);
                c_04 c_04Var2 = new c_04(this);
                this.DNSTTTunnelThread = c_04Var2;
                c_04Var2.setOnTun2SocksListener(new C1316xa17a502(this, 2));
                this.DNSTTTunnelThread.start();
            } catch (Exception e) {
                TkLogStatus.logException(e);
                lambda$startTunnel$0();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void startClientSSH() {
        try {
            try {
                c_07 c_07Var = this.mSSHTunnelThread;
                if (c_07Var != null) {
                    c_07Var.interrupt();
                    this.mSSHTunnelThread = null;
                }
                c_07 c_07Var2 = new c_07(this);
                this.mSSHTunnelThread = c_07Var2;
                c_07Var2.setOnTun2SocksListener(new C1316xa17a502(this, 0));
                this.mSSHTunnelThread.start();
            } catch (Exception e) {
                TkLogStatus.logException(e);
                lambda$startTunnel$0();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public synchronized void startTunnel() {
        int i = 1;
        synchronized (this) {
            boolean equals = this.f5779config.getConnectionType().equals(new ObfuscatedString(new long[]{8711866429732719621L, -5830393850143574964L}).toString());
            TkLogStatus.updateStateString(new ObfuscatedString(new long[]{-1716534059142439413L, 2201437735359477612L, 2281730378202045129L}).toString(), getString(R.string.starting_service_ssh));
            networkStateChange(this);
            logs(String.format(new ObfuscatedString(new long[]{3859197418602789008L, 1190064354129588168L, -3405508183930414991L}).toString(), getIpPublic()));
            if (equals) {
                startClientSSH();
            }
            try {
                int tunnelType = this.f5779config.getTunnelType();
                if (tunnelType == 6) {
                    UDPTunnelThread uDPTunnelThread = new UDPTunnelThread(this);
                    this.mDnsThread = uDPTunnelThread;
                    uDPTunnelThread.start();
                }
                if (tunnelType == 9) {
                    startClientDNSTT();
                }
                SSHThread sSHThread = new SSHThread(this.mHandler, this);
                mTunnelManager = sSHThread;
                sSHThread.setOnStopClienteListener(new C1316xa17a502(this, i));
            } catch (Exception e) {
                TkLogStatus.logException(e);
                lambda$startTunnel$0();
            }
        }
    }

    public synchronized void stopTunnel() {
        try {
            mConnecttime = 0L;
            UDPTunnelThread uDPTunnelThread = this.mDnsThread;
            if (uDPTunnelThread != null) {
                uDPTunnelThread.interrupt();
                this.mDnsThread = null;
            }
            c_07 c_07Var = this.mSSHTunnelThread;
            if (c_07Var != null) {
                c_07Var.interrupt();
                this.mSSHTunnelThread = null;
            }
            c_04 c_04Var = this.DNSTTTunnelThread;
            if (c_04Var != null) {
                c_04Var.interrupt();
                this.DNSTTTunnelThread = null;
            }
            SSHThread sSHThread = mTunnelManager;
            if (sSHThread != null) {
                sSHThread.stopAll();
                networkStateChange(this);
                Thread thread = mTunnelThread;
                if (thread != null) {
                    thread.interrupt();
                    TkLogStatus.logInfo(R.string.tunnel_stop, new Object[0]);
                }
                mTunnelManager = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // de.blinkt.openvpn.core.TkLogStatus.StateListener
    public void updateState(String str, String str2, int i, ConnectionStatus connectionStatus, int i2) {
        if (this.f5779config.getSSH().booleanValue() && mTunnelThread == null) {
            return;
        }
        String string = getString(TkLogStatus.getLocalizedState(TkLogStatus.getLastState()));
        if (Build.VERSION.SDK_INT >= 24) {
            showNotification(str2, string, new ObfuscatedString(new long[]{6370189337834970478L, -3358338179381120119L, 7858862953969513863L}).toString(), 0L, connectionStatus, null);
        }
    }

    @SuppressLint({"WrongConstant"})
    private void addVpnActionsToNotification(NotificationCompat.Builder builder) {
        int i = Build.VERSION.SDK_INT >= 31 ? AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL : 268435456;
        PendingIntent service = PendingIntent.getService(this, 0, new Intent(this, (Class<?>) TunnelVPN.class).setAction(new ObfuscatedString(new long[]{792976265558281889L, -8816738407633033553L, 3627340227475882517L, 8389726801283814720L, 4032310515926764887L, 5327764757865112560L}).toString()), i);
        PendingIntent service2 = PendingIntent.getService(this, 0, new Intent(this, (Class<?>) TunnelVPN.class).setAction(new ObfuscatedString(new long[]{-6491710867509063554L, -4865644500505387362L, -5685669626606029363L, 7056308806454911303L}).toString()), i);
        builder.addAction(R.drawable.ic_recon, new ObfuscatedString(new long[]{8080967760637419743L, 1326916950185347267L, 8356645942524118598L}).toString(), service);
        builder.addAction(R.drawable.ic_cloud_off, new ObfuscatedString(new long[]{-16640508684923787L, -8399691171460148786L, -8330764214429719544L}).toString(), service2);
    }
}
