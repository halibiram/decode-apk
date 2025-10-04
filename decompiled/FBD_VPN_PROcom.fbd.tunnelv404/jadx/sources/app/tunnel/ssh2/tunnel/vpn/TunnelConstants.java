package app.tunnel.ssh2.tunnel.vpn;

import app.tunnel.vpncommons.VpnConstants;

/* loaded from: classes.dex */
public interface TunnelConstants {
    public static final String ACTION_SERVICE_RESTART = "actionservicerestart";
    public static final String ACTION_SERVICE_STOP = "actionstopservice";
    public static final String APP_SOCKSVPN_KEY = "socksvpnkey";
    public static final String[] DNS_RESOLVERS_IP = {VpnConstants.DEFAULT_PRIMARY_DNS, VpnConstants.DEFAULT_SECONDARY_DNS};
    public static final int DNS_RESOLVER_PORT = 53;
    public static final int FILE_WRITE_BUFFER_SIZE = 2048;
    public static final String PREFS_DNS_PORT = "PREFS_DNS_PORT";
    public static final String PREFS_KEY_TORIFIED = "PrefTord";
    public static final String PREF_TOR_SHARED_PREFS = "org.torproject.android_preferences";
    public static final String SHELL_CMD_PS = "toolbox ps";
    public static final int VPN_INTERFACE_MTU = 1500;
    public static final String VPN_INTERFACE_NETMASK = "255.255.255.0";
}
