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
import android.view.View;
import android.widget.ListView;
import androidx.annotation.NonNull;
import androidx.annotation.OptIn;
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
import com.tknetwork.tunnel.utils.StatisticsGraphData;
import com.v2ray.ang.service.V2RayVpnService;
import config.ConfigUtil;
import de.blinkt.openvpn.core.ConnectionStatus;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.AbstractC0594x7175b0df;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1026x65ee1cd8;
import defpackage.AbstractC1319x9e4ecaa8;
import defpackage.C0419x35cc9f53;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Date;
import kotlinx.coroutines.DelicateCoroutinesApi;

/* loaded from: classes3.dex */
public class c_10 extends Service implements TkLogStatus.StateListener {
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
    private Adapter.LogAdapter adapter;

    /* renamed from: config, reason: collision with root package name */
    private ConfigUtil f5780config;
    private ConnectivityManager connMgr;
    private StatisticsGraphData.DataTransferStats dataTransferStats;
    private String lastChannel;
    private ArrayList<c_05.LogMsg> listLog;
    private ListView logView;
    private Handler mHandler;
    private NotificationManager mNotificationManager;
    private StatusPoller statuspoller;
    private View v;
    private V2RayVpnService v2rayThread;
    public static final String START_SERVICE = new ObfuscatedString(new long[]{-7535809299503878497L, 5671783862893773934L, -3983777876575989965L, -963066819776107333L, 8480489873634239409L}).toString();
    public static final String NOTIFICATION_CHANNEL_BG_ID = new ObfuscatedString(new long[]{8222121423490059075L, -7271368384953209496L, -8323747595296177569L}).toString();
    public static final String NOTIFICATION_CHANNEL_NEWSTATUS_ID = new ObfuscatedString(new long[]{4601443979809575827L, -9000608217523622996L, -7145105403400006829L}).toString();
    public static final String NOTIFICATION_CHANNEL_USERREQ_ID = new ObfuscatedString(new long[]{-3134912674418689242L, 7619134615647550169L, 8761956678563321912L}).toString();
    private final boolean mNotificationShowing = false;

    @SuppressLint({"NewApi"})
    private final ConnectivityManager.NetworkCallback networkCallback = new ConnectivityManager.NetworkCallback() { // from class: com.tknetwork.tunnel.service.c_10.1
        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            TkLogStatus.logDebug(new ObfuscatedString(new long[]{-6717391116436413478L, -4133251625474567197L, -3405600624752811992L, 2607017371990698083L}).toString());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            TkLogStatus.logDebug(new ObfuscatedString(new long[]{1542156860376487597L, 3776825317559972214L, 677692837194975488L}).toString());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onUnavailable() {
            TkLogStatus.logDebug(new ObfuscatedString(new long[]{-2843974029750323046L, -3631776895256228249L, -5360454950481620762L, -7248116962393570057L}).toString());
        }
    };
    private final BroadcastReceiver mTunnelSSHBroadcastReceiver = new BroadcastReceiver() { // from class: com.tknetwork.tunnel.service.c_10.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action == null) {
                return;
            }
            if (action.equals(c_10.TUNNEL_SSH_RESTART_SERVICE)) {
                new Thread(new Runnable() { // from class: com.tknetwork.tunnel.service.c_10.2.1
                    @Override // java.lang.Runnable
                    public void run() {
                        SSHThread sSHThread = c_10.mTunnelManager;
                        if (sSHThread != null) {
                            sSHThread.reconnectSSH();
                        }
                    }
                }).start();
            } else if (action.equals(c_10.TUNNEL_SSH_STOP_SERVICE)) {
                c_10.this.endTunnelService();
            }
        }
    };
    private final IBinder mBinder = new IUltraSSHServiceInternal.Stub() { // from class: com.tknetwork.tunnel.service.c_10.3
        @Override // com.tknetwork.pro.aidl.IUltraSSHServiceInternal
        public void stopVPN() {
            c_10.this.stopTunnel();
        }
    };

    /* renamed from: com.tknetwork.tunnel.service.c_10$6, reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass6 {
        static final /* synthetic */ int[] $SwitchMap$de$blinkt$openvpn$core$ConnectionStatus;

        static {
            int[] iArr = new int[ConnectionStatus.values().length];
            $SwitchMap$de$blinkt$openvpn$core$ConnectionStatus = iArr;
            try {
                iArr[ConnectionStatus.CONNECTED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
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
                TunListener tunListener = c_10.tunListener;
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
        sb.append(c_10.class.getName());
        TUNNEL_SSH_RESTART_SERVICE = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{2854984957837419186L, 1616916686916055091L, 7996057884491720775L, -20156651160480532L, -5307206478558055192L}), sb);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(c_10.class.getName());
        TUNNEL_SSH_STOP_SERVICE = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-783034526180383529L, -6535772538277791522L, 2703213217582274136L, -1832752053753880361L}), sb2);
        TAG = "c_10";
        isRunning = false;
        mConnecttime = 0L;
    }

    private void addVpnActionsToNotification(Notification.Builder builder) {
        Intent intent = new Intent(this, (Class<?>) MainReceiver.class);
        intent.setAction(new ObfuscatedString(new long[]{-3019273118351416892L, 6084523236660605500L, -7901430515827080004L, -6317725326688543169L}).toString());
        builder.addAction(R.drawable.ic_duration, getString(R.string.reconnect), PendingIntent.getBroadcast(this, 0, intent, 335544320));
    }

    private void connected() {
        isRunning = true;
    }

    @TargetApi(26)
    private void createNotificationChannels(NotificationManager notificationManager) {
        NotificationManager notificationManager2 = (NotificationManager) getSystemService(new ObfuscatedString(new long[]{480118474394290709L, -631216725691628791L, 5547361306724225727L}).toString());
        String string = getString(R.string.channel_name_background);
        AbstractC1319x9e4ecaa8.m4347x9738a56c();
        NotificationChannel m3655xfbe0c504 = AbstractC1026x65ee1cd8.m3655xfbe0c504(new ObfuscatedString(new long[]{6593834263730137505L, -685976879843561549L, -7040694602991805488L}).toString(), string);
        m3655xfbe0c504.setDescription(getString(R.string.channel_description_background));
        m3655xfbe0c504.enableLights(false);
        m3655xfbe0c504.setLightColor(R.color.colorPrimary);
        notificationManager2.createNotificationChannel(m3655xfbe0c504);
        String string2 = getString(R.string.channel_name_status);
        AbstractC1319x9e4ecaa8.m4347x9738a56c();
        NotificationChannel m3679xe1f61061 = AbstractC1026x65ee1cd8.m3679xe1f61061(new ObfuscatedString(new long[]{3153130273024247705L, -3566528683334149495L, -3047204493229552757L}).toString(), string2);
        m3679xe1f61061.setDescription(getString(R.string.channel_description_status));
        m3679xe1f61061.enableLights(true);
        m3679xe1f61061.setLightColor(R.color.colorPrimary);
        notificationManager2.createNotificationChannel(m3679xe1f61061);
        String string3 = getString(R.string.channel_name_userreq);
        AbstractC1319x9e4ecaa8.m4347x9738a56c();
        NotificationChannel m3170x34271fae = AbstractC0594x7175b0df.m3170x34271fae(new ObfuscatedString(new long[]{2565681189110274516L, 6694159572168308805L, 24852182012827954L}).toString(), string3);
        m3170x34271fae.setDescription(getString(R.string.channel_description_userreq));
        m3170x34271fae.enableVibration(true);
        m3170x34271fae.setLightColor(R.color.colorPrimary);
        notificationManager2.createNotificationChannel(m3170x34271fae);
    }

    public static PendingIntent getGraphPendingIntent(Context context) {
        return PendingIntent.getActivity(context, 0, new Intent(context, (Class<?>) ActivityUi.class), AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
    }

    private int getIconByConnectionStatus(ConnectionStatus connectionStatus) {
        if (AnonymousClass6.$SwitchMap$de$blinkt$openvpn$core$ConnectionStatus[connectionStatus.ordinal()] != 1) {
            return R.drawable.ic_connecting;
        }
        connected();
        return R.drawable.ic_connected;
    }

    public static String getTime() {
        long time = new Date().getTime();
        long j = mConnecttime;
        long j2 = time - j;
        if (j != 0) {
            return String.format(new ObfuscatedString(new long[]{-6776911285904683680L, -2294563178383533361L, 1850461448563686941L}).toString(), Long.valueOf((j2 / 3600000) % 24), Long.valueOf((j2 / 60000) % 60), Long.valueOf((j2 / 1000) % 60));
        }
        return new ObfuscatedString(new long[]{4061144028236554163L, -2310515675072625952L}).toString();
    }

    private void jbNotificationExtras(int i, Notification.Builder builder) {
        if (i != 0) {
            try {
                builder.getClass().getMethod(new ObfuscatedString(new long[]{-3496845483707500232L, 6867640605355801328L, 407635059316112663L}).toString(), Integer.TYPE).invoke(builder, Integer.valueOf(i));
                builder.getClass().getMethod(new ObfuscatedString(new long[]{7872400871753192650L, 1313152084199021681L, -973131292113506517L, -6651329750951817120L}).toString(), Boolean.TYPE).invoke(builder, Boolean.TRUE);
            } catch (IllegalAccessException | IllegalArgumentException | NoSuchMethodException | InvocationTargetException e) {
                TkLogStatus.logException(e);
            }
        }
    }

    private void lpNotificationExtras(Notification.Builder builder, String str) {
        builder.setCategory(str);
        builder.setLocalOnly(true);
    }

    public static void setTunListener(TunListener tunListener2) {
        tunListener = tunListener2;
    }

    @SuppressLint({"ForegroundServiceType"})
    private void showNotification(String str, String str2, @NonNull String str3, long j, ConnectionStatus connectionStatus, Intent intent) {
        int i = 2;
        int iconByConnectionStatus = getIconByConnectionStatus(connectionStatus);
        NotificationManager notificationManager = (NotificationManager) getSystemService(new ObfuscatedString(new long[]{4957570347316606451L, -1636460630728993352L, -1822477938594836667L}).toString());
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            createNotificationChannels(notificationManager);
            AbstractC1026x65ee1cd8.m3674x4440ab85(this, new ObfuscatedString(new long[]{3847724706542244359L, -2210406173551821925L, -6503573565570971378L}).toString());
        } else {
            new Notification.Builder(this);
        }
        Notification.Builder ongoing = new Notification.Builder(this).setContentTitle(getString(R.string.app_name)).setOnlyAlertOnce(true).setOngoing(true);
        addVpnActionsToNotification(ongoing);
        lpNotificationExtras(ongoing, new ObfuscatedString(new long[]{-6129380953674761582L, 2278984052175473990L}).toString());
        if (str3.equals(new ObfuscatedString(new long[]{-8685521556931237051L, 21817165931795269L, 4962326375679196462L}).toString())) {
            i = -2;
        } else if (!str3.equals(new ObfuscatedString(new long[]{5722336077379217506L, 4840053337620970957L, -8439414346371925124L}).toString())) {
            i = 0;
        }
        ongoing.setSmallIcon(iconByConnectionStatus);
        ongoing.setContentText(str);
        ongoing.setContentIntent(PendingIntent.getActivity(this, 0, new Intent(this, (Class<?>) ActivityUi.class), 201326592));
        if (j != 0) {
            ongoing.setWhen(j);
        }
        jbNotificationExtras(i, ongoing);
        if (i2 >= 26) {
            ongoing.setChannelId(str3);
        }
        if (str2 != null && !str2.equals(new ObfuscatedString(new long[]{-1665499021959698603L}).toString())) {
            ongoing.setTicker(str2);
        }
        Notification build = ongoing.build();
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

    public void endTunnelService() {
        this.mHandler.post(new Runnable() { // from class: com.tknetwork.tunnel.service.c_10.5
            @Override // java.lang.Runnable
            public void run() {
                c_10.this.stopForeground(true);
                c_10.this.stopSelf();
                TkLogStatus.removeStateListener(c_10.this);
            }
        });
    }

    public String getIpPublic() {
        NetworkInfo activeNetworkInfo = this.connMgr.getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting()) {
            return TunnelUtils.getLocalIpAddress();
        }
        return new ObfuscatedString(new long[]{-8760086040236892216L, -1481390809701852095L, -6786965066722535610L}).toString();
    }

    public void logs(String str) {
        TkLogStatus.logInfo(str);
    }

    public void networkStateChange(Context context, boolean z) {
        String message;
        try {
            NetworkInfo activeNetworkInfo = this.connMgr.getActiveNetworkInfo();
            if (activeNetworkInfo == null) {
                message = new ObfuscatedString(new long[]{-8949099435573393248L, -662209112970186834L, -3512839799170605375L}).toString();
            } else {
                String subtypeName = activeNetworkInfo.getSubtypeName();
                if (subtypeName == null) {
                    subtypeName = new ObfuscatedString(new long[]{-4006175929785401973L}).toString();
                }
                String extraInfo = activeNetworkInfo.getExtraInfo();
                if (extraInfo == null) {
                    extraInfo = new ObfuscatedString(new long[]{-4015693899127229186L}).toString();
                }
                message = String.format(new ObfuscatedString(new long[]{1312320433223132591L, 5036297671327815024L, -3692817431691241083L, 5762529374209911178L}).toString(), activeNetworkInfo.getTypeName(), activeNetworkInfo.getDetailedState(), extraInfo, subtypeName);
            }
        } catch (Exception e) {
            message = e.getMessage();
        }
        if (z || !message.equals(lastStateMsg)) {
            TkLogStatus.logInfo(message);
        }
        lastStateMsg = message;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.mBinder;
    }

    @Override // android.app.Service
    public void onCreate() {
        new ObfuscatedString(new long[]{-5399817239966979489L, 888912566357139283L}).toString();
        this.f5780config = ConfigUtil.getInstance(this);
        super.onCreate();
        this.mHandler = new Handler();
        this.connMgr = (ConnectivityManager) getSystemService(new ObfuscatedString(new long[]{-8162177260873692248L, 3902126516934706983L, 3815107110751997640L}).toString());
        this.dataTransferStats = StatisticsGraphData.getStatisticData().getDataTransferStats();
        if (this.mNotificationManager == null) {
            this.mNotificationManager = (NotificationManager) getSystemService(new ObfuscatedString(new long[]{2048441050347427479L, 5452122357749382819L, -678179085520419298L}).toString());
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        new ObfuscatedString(new long[]{-7809755322577188038L, 4788694787036545485L, -3388338974857194560L}).toString();
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
        new ObfuscatedString(new long[]{-8017504629034726003L, 2350399208675614904L, -3408975332071713353L}).toString();
        startTunnelBroadcast();
        TkLogStatus.addStateListener(this);
        this.statuspoller = new StatusPoller(1000L);
        new Thread(this.statuspoller, new ObfuscatedString(new long[]{-205831602002162733L, 482578309208258311L, 328365639370756210L}).toString()).start();
        if (intent != null && new ObfuscatedString(new long[]{-7439446396954716718L, 94413283650005396L, -415322154006777468L, 3127977833860884553L, 55386024174217853L}).toString().equals(intent.getAction())) {
            return 2;
        }
        String string = getString(TkLogStatus.getLocalizedState(TkLogStatus.getLastState()));
        showNotification(string, string, new ObfuscatedString(new long[]{7457259791417138334L, -5014797627620478008L, -3393735512058745618L}).toString(), 0L, ConnectionStatus.LEVEL_START, null);
        new Thread(new Runnable() { // from class: com.tknetwork.tunnel.service.c_10.4
            @Override // java.lang.Runnable
            public void run() {
                c_10.this.startTunnel();
            }
        }).start();
        return 2;
    }

    @OptIn(markerClass = {DelicateCoroutinesApi.class})
    public synchronized void startTunnel() {
        TkLogStatus.updateStateString(new ObfuscatedString(new long[]{-7139219311165092245L, 7060414350084241459L, -8853527152759826664L}).toString(), getString(R.string.starting_service_ssh));
        networkStateChange(this, true);
        logs(String.format(new ObfuscatedString(new long[]{-3757134764397172405L, 6853724932488783648L, -5715668558645353329L}).toString(), getIpPublic()));
        try {
            startService(new Intent(this, (Class<?>) V2RayVpnService.class));
            this.v2rayThread.startService();
            SSHThread sSHThread = new SSHThread(this.mHandler, this);
            mTunnelManager = sSHThread;
            sSHThread.setOnStopClienteListener(new C0419x35cc9f53(this, 28));
        } catch (Exception e) {
            TkLogStatus.logException(e);
            endTunnelService();
        }
    }

    public synchronized void stopTunnel() {
        try {
            mConnecttime = 0L;
            V2RayVpnService v2RayVpnService = this.v2rayThread;
            if (v2RayVpnService != null) {
                v2RayVpnService.onRevoke();
            }
            this.v2rayThread = null;
            SSHThread sSHThread = mTunnelManager;
            if (sSHThread != null) {
                sSHThread.stopAll();
                networkStateChange(this, true);
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
        if (mTunnelThread == null) {
            return;
        }
        String obfuscatedString = new ObfuscatedString(new long[]{4298823982981015215L, 6004362039965527262L, 9194739897079478050L}).toString();
        String string = getString(TkLogStatus.getLocalizedState(TkLogStatus.getLastState()));
        showNotification(string, string, obfuscatedString, 0L, connectionStatus, null);
    }
}
