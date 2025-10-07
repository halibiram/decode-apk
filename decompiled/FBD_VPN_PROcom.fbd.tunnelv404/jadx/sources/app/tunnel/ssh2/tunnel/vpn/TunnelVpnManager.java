package app.tunnel.ssh2.tunnel.vpn;

import android.content.Context;
import android.content.Intent;
import android.net.VpnService;
import app.tunnel.ssh2.tunnel.vpn.Tunnel;
import com.fbd.tunnel.R;
import de.blinkt.openvpn.core.TkLogStatus;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public class TunnelVpnManager implements Tunnel.HostService {
    private static final String TAG = "TunnelManager";
    public static final String VPN_SETTINGS = "vpnSettings";
    private TunnelVpnSettings mSettings;
    private TunnelVpnService m_parentService;
    private Tunnel m_tunnel;
    private Thread m_tunnelThread;
    private CountDownLatch m_tunnelThreadStopSignal;
    private final AtomicBoolean m_isStopping = new AtomicBoolean(false);
    private final AtomicBoolean m_isReconnecting = new AtomicBoolean(false);

    /* loaded from: classes.dex */
    public interface ManagerListener {
        void onLog(String str);
    }

    public TunnelVpnManager(TunnelVpnService tunnelVpnService) {
        this.m_tunnel = null;
        this.m_parentService = tunnelVpnService;
        this.m_tunnel = Tunnel.newTunnel(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0076, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0073, code lost:
    
        if (r9.m_isReconnecting.get() == false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void runTunnel(String str, String[] strArr, boolean z, String str2, boolean z2) {
        this.m_isStopping.set(false);
        try {
            try {
                if (this.m_tunnel.startTunneling(str, strArr, z, str2, z2)) {
                    this.m_parentService.broadcastVpnStart(true);
                    try {
                        this.m_tunnelThreadStopSignal.await();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                    this.m_isStopping.set(true);
                } else {
                    throw new Exception("application is not prepared or revoked");
                }
            } catch (Exception e) {
                new StringBuilder("Start tunnel failed: ").append(e.getMessage());
                this.m_parentService.broadcastVpnStart(false);
            }
        } finally {
            if (this.m_isReconnecting.get()) {
                this.m_tunnel.stopTunneling();
            } else {
                this.m_tunnel.stop();
                this.m_parentService.stopForeground(true);
                this.m_parentService.stopSelf();
            }
            this.m_isReconnecting.set(false);
        }
    }

    private void startTunnel() {
        this.m_tunnelThreadStopSignal = new CountDownLatch(1);
        Thread thread = new Thread(new Runnable() { // from class: app.tunnel.ssh2.tunnel.vpn.TunnelVpnManager.1
            @Override // java.lang.Runnable
            public void run() {
                TunnelVpnManager tunnelVpnManager = TunnelVpnManager.this;
                tunnelVpnManager.runTunnel(tunnelVpnManager.mSettings.mSocksServer, TunnelVpnManager.this.mSettings.mDnsResolver, TunnelVpnManager.this.mSettings.mDnsForward, TunnelVpnManager.this.mSettings.mUdpResolver, TunnelVpnManager.this.mSettings.mUdpDnsRelay);
            }
        });
        this.m_tunnelThread = thread;
        thread.start();
    }

    @Override // app.tunnel.ssh2.tunnel.vpn.Tunnel.HostService
    public String getAppName() {
        return getContext().getString(R.string.app_name);
    }

    @Override // app.tunnel.ssh2.tunnel.vpn.Tunnel.HostService
    public Context getContext() {
        return this.m_parentService;
    }

    public void onDestroy() {
        if (this.m_tunnelThread == null) {
            return;
        }
        signalStopService();
        try {
            this.m_tunnelThread.join();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
        }
        this.m_tunnelThreadStopSignal = null;
        this.m_tunnelThread = null;
    }

    @Override // app.tunnel.ssh2.tunnel.vpn.Tunnel.HostService
    public void onDiagnosticMessage(String str) {
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        if (intent == null) {
            this.m_parentService.broadcastVpnStart(false);
            return 0;
        }
        TunnelVpnSettings tunnelVpnSettings = (TunnelVpnSettings) intent.getParcelableExtra(VPN_SETTINGS);
        this.mSettings = tunnelVpnSettings;
        if (tunnelVpnSettings == null) {
            this.m_parentService.broadcastVpnStart(false);
            return 0;
        }
        if (tunnelVpnSettings.mSocksServer == null) {
            this.m_parentService.broadcastVpnStart(false);
            return 0;
        }
        if (tunnelVpnSettings.mDnsResolver == null) {
            this.m_parentService.broadcastVpnStart(false);
            return 0;
        }
        try {
            if (!this.m_tunnel.startRouting(tunnelVpnSettings)) {
                this.m_parentService.broadcastVpnStart(false);
                return 2;
            }
            return 2;
        } catch (Exception e) {
            new StringBuilder("Failed to establish VPN: ").append(e.getMessage());
            this.m_parentService.broadcastVpnStart(false);
            return 2;
        }
    }

    @Override // app.tunnel.ssh2.tunnel.vpn.Tunnel.HostService
    public void onTunnelConnected() {
        TkLogStatus.logInfo("<strong>VPN Connected</strong>");
    }

    @Override // app.tunnel.ssh2.tunnel.vpn.Tunnel.HostService
    public void onVpnEstablished() {
        startTunnel();
    }

    public void restartTunnel(String str) {
        if (str != null && !str.equals(this.mSettings.mSocksServer)) {
            this.mSettings.mSocksServer = str;
            this.m_isReconnecting.set(true);
            signalStopService();
            return;
        }
        this.m_parentService.broadcastVpnStart(true);
    }

    public void signalStopService() {
        CountDownLatch countDownLatch = this.m_tunnelThreadStopSignal;
        if (countDownLatch != null) {
            countDownLatch.countDown();
        }
    }

    @Override // app.tunnel.ssh2.tunnel.vpn.Tunnel.HostService
    public VpnService getVpnService() {
        return this.m_parentService;
    }

    @Override // app.tunnel.ssh2.tunnel.vpn.Tunnel.HostService
    public VpnService.Builder newVpnServiceBuilder() {
        return this.m_parentService.newBuilder();
    }
}
