package app.tunnel.ssh2.tunnel.vpn;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.VpnService;
import android.os.ParcelFileDescriptor;
import app.tunnel.ssh2.tunnel.vpn.NetworkSpace;
import app.tunnel.ssh2.tunnel.vpn.Pdnsd;
import app.tunnel.ssh2.tunnel.vpn.Tun2Socks;
import app.tunnel.vpncommons.utils.VpnUtils;
import de.blinkt.openvpn.core.TkLogStatus;
import java.io.IOException;
import java.util.Locale;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class Tunnel {
    private static final String DNS_RESOLVER_IP = "8.8.8.8";
    private static final int DNS_RESOLVER_PORT = 53;
    private static final String VPN_INTERFACE_NETMASK = "255.255.255.0";
    private static Tunnel mTunnel;
    private Thread mBuilderThread;
    private final HostService mHostService;
    private Pdnsd mPdnsd;
    private VpnUtils.PrivateAddress mPrivateAddress;
    private Tun2Socks mTun2Socks;
    private Thread mTun2SocksThread;
    private final int mMtu = 1500;
    private final ParcelFileDescriptor mInterface = null;
    private final AtomicReference<ParcelFileDescriptor> mTunFd = new AtomicReference<>();
    private final AtomicBoolean mRoutingThroughTunnel = new AtomicBoolean(false);
    private final NetworkSpace mRoutes = new NetworkSpace();

    /* loaded from: classes.dex */
    public interface HostService {
        String getAppName();

        Context getContext();

        Object getVpnService();

        Object newVpnServiceBuilder();

        void onDiagnosticMessage(String str);

        void onTunnelConnected();

        void onVpnEstablished();
    }

    private Tunnel(HostService hostService) {
        this.mHostService = hostService;
    }

    public static synchronized Tunnel newTunnel(HostService hostService) {
        Tunnel tunnel;
        synchronized (Tunnel.class) {
            try {
                Tunnel tunnel2 = mTunnel;
                if (tunnel2 != null) {
                    tunnel2.stop();
                }
                tunnel = new Tunnel(hostService);
                mTunnel = tunnel;
            } catch (Throwable th) {
                throw th;
            }
        }
        return tunnel;
    }

    private boolean routeThroughTunnel(String str, String[] strArr, boolean z, String str2, boolean z2) {
        ParcelFileDescriptor parcelFileDescriptor;
        String str3;
        if (!this.mRoutingThroughTunnel.compareAndSet(false, true) || (parcelFileDescriptor = this.mTunFd.get()) == null) {
            return false;
        }
        if (z) {
            int findAvailablePort = VpnUtils.findAvailablePort(8091, 10);
            str3 = String.format("%s:%d", this.mPrivateAddress.mIpAddress, Integer.valueOf(findAvailablePort));
            Pdnsd pdnsd = new Pdnsd(this.mHostService.getContext(), strArr, 53, this.mPrivateAddress.mIpAddress, findAvailablePort);
            this.mPdnsd = pdnsd;
            pdnsd.setOnPdnsdListener(new Pdnsd.OnPdnsdListener() { // from class: app.tunnel.ssh2.tunnel.vpn.Tunnel.1
                @Override // app.tunnel.ssh2.tunnel.vpn.Pdnsd.OnPdnsdListener
                public void onStart() {
                    Tunnel.this.mHostService.onDiagnosticMessage("DNS Forwarding Started");
                }

                @Override // app.tunnel.ssh2.tunnel.vpn.Pdnsd.OnPdnsdListener
                public void onStop() {
                    Tunnel.this.mHostService.onDiagnosticMessage("DNS Forwarding Stopped");
                    Tunnel.this.stop();
                }
            });
            this.mPdnsd.start();
        } else {
            str3 = null;
        }
        Tun2Socks tun2Socks = new Tun2Socks(this.mHostService.getContext(), parcelFileDescriptor, 1500, this.mPrivateAddress.mRouter, "255.255.255.0", str, str2, str3, z2);
        this.mTun2Socks = tun2Socks;
        tun2Socks.setOnTun2SocksListener(new Tun2Socks.OnTun2SocksListener() { // from class: app.tunnel.ssh2.tunnel.vpn.Tunnel.2
            @Override // app.tunnel.ssh2.tunnel.vpn.Tun2Socks.OnTun2SocksListener
            public void onStart() {
                Tunnel.this.mHostService.onDiagnosticMessage("tun2socks started");
            }

            @Override // app.tunnel.ssh2.tunnel.vpn.Tun2Socks.OnTun2SocksListener
            public void onStop() {
                Tunnel.this.mHostService.onDiagnosticMessage("tun2socks stopped");
                Tunnel.this.stop();
            }
        });
        this.mTun2Socks.start();
        this.mHostService.onTunnelConnected();
        return true;
    }

    private boolean startVpn(boolean z, String[] strArr, String[] strArr2, boolean z2, boolean z3, String[] strArr3, boolean z4, boolean z5) {
        int i;
        int i2 = 1;
        StringBuilder sb = new StringBuilder("Routes: ");
        StringBuilder sb2 = new StringBuilder("Routes Excluded: ");
        this.mPrivateAddress = VpnUtils.selectPrivateAddress();
        int length = strArr2.length;
        int i3 = 0;
        while (true) {
            i = 32;
            if (i3 >= length) {
                break;
            }
            this.mRoutes.addIP(new CIDRIP(strArr2[i3], 32), false);
            i3++;
        }
        Locale locale = Locale.getDefault();
        try {
            try {
                try {
                    Locale.setDefault(new Locale("en"));
                    VpnService.Builder builder = (VpnService.Builder) this.mHostService.newVpnServiceBuilder();
                    VpnUtils.PrivateAddress privateAddress = this.mPrivateAddress;
                    VpnService.Builder addAddress = builder.addAddress(privateAddress.mIpAddress, privateAddress.mPrefixLength);
                    this.mRoutes.addIP(new CIDRIP("0.0.0.0", 0), true);
                    this.mRoutes.addIP(new CIDRIP("10.0.0.0", 8), false);
                    NetworkSpace networkSpace = this.mRoutes;
                    VpnUtils.PrivateAddress privateAddress2 = this.mPrivateAddress;
                    networkSpace.addIP(new CIDRIP(privateAddress2.mSubnet, privateAddress2.mPrefixLength), false);
                    if (z4) {
                        this.mRoutes.addIP(new CIDRIP("192.168.42.0", 23), false);
                        this.mRoutes.addIP(new CIDRIP("192.168.44.0", 24), false);
                        this.mRoutes.addIP(new CIDRIP("192.168.49.0", 24), false);
                    }
                    this.mRoutes.addIP(new CIDRIP("169.254.1.0", 24), false);
                    int length2 = strArr.length;
                    int i4 = 0;
                    while (i4 < length2) {
                        String str = strArr[i4];
                        try {
                            addAddress.addDnsServer(str);
                        } catch (IllegalArgumentException e) {
                            e = e;
                        }
                        try {
                            this.mRoutes.addIP(new CIDRIP(str, i), z);
                        } catch (IllegalArgumentException e2) {
                            e = e2;
                            TkLogStatus.logInfo("Error Adding dns " + str + ", " + e.getLocalizedMessage());
                            i2 = 1;
                            i4 += i2;
                            i = 32;
                        }
                        i4 += i2;
                        i = 32;
                    }
                    addAddress.setMtu(1500);
                    for (NetworkSpace.IpAddress ipAddress : this.mRoutes.getNetworks(true)) {
                        sb.append(String.format("%s/%d", ipAddress.getIPv4Address(), Integer.valueOf(ipAddress.networkMask)));
                        sb.append(", ");
                    }
                    sb.deleteCharAt(sb.lastIndexOf(", "));
                    for (NetworkSpace.IpAddress ipAddress2 : this.mRoutes.getNetworks(false)) {
                        sb2.append(String.format("%s/%d", ipAddress2.getIPv4Address(), Integer.valueOf(ipAddress2.networkMask)));
                        sb2.append(", ");
                    }
                    sb2.deleteCharAt(sb2.lastIndexOf(", "));
                    logs(sb.toString());
                    logs(sb2.toString());
                    this.mHostService.onDiagnosticMessage(sb.toString());
                    NetworkSpace.IpAddress ipAddress3 = new NetworkSpace.IpAddress(new CIDRIP("224.0.0.0", 3), true);
                    for (NetworkSpace.IpAddress ipAddress4 : this.mRoutes.getPositiveIPList()) {
                        try {
                            if (ipAddress3.containsNet(ipAddress4)) {
                                TkLogStatus.logDebug("VPN: Ignoring multicast route: " + ipAddress4);
                            } else {
                                addAddress.addRoute(ipAddress4.getIPv4Address(), ipAddress4.networkMask);
                            }
                        } catch (IllegalArgumentException unused) {
                        }
                    }
                    if (z5) {
                        this.mHostService.onDiagnosticMessage("<strong>UDP Bypass OK</strong>");
                        addAddress.addDisallowedApplication(this.mHostService.getContext().getPackageName());
                    }
                    if (z2) {
                        for (String str2 : strArr3) {
                            if (z3) {
                                try {
                                    addAddress.addDisallowedApplication(str2);
                                    this.mHostService.onDiagnosticMessage("Filtro de Apps: Vpn desativada para \"" + str2 + "\"");
                                } catch (PackageManager.NameNotFoundException unused2) {
                                    this.mHostService.onDiagnosticMessage("Aplicativo \"" + str2 + "\" não encontrado. Filtro de Apps não irá funcionar, verifique as configurações.");
                                }
                            } else {
                                addAddress.addAllowedApplication(str2);
                                this.mHostService.onDiagnosticMessage("Filtro de Apps: Vpn ativada para \"" + str2 + "\"");
                            }
                        }
                    }
                    ParcelFileDescriptor establish = addAddress.setSession(this.mHostService.getAppName()).setConfigureIntent(VpnUtils.getGraphPendingIntent(this.mHostService.getContext())).establish();
                    if (establish == null) {
                        Locale.setDefault(locale);
                        return false;
                    }
                    this.mTunFd.set(establish);
                    this.mRoutingThroughTunnel.set(false);
                    this.mHostService.onVpnEstablished();
                    this.mRoutes.clear();
                    Locale.setDefault(locale);
                    return true;
                } catch (IllegalArgumentException e3) {
                    e = e3;
                    throw new Exception("startVpn failed", e);
                }
            } catch (Throwable th) {
                Locale.setDefault(locale);
                throw th;
            }
        } catch (IllegalStateException e4) {
            e = e4;
            throw new Exception("startVpn failed", e);
        } catch (SecurityException e5) {
            e = e5;
            throw new Exception("startVpn failed", e);
        }
    }

    private void stopRoutingThroughTunnel() {
        Tun2Socks tun2Socks = this.mTun2Socks;
        if (tun2Socks != null && tun2Socks.isAlive()) {
            this.mTun2Socks.interrupt();
        }
        this.mTun2Socks = null;
        stopTun2Socks();
        Pdnsd pdnsd = this.mPdnsd;
        if (pdnsd != null && pdnsd.isAlive()) {
            this.mPdnsd.interrupt();
        }
        this.mPdnsd = null;
    }

    private void stopTun2Socks() {
        Thread thread = this.mTun2SocksThread;
        if (thread != null) {
            try {
                thread.join();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
            this.mTun2SocksThread = null;
            this.mRoutingThroughTunnel.set(false);
            this.mHostService.onDiagnosticMessage("tun2socks stopped");
        }
    }

    private void stopVpn() {
        submit_destroy_builder();
        ParcelFileDescriptor andSet = this.mTunFd.getAndSet(null);
        if (andSet != null) {
            try {
                this.mHostService.onDiagnosticMessage("<strong>Disconnected</strong>");
                andSet.close();
            } catch (IOException unused) {
            }
        }
    }

    private void submit_destroy_builder() {
        new Thread(new Runnable() { // from class: app.tunnel.ssh2.tunnel.vpn.Tunnel.3
            @Override // java.lang.Runnable
            public void run() {
                try {
                    if (Tunnel.this.mPdnsd != null && Tunnel.this.mPdnsd.isAlive()) {
                        Tunnel.this.mPdnsd.interrupt();
                    }
                    Tunnel.this.mPdnsd = null;
                    if (Tunnel.this.mTun2Socks != null && Tunnel.this.mTun2Socks.isAlive()) {
                        Tunnel.this.mTun2Socks.interrupt();
                    }
                    Tunnel.this.mTun2Socks = null;
                    if (Tunnel.this.mInterface != null) {
                        Tunnel.this.mInterface.close();
                        Tunnel.this.logs("Closing interface, destroying VPN interface");
                    }
                } catch (Exception e) {
                    Tunnel.this.logs("VPN interface error: " + e.getMessage());
                    Tunnel.this.logs("Failed to close the VPN interface file descriptor.");
                }
            }
        }).start();
    }

    public Object clone() {
        throw new CloneNotSupportedException();
    }

    public void logs(String str) {
        TkLogStatus.logInfo(str);
    }

    public synchronized boolean startRouting(TunnelVpnSettings tunnelVpnSettings) {
        return startVpn(tunnelVpnSettings.mDnsForward, tunnelVpnSettings.mDnsResolver, tunnelVpnSettings.mExcludeIps, tunnelVpnSettings.mEnableFilterApps, tunnelVpnSettings.mFilterBypassMode, tunnelVpnSettings.mFilterApps, tunnelVpnSettings.mTetheringSubnet, tunnelVpnSettings.bypass);
    }

    public synchronized boolean startTunneling(String str, String[] strArr, boolean z, String str2, boolean z2) {
        return routeThroughTunnel(str, strArr, z, str2, z2);
    }

    public synchronized void stop() {
        stopVpn();
    }

    public synchronized void stopTunneling() {
        submit_destroy_builder();
    }
}
