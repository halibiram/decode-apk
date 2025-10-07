package app.tunnel.ssh2.tunnel.vpn;

import android.content.Context;
import android.net.LocalSocket;
import android.net.LocalSocketAddress;
import android.os.ParcelFileDescriptor;
import androidx.core.content.ContextCompat;
import app.tunnel.vpncommons.utils.CustomNativeLoader;
import app.tunnel.vpncommons.utils.StreamGobbler;
import app.tunnel.vpncommons.utils.VpnUtils;
import de.blinkt.openvpn.core.TkLogStatus;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;

/* loaded from: classes.dex */
public class Tun2Socks extends Thread implements StreamGobbler.OnLineListener {
    private static final String TAG = "Tun2Socks";
    private static final String TUN2SOCKS_BIN = "libtun2socks";
    private File fileTun2Socks;
    private final Context mContext;
    private final String mDnsResolverAddress;
    private OnTun2SocksListener mListener;
    private final String mSocksServerAddress;
    private final String mUdpgwServerAddress;
    private final boolean mUdpgwTransparentDNS;
    private final ParcelFileDescriptor mVpnInterfaceFileDescriptor;
    private final int mVpnInterfaceMTU;
    private final String mVpnIpAddress;
    private final String mVpnNetMask;
    private Process tun2SocksProcess;

    /* loaded from: classes.dex */
    public interface OnTun2SocksListener {
        void onStart();

        void onStop();
    }

    public Tun2Socks(Context context, ParcelFileDescriptor parcelFileDescriptor, int i, String str, String str2, String str3, String str4, String str5, boolean z) {
        this.mContext = context;
        this.mVpnInterfaceFileDescriptor = parcelFileDescriptor;
        this.mVpnInterfaceMTU = i;
        this.mVpnIpAddress = str;
        this.mVpnNetMask = str2;
        this.mSocksServerAddress = str3;
        this.mUdpgwServerAddress = str4;
        this.mDnsResolverAddress = str5;
        this.mUdpgwTransparentDNS = z;
    }

    private boolean sendFd(ParcelFileDescriptor parcelFileDescriptor, File file) {
        TkLogStatus.logDebug("Sending FD to socks");
        for (int i = 10; i >= 0; i--) {
            try {
                LocalSocket localSocket = new LocalSocket();
                localSocket.connect(new LocalSocketAddress(file.getAbsolutePath(), LocalSocketAddress.Namespace.FILESYSTEM));
                localSocket.setFileDescriptorsForSend(new FileDescriptor[]{parcelFileDescriptor.getFileDescriptor()});
                localSocket.getOutputStream().write(42);
                localSocket.shutdownOutput();
                localSocket.close();
                return true;
            } catch (IOException unused) {
                Thread.sleep(500L);
            }
        }
        return false;
    }

    @Override // java.lang.Thread
    public synchronized void interrupt() {
        super.interrupt();
        Process process = this.tun2SocksProcess;
        if (process != null) {
            process.destroy();
        }
        try {
            File file = this.fileTun2Socks;
            if (file != null) {
                VpnUtils.killProcess(file);
            }
        } catch (Exception unused) {
        }
        this.tun2SocksProcess = null;
        this.fileTun2Socks = null;
    }

    @Override // app.tunnel.vpncommons.utils.StreamGobbler.OnLineListener
    public void onLine(String str) {
        TkLogStatus.logDebug("Tun2Socks: " + str);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        StringBuilder sb;
        File loadNativeBinary;
        OnTun2SocksListener onTun2SocksListener = this.mListener;
        if (onTun2SocksListener != null) {
            onTun2SocksListener.onStart();
        }
        try {
            try {
                sb = new StringBuilder();
                loadNativeBinary = CustomNativeLoader.loadNativeBinary(this.mContext, TUN2SOCKS_BIN, new File(this.mContext.getFilesDir(), TUN2SOCKS_BIN));
                this.fileTun2Socks = loadNativeBinary;
            } catch (Exception e) {
                TkLogStatus.logDebug("Tun2Socks Error: " + e.getMessage());
            }
        } catch (IOException e2) {
            TkLogStatus.logException("Tun2Socks Error", e2);
        }
        if (loadNativeBinary != null) {
            if (this.mVpnInterfaceFileDescriptor != null) {
                File file = new File(ContextCompat.getDataDir(this.mContext), "sock_path");
                try {
                    if (!file.exists()) {
                        file.createNewFile();
                    }
                    sb.append(this.fileTun2Socks.getCanonicalPath());
                    sb.append(" --netif-ipaddr ");
                    sb.append(this.mVpnIpAddress);
                    sb.append(" --netif-netmask ");
                    sb.append(this.mVpnNetMask);
                    sb.append(" --socks-server-addr ");
                    sb.append(this.mSocksServerAddress);
                    sb.append(" --tunmtu ");
                    sb.append(this.mVpnInterfaceMTU);
                    sb.append(" --tunfd ");
                    sb.append(this.mVpnInterfaceFileDescriptor.getFd());
                    sb.append(" --sock ");
                    sb.append(file.getAbsolutePath());
                    sb.append(" --loglevel 3");
                    if (this.mUdpgwServerAddress != null) {
                        if (this.mUdpgwTransparentDNS) {
                            sb.append(" --udpgw-transparent-dns");
                        }
                        sb.append(" --udpgw-remote-server-addr ");
                        sb.append(this.mUdpgwServerAddress);
                    }
                    if (this.mDnsResolverAddress != null) {
                        sb.append(" --dnsgw ");
                        sb.append(this.mDnsResolverAddress);
                    }
                    Process exec = Runtime.getRuntime().exec(sb.toString());
                    this.tun2SocksProcess = exec;
                    StreamGobbler streamGobbler = new StreamGobbler(exec.getInputStream(), this);
                    StreamGobbler streamGobbler2 = new StreamGobbler(this.tun2SocksProcess.getErrorStream(), this);
                    streamGobbler.start();
                    streamGobbler2.start();
                    if (sendFd(this.mVpnInterfaceFileDescriptor, file)) {
                        this.tun2SocksProcess.waitFor();
                    } else {
                        throw new IOException("Failed to send Fd to sock, this may not be supported on your device. Please contact the developer.");
                    }
                } catch (IOException unused) {
                    throw new IOException("Falha ao criar arquivo: " + file.getCanonicalPath());
                }
            }
            this.tun2SocksProcess = null;
            OnTun2SocksListener onTun2SocksListener2 = this.mListener;
            if (onTun2SocksListener2 != null) {
                onTun2SocksListener2.onStop();
                return;
            }
            return;
        }
        throw new IOException("Bin Tun2Socks not found");
    }

    public void setOnTun2SocksListener(OnTun2SocksListener onTun2SocksListener) {
        this.mListener = onTun2SocksListener;
    }
}
