package app.tunnel.ssh2.tunnel;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import android.preference.PreferenceManager;
import androidx.lifecycle.CoroutineLiveDataKt;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import app.tunnel.ssh2.tunnel.vpn.TunnelState;
import app.tunnel.ssh2.tunnel.vpn.TunnelUtils;
import app.tunnel.ssh2.tunnel.vpn.TunnelVpnManager;
import app.tunnel.ssh2.tunnel.vpn.TunnelVpnService;
import app.tunnel.ssh2.tunnel.vpn.TunnelVpnSettings;
import app.tunnel.vpncommons.utils.VpnUtils;
import com.fbd.tunnel.R;
import com.trilead.ssh2.transport.TransportManager;
import config.ConfigUtil;
import config.Settings;
import de.blinkt.openvpn.core.TkLogStatus;
import defpackage.RunnableC0374x3cd97916;
import defpackage.RunnableC1044x8c43c726;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
public class SSHThread implements Runnable {
    private static final int RECONNECT_TRIES = 5;
    private static final String TAG = "SSHThread";
    private static Handler mHandler;
    private Settings mConfig;
    private final Context mContext;
    private OnStopCliente mListener;
    private CountDownLatch mTunnelThreadStopSignal;
    String serverAddr;
    private boolean mRunning = false;
    private boolean mStopping = false;
    private boolean mStarting = false;
    private boolean mConnected = false;
    public boolean mReconnecting = false;
    private final BroadcastReceiver m_vpnTunnelBroadcastReceiver = new BroadcastReceiver() { // from class: app.tunnel.ssh2.tunnel.SSHThread.1
        public AnonymousClass1() {
        }

        @Override // android.content.BroadcastReceiver
        public synchronized void onReceive(Context context, Intent intent) {
            try {
                String action = intent.getAction();
                if (TunnelVpnService.TUNNEL_VPN_START_BROADCAST.equals(action)) {
                    if (!intent.getBooleanExtra(TunnelVpnService.TUNNEL_VPN_START_SUCCESS_EXTRA, true)) {
                        SSHThread.this.stopAll();
                    }
                } else if (TunnelVpnService.TUNNEL_VPN_DISCONNECT_BROADCAST.equals(action)) {
                    SSHThread.this.stopAll();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    };

    /* renamed from: app.tunnel.ssh2.tunnel.SSHThread$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends BroadcastReceiver {
        public AnonymousClass1() {
        }

        @Override // android.content.BroadcastReceiver
        public synchronized void onReceive(Context context, Intent intent) {
            try {
                String action = intent.getAction();
                if (TunnelVpnService.TUNNEL_VPN_START_BROADCAST.equals(action)) {
                    if (!intent.getBooleanExtra(TunnelVpnService.TUNNEL_VPN_START_SUCCESS_EXTRA, true)) {
                        SSHThread.this.stopAll();
                    }
                } else if (TunnelVpnService.TUNNEL_VPN_DISCONNECT_BROADCAST.equals(action)) {
                    SSHThread.this.stopAll();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* loaded from: classes.dex */
    public interface OnStopCliente {
        void onStop();
    }

    public SSHThread(Handler handler, Context context) {
        mHandler = new Handler(Looper.getMainLooper());
        this.mContext = context;
        this.mConfig = new Settings(context);
    }

    public static boolean isServiceVpnRunning() {
        TunnelState tunnelState = TunnelState.getTunnelState();
        if (!tunnelState.getStartingTunnelManager() && tunnelState.getTunnelManager() == null) {
            return false;
        }
        return true;
    }

    public /* synthetic */ void lambda$stopAll$0() {
        this.mStopping = true;
        CountDownLatch countDownLatch = this.mTunnelThreadStopSignal;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
        closeSSH();
        try {
            Thread.sleep(1000L);
        } catch (InterruptedException unused) {
        }
        TkLogStatus.updateStateString(TkLogStatus.VPN_DISCONNECTED, this.mContext.getString(R.string.state_disconnected));
        this.mRunning = false;
        this.mStarting = false;
        this.mReconnecting = false;
    }

    public synchronized void closeSSH() {
        stopForwarder();
    }

    public void reconnectSSH() {
        int i;
        if (!this.mStarting && !this.mStopping && !this.mReconnecting) {
            this.mReconnecting = true;
            closeSSH();
            TkLogStatus.updateStateString(TkLogStatus.VPN_RECONNECTING, "Reconnecting..");
            try {
                Thread.sleep(1000L);
                while (!this.mStopping) {
                    if (!TunnelUtils.isNetworkOnline(this.mContext)) {
                        TkLogStatus.updateStateString(TkLogStatus.VPN_WAITING, "Waiting for network...");
                        TkLogStatus.logInfo(R.string.state_nonetwork, new Object[0]);
                        i = 5;
                    } else {
                        this.mStarting = true;
                        TkLogStatus.updateStateString(TkLogStatus.VPN_RECONNECTING, "Reconnecting..");
                        try {
                            startClienteSSH();
                            this.mStarting = false;
                            this.mReconnecting = false;
                            return;
                        } catch (Exception unused) {
                            TkLogStatus.logInfo("<strong>" + this.mContext.getString(R.string.state_disconnected) + "</strong>");
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

    @Override // java.lang.Runnable
    public void run() {
        this.mStarting = true;
        this.mTunnelThreadStopSignal = new CountDownLatch(1);
        int i = 0;
        while (true) {
            if (this.mStopping) {
                break;
            }
            try {
                try {
                } catch (Exception unused) {
                    TkLogStatus.logError("<strong>" + this.mContext.getString(R.string.state_disconnected) + "</strong>");
                    closeSSH();
                    Thread.sleep(3000L);
                }
                if (!TunnelUtils.isNetworkOnline(this.mContext)) {
                    TkLogStatus.updateStateString(TkLogStatus.VPN_WAITING, this.mContext.getString(R.string.state_nonetwork));
                    TkLogStatus.logInfo(R.string.state_nonetwork, new Object[0]);
                    try {
                        Thread.sleep(CoroutineLiveDataKt.DEFAULT_TIMEOUT);
                        i++;
                    } catch (InterruptedException unused2) {
                        stopAll();
                    }
                } else {
                    if (i > 0) {
                        TkLogStatus.logInfo("<strong>" + this.mContext.getString(R.string.state_reconnecting) + "</strong>");
                    }
                    try {
                        Thread.sleep(1000L);
                        startClienteSSH();
                        break;
                    } catch (InterruptedException unused3) {
                        stopAll();
                    }
                }
                Thread.sleep(3000L);
                i++;
            } catch (InterruptedException unused4) {
                stopAll();
            }
            TkLogStatus.logError("<strong>" + this.mContext.getString(R.string.state_disconnected) + "</strong>");
            closeSSH();
        }
        this.mStarting = false;
        if (!this.mStopping) {
            try {
                this.mTunnelThreadStopSignal.await();
            } catch (InterruptedException unused5) {
                Thread.currentThread().interrupt();
            }
        }
        OnStopCliente onStopCliente = this.mListener;
        if (onStopCliente != null) {
            onStopCliente.onStop();
        }
    }

    public void setOnStopClienteListener(OnStopCliente onStopCliente) {
        this.mListener = onStopCliente;
    }

    public void startClienteSSH() {
        this.mStopping = false;
        this.mRunning = true;
        try {
            mHandler.postDelayed(new RunnableC0374x3cd97916(5), 500L);
            this.mConnected = true;
            startTunnelVpnService();
        } catch (Exception e) {
            this.mConnected = false;
            throw e;
        }
    }

    public void startTunnelVpnService() {
        String str;
        String[] strArr;
        boolean z;
        if (this.mConnected) {
            ConfigUtil configUtil = ConfigUtil.getInstance(this.mContext);
            PreferenceManager.getDefaultSharedPreferences(this.mContext);
            IntentFilter intentFilter = new IntentFilter(TunnelVpnService.TUNNEL_VPN_DISCONNECT_BROADCAST);
            intentFilter.addAction(TunnelVpnService.TUNNEL_VPN_START_BROADCAST);
            LocalBroadcastManager.getInstance(this.mContext).registerReceiver(this.m_vpnTunnelBroadcastReceiver, intentFilter);
            boolean booleanValue = configUtil.getdnsForward().booleanValue();
            boolean vpnUdpForward = configUtil.getVpnUdpForward();
            String vpnUdpResolver = configUtil.getVpnUdpResolver();
            if (vpnUdpForward) {
                str = vpnUdpResolver;
            } else {
                str = null;
            }
            try {
                String hostAddress = TransportManager.createInetAddress(configUtil.getSSHHost()).getHostAddress();
                this.serverAddr = hostAddress;
                String[] strArr2 = {hostAddress};
                if (configUtil.getDNSEnableReplace()) {
                    if (booleanValue) {
                        strArr = new String[]{configUtil.getCustomDNSPRIMARY(), configUtil.getCustomDNSSECONDARY()};
                    } else {
                        strArr = new String[]{VpnUtils.getNetworkDnsServer(this.mContext).get(0)};
                    }
                } else if (booleanValue) {
                    strArr = new String[]{configUtil.getDNSPRIMARY(), configUtil.getDNSSECONDARY()};
                } else {
                    strArr = new String[]{VpnUtils.getNetworkDnsServer(this.mContext).get(0)};
                }
                String[] strArr3 = strArr;
                if (isServiceVpnRunning()) {
                    TunnelVpnManager tunnelManager = TunnelState.getTunnelState().getTunnelManager();
                    if (tunnelManager != null) {
                        tunnelManager.restartTunnel("127.0.0.1:1080");
                        return;
                    }
                    return;
                }
                Intent intent = new Intent(this.mContext, (Class<?>) TunnelVpnService.class);
                intent.setFlags(268435456);
                if ((booleanValue && str == null) || (!booleanValue && str != null)) {
                    z = true;
                } else {
                    z = false;
                }
                intent.putExtra(TunnelVpnManager.VPN_SETTINGS, new TunnelVpnSettings("127.0.0.1:1080", booleanValue, strArr3, z, str, strArr2, configUtil.getIsFilterApps(), configUtil.getIsFilterBypassMode(), configUtil.getFilterApps(), ConfigUtil.getIsTetheringSubnet(), configUtil.getBypass()));
                if (this.mContext.startService(intent) != null) {
                    TunnelState.getTunnelState().setStartingTunnelManager();
                    return;
                } else {
                    TkLogStatus.logInfo(R.string.service_tunnel_failed, new Object[0]);
                    throw new IOException(this.mContext.getString(R.string.vpn_service_failed));
                }
            } catch (UnknownHostException unused) {
                throw new IOException(this.mContext.getString(R.string.error_server_ip_invalid));
            }
        }
        throw new IOException();
    }

    public void stopAll() {
        if (this.mStopping) {
            return;
        }
        new Thread(new RunnableC1044x8c43c726(this, 4)).start();
    }

    public void stopForwarder() {
        stopTunnelVpnService();
    }

    public synchronized void stopTunnelVpnService() {
        try {
            if (!isServiceVpnRunning()) {
                return;
            }
            TkLogStatus.logInfo(R.string.service_tunnel_stopping, new Object[0]);
            TunnelVpnManager tunnelManager = TunnelState.getTunnelState().getTunnelManager();
            if (tunnelManager != null) {
                tunnelManager.signalStopService();
            }
            LocalBroadcastManager.getInstance(this.mContext).unregisterReceiver(this.m_vpnTunnelBroadcastReceiver);
        } catch (Throwable th) {
            throw th;
        }
    }
}
