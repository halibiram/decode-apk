package app.tunnel.ssh2.tunnel.vpn;

import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class TunnelState {
    private static TunnelState m_tunnelState;
    private TunnelVpnManager m_tunnelManager = null;
    private boolean m_startingTunnelManager = false;

    private TunnelState() {
    }

    public static synchronized TunnelState getTunnelState() {
        TunnelState tunnelState;
        synchronized (TunnelState.class) {
            try {
                if (m_tunnelState == null) {
                    m_tunnelState = new TunnelState();
                }
                tunnelState = m_tunnelState;
            } catch (Throwable th) {
                throw th;
            }
        }
        return tunnelState;
    }

    @NonNull
    public Object clone() {
        throw new CloneNotSupportedException();
    }

    public synchronized boolean getStartingTunnelManager() {
        return this.m_startingTunnelManager;
    }

    public synchronized TunnelVpnManager getTunnelManager() {
        return this.m_tunnelManager;
    }

    public synchronized void setStartingTunnelManager() {
        this.m_startingTunnelManager = true;
    }

    public synchronized void setTunnelManager(TunnelVpnManager tunnelVpnManager) {
        this.m_tunnelManager = tunnelVpnManager;
        this.m_startingTunnelManager = false;
    }
}
