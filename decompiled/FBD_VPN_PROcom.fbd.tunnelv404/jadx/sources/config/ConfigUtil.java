package config;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.preference.PreferenceManager;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.exifinterface.media.ExifInterface;
import app.tunnel.ssh2.tunnel.vpn.TunnelUtils;
import app.tunnel.vpncommons.VpnConstants;
import de.blinkt.openvpn.core.TkLogStatus;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import kotlinx.coroutines.DebugKt;

/* loaded from: classes3.dex */
public class ConfigUtil {
    public static final int MODE_DNSTT_OVPN = 10;
    public static final int MODE_DNSTT_SSH = 9;
    public static final int MODE_OVPN_DIRECT_UDP = 7;
    public static final int MODE_PSIPHON = 12;
    public static final int MODE_SSH_DIRECT = 0;
    public static final int MODE_SSH_DIRECT_WITH_PAYLOAD = 1;
    public static final int MODE_SSH_HTTP_PROXY = 2;
    public static final int MODE_SSL_DIRECT = 3;
    public static final int MODE_SSL_DIRECT_WITH_PAYLOAD = 4;
    public static final int MODE_SSL_HTTP_PROXY = 5;
    public static final int MODE_UDP = 6;
    public static final int MODE_V2RAY = 8;
    public static final int MODE_WIREGUARD = 11;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static ConfigUtil f1007x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static SharedPreferences f1008x75d576dc;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final SharedPreferences.Editor f1009xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final ConnectivityManager f1010x3271d0aa;

    public ConfigUtil(Context context) {
        this.f1010x3271d0aa = (ConnectivityManager) context.getSystemService("connectivity");
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
        f1008x75d576dc = defaultSharedPreferences;
        this.f1009xfbe0c504 = defaultSharedPreferences.edit();
    }

    public static PendingIntent getContentIntent(Context context) {
        return null;
    }

    public static PendingIntent getGraphPendingIntent(Context context) {
        Intent intent = new Intent();
        intent.setComponent(new ComponentName(context, "com.tknetwork.tunnel.activities.MainActivity"));
        intent.putExtra("PAGE", "graph");
        intent.addFlags(131072);
        PendingIntent activity = PendingIntent.getActivity(context, 0, intent, AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
        intent.addFlags(131072);
        return activity;
    }

    public static ConfigUtil getInstance(Context context) {
        if (f1007x1378447b == null) {
            f1007x1378447b = new ConfigUtil(context);
        }
        return f1007x1378447b;
    }

    public static boolean getIsTetheringSubnet() {
        return f1008x75d576dc.getBoolean(SettingsConstants.TETHERING_SUBNET, false);
    }

    public static PendingIntent getPendingIntent(Context context) {
        PendingIntent contentIntent = getContentIntent(context);
        if (contentIntent == null) {
            return getGraphPendingIntent(context);
        }
        return contentIntent;
    }

    public static String hide(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            sb.append("*");
        }
        return sb.toString();
    }

    public static void setDefaultConfig(Context context) {
        SharedPreferences.Editor edit = PreferenceManager.getDefaultSharedPreferences(context).edit();
        edit.putString(null, "clients3.google.com");
        edit.putBoolean(SettingsConstants.AUTO_PINGER, false);
        edit.putBoolean(SettingsConstants.WAKELOCK, true);
        edit.putBoolean(SettingsConstants.DNSFORWARD_KEY, true);
        edit.putString(SettingsConstants.DNSRESOLVER_KEY1, VpnConstants.DEFAULT_SECONDARY_DNS);
        edit.putString(SettingsConstants.DNSRESOLVER_KEY2, VpnConstants.DEFAULT_PRIMARY_DNS);
        edit.putString(SettingsConstants.DNSRESOLVER_KEY, VpnConstants.DEFAULT_PRIMARY_DNS);
        edit.putBoolean(SettingsConstants.UDPFORWARD_KEY, false);
        edit.putString(SettingsConstants.UDPRESOLVER_KEY, "127.0.0.1:7300");
        edit.putString(SettingsConstants.MODO_NOTURNO_KEY, DebugKt.DEBUG_PROPERTY_VALUE_OFF);
        edit.putBoolean(SettingsConstants.VIBRATE, true);
        edit.putString(SettingsConstants.PINGER_KEY, ExifInterface.GPS_MEASUREMENT_3D);
        edit.putString(SettingsConstants.MAXIMO_THREADS_KEY, "8th");
        edit.remove(SettingsConstants.MODO_DEBUG_KEY);
        edit.remove(SettingsConstants.HIDE_LOG_KEY);
        edit.remove(SettingsConstants.AUTO_CLEAR_LOGS_KEY);
        edit.remove(SettingsConstants.FILTER_APPS);
        edit.remove(SettingsConstants.FILTER_BYPASS_MODE);
        edit.remove(SettingsConstants.FILTER_APPS_LIST);
        edit.remove(SettingsConstants.TETHERING_SUBNET);
        edit.remove(SettingsConstants.data_compression_key);
        edit.remove(SettingsConstants.DISABLE_DELAY_KEY);
        edit.apply();
    }

    public boolean CustomPayload() {
        return f1008x75d576dc.getBoolean("custom_payload_cb", false);
    }

    public void clear() {
        this.f1009xfbe0c504.clear().apply();
    }

    public void clearSplit() {
        this.f1009xfbe0c504.clear().apply();
    }

    public boolean get() {
        return f1008x75d576dc.getBoolean("get", false);
    }

    public String getAddress() {
        return f1008x75d576dc.getString("Address", "");
    }

    public String getAllowedIP() {
        return f1008x75d576dc.getString("AllowedIP", "");
    }

    public String getApi() {
        return f1008x75d576dc.getString("Api", "");
    }

    public String getAppTheme() {
        return f1008x75d576dc.getString("theme", DebugKt.DEBUG_PROPERTY_VALUE_OFF);
    }

    public boolean getAppThemeUtil() {
        return f1008x75d576dc.getBoolean("THEME_UTIL_KEY", false);
    }

    public boolean getAutoClearLog() {
        return f1008x75d576dc.getBoolean(SettingsConstants.AUTO_CLEAR_LOGS_KEY, true);
    }

    public boolean getAutoLogin() {
        return f1008x75d576dc.getBoolean("AutoLogin", true);
    }

    public String getBackQueryString() {
        return f1008x75d576dc.getString("BackQuery", "");
    }

    public boolean getBanner() {
        return f1008x75d576dc.getBoolean("Banner", false);
    }

    public String getBlockApps() {
        return f1008x75d576dc.getString("BlockApps", "");
    }

    public boolean getBypass() {
        return f1008x75d576dc.getBoolean(SettingsConstants.BYPASS_KEY, false);
    }

    public long getBytesIn() {
        return f1008x75d576dc.getLong("bytesin", 0L);
    }

    public long getBytesOut() {
        return f1008x75d576dc.getLong("bytesout", 0L);
    }

    public String getCategory() {
        return f1008x75d576dc.getString("Category", "");
    }

    public String getColor() {
        return f1008x75d576dc.getString("Color_", "#ff009900");
    }

    public boolean getCompression() {
        return f1008x75d576dc.getBoolean("Data_compression_key", true);
    }

    public String getCon() {
        return f1008x75d576dc.getString("setCon", "");
    }

    public boolean getConReplace() {
        return f1008x75d576dc.getBoolean("ConReplace", true);
    }

    public String getConfigVersion() {
        return f1008x75d576dc.getString("ConfigVersion", "1.0");
    }

    public String getConnectedSpit() {
        return f1008x75d576dc.getString(getServerSelectedName(), "");
    }

    public String getConnectionType() {
        return f1008x75d576dc.getString("mConnectionType", "OPENVPN");
    }

    public String getCustomC() {
        return f1008x75d576dc.getString("CustomC", "");
    }

    public String getCustomCertificate() {
        return f1008x75d576dc.getString("CustomCertificate", "");
    }

    public String getCustomDNSPRIMARY() {
        return f1008x75d576dc.getString("Custom_DNS_PRIMARY", VpnConstants.DEFAULT_PRIMARY_DNS);
    }

    public String getCustomDNSSECONDARY() {
        return f1008x75d576dc.getString("Custom_DNS_SECONDARY", VpnConstants.DEFAULT_SECONDARY_DNS);
    }

    public boolean getCustomI() {
        return f1008x75d576dc.getBoolean("CustomI", false);
    }

    public boolean getCustomN() {
        return f1008x75d576dc.getBoolean("CustomN", false);
    }

    public int getCustomProtocolSelectedPosition() {
        return f1008x75d576dc.getInt("ProtocolSelectedPosition", 0);
    }

    public boolean getCustomS() {
        return f1008x75d576dc.getBoolean("CustomS", false);
    }

    public boolean getCustomSSLPortEnabled() {
        return f1008x75d576dc.getBoolean("CustomSSLPortEnable", false);
    }

    public int getCustomSelectedPosition() {
        return f1008x75d576dc.getInt("CustomSelectedPosition", 0);
    }

    public String getCustomServer() {
        return f1008x75d576dc.getString("CUSTOM_SERVER", "");
    }

    public int getCustomServerProtect() {
        return f1008x75d576dc.getInt("CustomServerProtect", 0);
    }

    public int getCustomServerSelectedPosition() {
        return f1008x75d576dc.getInt("ServerSelectedPosition", 0);
    }

    public boolean getDNSEnableReplace() {
        return f1008x75d576dc.getBoolean("DNSEnableReplace", false);
    }

    public String getDNSPRIMARY() {
        return f1008x75d576dc.getString("DNS_PRIMARY", VpnConstants.DEFAULT_PRIMARY_DNS);
    }

    public String getDNSSECONDARY() {
        return f1008x75d576dc.getString("DNS_SECONDARY", VpnConstants.DEFAULT_SECONDARY_DNS);
    }

    public String getDNSaddress() {
        return f1008x75d576dc.getString("Dnsttdns", "");
    }

    public String getDNSpublicKey() {
        return f1008x75d576dc.getString("ServerCloudFrontHost", "");
    }

    public String getDNSserverName() {
        return f1008x75d576dc.getString("ServerIPHost", "");
    }

    public Boolean getDnsDefault() {
        return Boolean.valueOf(f1008x75d576dc.getBoolean("DnsDefault", false));
    }

    public boolean getDnsPosition() {
        return f1008x75d576dc.getBoolean("dns_position", true);
    }

    public String getDuration() {
        return f1008x75d576dc.getString("Duration", "initializing....");
    }

    public boolean getEnableFreeServer() {
        return f1008x75d576dc.getBoolean("ENABLE_FREE_SERVER", false);
    }

    public boolean getEnableHotspot() {
        return f1008x75d576dc.getBoolean("EnableHotspot", false);
    }

    public boolean getEnableReplace() {
        return f1008x75d576dc.getBoolean("AutoReplace", false);
    }

    public String getEndpoint() {
        return f1008x75d576dc.getString("Endpoint", "");
    }

    public String[] getFilterApps() {
        String string = f1008x75d576dc.getString(SettingsConstants.FILTER_APPS_LIST, "");
        if (string.isEmpty()) {
            return new String[0];
        }
        return string.split("\n");
    }

    public String getFreeServerPassword() {
        return f1008x75d576dc.getString("ServerPass", "");
    }

    public String getFreeServerUsername() {
        return f1008x75d576dc.getString("ServerUser", "");
    }

    public String getFrontQueryString() {
        return f1008x75d576dc.getString("FrontQuery", "");
    }

    public String getInfo() {
        return f1008x75d576dc.getString("ConfigInfo", "");
    }

    public String getIpPublic() {
        NetworkInfo activeNetworkInfo = this.f1010x3271d0aa.getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting()) {
            return TunnelUtils.getLocalIpAddress();
        }
        return "Indisponivel";
    }

    public String getIp_hunter() {
        return f1008x75d576dc.getString("_Ip_hunter", "");
    }

    public String getIp_hunter_ip() {
        return f1008x75d576dc.getString("_Ip_hunter_ip", "");
    }

    public boolean getIsDisabledDelaySSH() {
        return f1008x75d576dc.getBoolean(SettingsConstants.DISABLE_DELAY_KEY, true);
    }

    public boolean getIsFilterApps() {
        return f1008x75d576dc.getBoolean(SettingsConstants.FILTER_APPS, false);
    }

    public boolean getIsFilterBypassMode() {
        return f1008x75d576dc.getBoolean(SettingsConstants.FILTER_BYPASS_MODE, false);
    }

    public boolean getIsScreenOn() {
        return f1008x75d576dc.getBoolean("IS_SCREEN_ON_KEY", true);
    }

    public String getLocalPort() {
        return f1008x75d576dc.getString("LOCAL_PORT", VpnConstants.LOCAL_PORT);
    }

    public String getNetworkSelectedName() {
        return f1008x75d576dc.getString("NETWORK_SELECTED_NAME", "");
    }

    public int getNetworkSelectedPosition() {
        return f1008x75d576dc.getInt("NETWORK_SELECTED_POSITION", 0);
    }

    public boolean getNotice_s() {
        return f1008x75d576dc.getBoolean("Notice_s", false);
    }

    public Boolean getOCS() {
        return Boolean.valueOf(f1008x75d576dc.getBoolean("OPEN_OCS", false));
    }

    public Boolean getOVPN() {
        return Boolean.valueOf(f1008x75d576dc.getBoolean("OPEN_VPN", true));
    }

    public Set<String> getPackageFilterApps() {
        return f1008x75d576dc.getStringSet(SettingsConstants.FILTER_APPS_LIST, new HashSet());
    }

    public String getPassword() {
        return f1008x75d576dc.getString("PASSWORD", "");
    }

    public String getPayload() {
        return f1008x75d576dc.getString("HTTP_PAYLOAD", "");
    }

    public String getPingServer() {
        return f1008x75d576dc.getString("_mPingServer", "clients3.google.com:443");
    }

    public int getPingThread() {
        return f1008x75d576dc.getInt(SettingsConstants.PINGER_KEY, 3);
    }

    public String getPort() {
        return f1008x75d576dc.getString("ovpn_proxyPort", "22");
    }

    public boolean getPowerSaver() {
        return f1008x75d576dc.getBoolean("PAUSE_VPN_ON_BLANKED_SCREEN_KEY", false);
    }

    public String getPreSharedKey() {
        return f1008x75d576dc.getString("PreSharedKey", "");
    }

    public String getPrim() {
        return f1008x75d576dc.getString("Prim", "");
    }

    public String getPrivatekey() {
        return f1008x75d576dc.getString("Privatekey", "");
    }

    public String getProxy() {
        return f1008x75d576dc.getString("PROXY_HOST", "");
    }

    public String getProxyAddress() {
        return f1008x75d576dc.getString("_mProxyAddress", "127.0.0.1:8989");
    }

    public boolean getProxyAuthEnabled() {
        return f1008x75d576dc.getBoolean("ProxyAuth", false);
    }

    public String getProxyPassword() {
        return f1008x75d576dc.getString("ProxyPass", "");
    }

    public String getProxyPort() {
        return f1008x75d576dc.getString("PROXY_PORT", "");
    }

    public String getProxyUsername() {
        return f1008x75d576dc.getString("ProxyUser", "");
    }

    public String getPublickey() {
        return f1008x75d576dc.getString("Publickey", "");
    }

    public int getReconnTime() {
        return f1008x75d576dc.getInt("AUTO_RECONN_TIME_KEY", 5);
    }

    public Boolean getSSH() {
        return Boolean.valueOf(f1008x75d576dc.getBoolean("OPEN_SSH", false));
    }

    public String getSSHHost() {
        return f1008x75d576dc.getString("SSH_HOST", "");
    }

    public String getSSHKeypath() {
        return f1008x75d576dc.getString("KEYPATH_KEY", "");
    }

    public int getSSHPinger() {
        SharedPreferences sharedPreferences = f1008x75d576dc;
        String str = ExifInterface.GPS_MEASUREMENT_3D;
        String string = sharedPreferences.getString("PINGER", ExifInterface.GPS_MEASUREMENT_3D);
        if (!string.isEmpty()) {
            str = string;
        }
        return Integer.parseInt(str);
    }

    public int getSSHPort() {
        return Integer.parseInt(f1008x75d576dc.getString("SSH_PORT", ""));
    }

    public String getSSHPortString() {
        return f1008x75d576dc.getString("SSH_PORT", "443");
    }

    public int getSSLPort() {
        return Integer.parseInt(f1008x75d576dc.getString("SSL_PORT", "443"));
    }

    public String getSSLSSH() {
        return f1008x75d576dc.getString("SSH_ssl", "");
    }

    public String getSec() {
        return f1008x75d576dc.getString("Sec", "");
    }

    public String getServerIP() {
        return f1008x75d576dc.getString("SERVER_IP", "");
    }

    public String getServerName() {
        return f1008x75d576dc.getString("SERVER_SELECTED_NAME", "");
    }

    public String getServerSelectedName() {
        return f1008x75d576dc.getString("SERVER_SELECTED_NAME", "");
    }

    public int getServerSelectedPosition() {
        return f1008x75d576dc.getInt("SERVER_SELECTED_POSITION", 0);
    }

    public String getServerType() {
        return f1008x75d576dc.getString("Type", "Openvpn");
    }

    public String getSni() {
        return f1008x75d576dc.getString("SNI", "");
    }

    public boolean getStartTimer() {
        return f1008x75d576dc.getBoolean("StartTimer", false);
    }

    public String getSupport() {
        return f1008x75d576dc.getString("Support", "");
    }

    public String getTCPSSH() {
        return f1008x75d576dc.getString("SSH_tcp", "");
    }

    public String getTime() {
        return f1008x75d576dc.getString("Time_Duration", "Openvpn");
    }

    public boolean getTorrentEnabled() {
        return f1008x75d576dc.getBoolean("AntiTorrent", false);
    }

    public int getTunnelType() {
        return f1008x75d576dc.getInt("TUNNEL_TYPE", 0);
    }

    public String getUDPConfig() {
        return f1008x75d576dc.getString("UDPConf", "");
    }

    public String getUdpLogs() {
        return f1008x75d576dc.getString("Udp_Logs", "");
    }

    public String getUdpPort() {
        return f1008x75d576dc.getString("UdpPort", "110");
    }

    public String getUpdateApi() {
        return f1008x75d576dc.getString("UpdateApi", "");
    }

    public String getUsername() {
        return f1008x75d576dc.getString("USERNAME", "");
    }

    public String getV2rayConfig() {
        return f1008x75d576dc.getString("V2RAY_CONFIG", "");
    }

    public String getV2rayConfig1() {
        return f1008x75d576dc.getString("V2RAY_CONFIG1", "");
    }

    public String[] getVpnDnsResolver() {
        String[] split = f1008x75d576dc.getString(SettingsConstants.DNSRESOLVER_KEY, "1.1.1.1:9.9.9.9").split(":");
        if (Arrays.toString(split).length() <= 9) {
            return new String[]{"1.1.1.1", "9.9.9.9"};
        }
        return new String[]{split[0], split[1]};
    }

    public boolean getVpnUdpForward() {
        return f1008x75d576dc.getBoolean(SettingsConstants.UDPFORWARD_KEY, false);
    }

    public String getVpnUdpResolver() {
        return f1008x75d576dc.getString(SettingsConstants.UDPRESOLVER_KEY, "127.0.0.1:7300");
    }

    public String getWireguard() {
        return f1008x75d576dc.getString("Wireguard", "");
    }

    public String getWireguardConvertion() {
        return f1008x75d576dc.getString("WireguardConvertion", "");
    }

    public String getXconfig() {
        return f1008x75d576dc.getString("Xconfig", "");
    }

    public Boolean getdnsForward() {
        return Boolean.valueOf(f1008x75d576dc.getBoolean("isForwardDns", true));
    }

    public String getimg1() {
        return f1008x75d576dc.getString("img1", "");
    }

    public String getimg2() {
        return f1008x75d576dc.getString("img2", "");
    }

    public String getimg3() {
        return f1008x75d576dc.getString("img3", "");
    }

    public String gets1() {
        return f1008x75d576dc.getString("s1", "");
    }

    public String gets2() {
        return f1008x75d576dc.getString("s2", "");
    }

    public String gets3() {
        return f1008x75d576dc.getString("s3", "");
    }

    public boolean hasAccount() {
        return f1008x75d576dc.getBoolean("hasAccount", false);
    }

    public boolean hasRegister() {
        return f1008x75d576dc.getBoolean("hasRegister", false);
    }

    public void initializeMsg() {
        TkLogStatus.logInfo("<font color='#EF5350'><strong>Local IP: " + getIpPublic() + "</strong>");
        TkLogStatus.logInfo("<font color='#FF3B7C'><strong>Listening to local port " + getLocalPort() + "</strong>");
        if (getCompression()) {
            TkLogStatus.logInfo("<font color='#FFA726'><strong>VPN Compression Enabled</strong>");
        }
    }

    public boolean isDefaultProxy() {
        return f1008x75d576dc.getBoolean("IS_DAFUALT_PROXY", true);
    }

    public boolean isQueryMode() {
        return f1008x75d576dc.getBoolean("isQueryMode", false);
    }

    public Boolean isUDP() {
        return Boolean.valueOf(f1008x75d576dc.getBoolean("isUDPSet", false));
    }

    public void set(boolean z) {
        this.f1009xfbe0c504.putBoolean("get", z).apply();
    }

    public void setAddress(String str) {
        this.f1009xfbe0c504.putString("Address", str).apply();
    }

    public void setAllowedIP(String str) {
        this.f1009xfbe0c504.putString("AllowedIP", str).apply();
    }

    public void setAntiTorrentEnabled(boolean z) {
        this.f1009xfbe0c504.putBoolean("AntiTorrent", z).apply();
    }

    public void setApi(String str) {
        this.f1009xfbe0c504.putString("Api", str).apply();
    }

    public void setAppTheme(String str) {
        SharedPreferences.Editor editor = this.f1009xfbe0c504;
        editor.putString("theme", str);
        editor.commit();
    }

    public void setAutoClearLog(boolean z) {
        this.f1009xfbe0c504.putBoolean(SettingsConstants.AUTO_CLEAR_LOGS_KEY, z).apply();
    }

    public void setAutoLogin(boolean z) {
        this.f1009xfbe0c504.putBoolean("AutoLogin", z).apply();
    }

    public void setBackQuery(String str) {
        this.f1009xfbe0c504.putString("BackQuery", str).apply();
    }

    public void setBanner(boolean z) {
        this.f1009xfbe0c504.putBoolean("Banner", z).apply();
    }

    public void setBypass(boolean z) {
        SharedPreferences.Editor edit = f1008x75d576dc.edit();
        edit.putBoolean(SettingsConstants.BYPASS_KEY, z);
        edit.apply();
    }

    public void setBytesIn(Long l) {
        this.f1009xfbe0c504.putLong("bytesin", l.longValue()).apply();
    }

    public void setBytesOut(Long l) {
        this.f1009xfbe0c504.putLong("bytesout", l.longValue()).apply();
    }

    public void setCategory(String str) {
        this.f1009xfbe0c504.putString("Category", str).apply();
    }

    public void setColor(String str) {
        this.f1009xfbe0c504.putString("Color_", str).apply();
    }

    public void setCompression(boolean z) {
        this.f1009xfbe0c504.putBoolean("Data_compression_key", z).apply();
    }

    public void setCon(String str) {
        this.f1009xfbe0c504.putString("setCon", str).apply();
    }

    public void setConReplace(boolean z) {
        this.f1009xfbe0c504.putBoolean("ConReplace", z).apply();
    }

    public void setConfigVersion(String str) {
        this.f1009xfbe0c504.putString("ConfigVersion", str).apply();
    }

    public void setConnectedSpitPayload(String str) {
        this.f1009xfbe0c504.putString(getServerSelectedName(), str).apply();
    }

    public void setConnectionType(String str) {
        this.f1009xfbe0c504.putString("mConnectionType", str).apply();
    }

    public void setCustomC(String str) {
        this.f1009xfbe0c504.putString("CustomC", str).apply();
    }

    public void setCustomCertificate(String str) {
        this.f1009xfbe0c504.putString("CustomCertificate", str).apply();
    }

    public void setCustomDNSPRIMARY(String str) {
        this.f1009xfbe0c504.putString("Custom_DNS_PRIMARY", str).apply();
    }

    public void setCustomDNSSECONDARY(String str) {
        this.f1009xfbe0c504.putString("Custom_DNS_SECONDARY", str).apply();
    }

    public void setCustomI(boolean z) {
        this.f1009xfbe0c504.putBoolean("CustomI", z).apply();
    }

    public void setCustomN(boolean z) {
        this.f1009xfbe0c504.putBoolean("CustomN", z).apply();
    }

    public void setCustomPayload(boolean z) {
        this.f1009xfbe0c504.putBoolean("custom_payload_cb", z).apply();
    }

    public void setCustomProtocolSelectedPosition(int i) {
        this.f1009xfbe0c504.putInt("ProtocolSelectedPosition", i).apply();
    }

    public void setCustomS(boolean z) {
        this.f1009xfbe0c504.putBoolean("CustomS", z).apply();
    }

    public void setCustomSSLPortEnable(boolean z) {
        this.f1009xfbe0c504.putBoolean("CustomSSLPortEnable", z).apply();
    }

    public void setCustomSelectedPosition(int i) {
        this.f1009xfbe0c504.putInt("CustomSelectedPosition", i).apply();
    }

    public void setCustomServer(String str) {
        this.f1009xfbe0c504.putString("CUSTOM_SERVER", str).apply();
    }

    public void setCustomServerProtect(int i) {
        this.f1009xfbe0c504.putInt("CustomServerProtect", i).apply();
    }

    public void setCustomServerSelectedPosition(int i) {
        this.f1009xfbe0c504.putInt("ServerSelectedPosition", i).apply();
    }

    public void setDNSEnableReplace(boolean z) {
        this.f1009xfbe0c504.putBoolean("DNSEnableReplace", z).apply();
    }

    public void setDNSPRIMARY(String str) {
        this.f1009xfbe0c504.putString("DNS_PRIMARY", str).apply();
    }

    public void setDNSSECONDARY(String str) {
        this.f1009xfbe0c504.putString("DNS_SECONDARY", str).apply();
    }

    public void setDNSaddress(String str) {
        this.f1009xfbe0c504.putString("Dnsttdns", str).apply();
    }

    public void setDNSpublicKey(String str) {
        this.f1009xfbe0c504.putString("ServerCloudFrontHost", str).apply();
    }

    public void setDNSserverName(String str) {
        this.f1009xfbe0c504.putString("ServerIPHost", str).apply();
    }

    public void setDefaultProxy(boolean z) {
        this.f1009xfbe0c504.putBoolean("IS_DAFUALT_PROXY", z).apply();
    }

    public void setDisabledDelaySSH(boolean z) {
        this.f1009xfbe0c504.putBoolean(SettingsConstants.DISABLE_DELAY_KEY, z).apply();
    }

    public void setDnsDefault(boolean z) {
        this.f1009xfbe0c504.putBoolean("DnsDefault", z).apply();
    }

    public void setDnsPosition(boolean z) {
        this.f1009xfbe0c504.putBoolean("dns_position", z).apply();
    }

    public void setDuration(String str) {
        this.f1009xfbe0c504.putString("Duration", str).apply();
    }

    public void setEnableFreeServer(boolean z) {
        this.f1009xfbe0c504.putBoolean("ENABLE_FREE_SERVER", z).apply();
    }

    public void setEnableHotspot(boolean z) {
        this.f1009xfbe0c504.putBoolean("EnableHotspot", z).apply();
    }

    public void setEnableReplace(boolean z) {
        this.f1009xfbe0c504.putBoolean("AutoReplace", z).apply();
    }

    public void setEnableWS(boolean z) {
        this.f1009xfbe0c504.putBoolean("EnableWS", z).apply();
    }

    public void setEndpoint(String str) {
        this.f1009xfbe0c504.putString("Endpoint", str).apply();
    }

    public void setFreeServerPassword(String str) {
        this.f1009xfbe0c504.putString("ServerPass", str).apply();
    }

    public void setFreeServerUsername(String str) {
        this.f1009xfbe0c504.putString("ServerUser", str).apply();
    }

    public void setFrontQuery(String str) {
        this.f1009xfbe0c504.putString("FrontQuery", str).apply();
    }

    public void setHasAccount(boolean z) {
        this.f1009xfbe0c504.putBoolean("hasAccount", z).apply();
    }

    public void setHasRegister(boolean z) {
        this.f1009xfbe0c504.putBoolean("hasRegister", z).apply();
    }

    public void setInfo(String str) {
        this.f1009xfbe0c504.putString("ConfigInfo", str).apply();
    }

    public void setIp_hunter(String str) {
        this.f1009xfbe0c504.putString("_Ip_hunter", str).apply();
    }

    public void setIp_hunter_ip(String str) {
        this.f1009xfbe0c504.putString("_Ip_hunter_ip", str).apply();
    }

    public void setIsFilterApps(boolean z) {
        this.f1009xfbe0c504.putBoolean(SettingsConstants.FILTER_APPS, z).apply();
    }

    public void setIsFilterBypassMode(boolean z) {
        this.f1009xfbe0c504.putBoolean(SettingsConstants.FILTER_BYPASS_MODE, z).apply();
    }

    public void setIsQueryMode(boolean z) {
        this.f1009xfbe0c504.putBoolean("isQueryMode", z).apply();
    }

    public void setIsScreenOn(boolean z) {
        this.f1009xfbe0c504.putBoolean("IS_SCREEN_ON_KEY", z).apply();
    }

    public void setLocalPort(String str) {
        this.f1009xfbe0c504.putString("LOCAL_PORT", str).apply();
    }

    public void setNetworkSelectedName(String str) {
        this.f1009xfbe0c504.putString("NETWORK_SELECTED_NAME", str).apply();
    }

    public void setNetworkSelectedPosition(int i) {
        this.f1009xfbe0c504.putInt("NETWORK_SELECTED_POSITION", i).apply();
    }

    public void setNotice_s(boolean z) {
        this.f1009xfbe0c504.putBoolean("Notice_s", z).apply();
    }

    public void setOCS(boolean z) {
        this.f1009xfbe0c504.putBoolean("OPEN_OCS", z).apply();
    }

    public void setOVPN(boolean z) {
        this.f1009xfbe0c504.putBoolean("OPEN_VPN", z).apply();
    }

    public void setPackageFilterApps(Set<String> set) {
        this.f1009xfbe0c504.putStringSet(SettingsConstants.FILTER_APPS_LIST, set).apply();
    }

    public void setPassword(String str) {
        this.f1009xfbe0c504.putString("PASSWORD", str).apply();
    }

    public void setPayload(String str) {
        this.f1009xfbe0c504.putString("HTTP_PAYLOAD", str).apply();
    }

    public void setPingServer(String str) {
        this.f1009xfbe0c504.putString("_mPingServer", str).apply();
    }

    public void setPingThread(int i) {
        this.f1009xfbe0c504.putInt(SettingsConstants.PINGER_KEY, i).apply();
    }

    public void setPinger(String str) {
        this.f1009xfbe0c504.putString("PINGER", str).apply();
    }

    public void setPowerSaver(boolean z) {
        this.f1009xfbe0c504.putBoolean("PAUSE_VPN_ON_BLANKED_SCREEN_KEY", z).apply();
    }

    public void setPreSharedKey(String str) {
        this.f1009xfbe0c504.putString("PreSharedKey", str).apply();
    }

    public void setPrim(String str) {
        this.f1009xfbe0c504.putString("Prim", str).apply();
    }

    public void setPrivatekey(String str) {
        this.f1009xfbe0c504.putString("Privatekey", str).apply();
    }

    public void setProxy(String str) {
        this.f1009xfbe0c504.putString("PROXY_HOST", str).apply();
    }

    public void setProxyAddress(String str) {
        this.f1009xfbe0c504.putString("_mProxyAddress", str).apply();
    }

    public void setProxyAuthEnabled(boolean z) {
        this.f1009xfbe0c504.putBoolean("ProxyAuth", z).apply();
    }

    public void setProxyPassword(String str) {
        this.f1009xfbe0c504.putString("ProxyPass", str).apply();
    }

    public void setProxyPort(String str) {
        this.f1009xfbe0c504.putString("PROXY_PORT", str).apply();
    }

    public void setProxyUsername(String str) {
        this.f1009xfbe0c504.putString("ProxyUser", str).apply();
    }

    public void setPublickey(String str) {
        this.f1009xfbe0c504.putString("Publickey", str).apply();
    }

    public void setReconnTime(int i) {
        this.f1009xfbe0c504.putInt("AUTO_RECONN_TIME_KEY", i).apply();
    }

    public void setSSH(boolean z) {
        this.f1009xfbe0c504.putBoolean("OPEN_SSH", z).apply();
    }

    public void setSSHHost(String str) {
        this.f1009xfbe0c504.putString("SSH_HOST", str).apply();
    }

    public void setSSHPort(String str) {
        this.f1009xfbe0c504.putString("SSH_PORT", str).apply();
    }

    public void setSSLPort(String str) {
        this.f1009xfbe0c504.putString("SSL_PORT", str).apply();
    }

    public void setSSLSSH(String str) {
        this.f1009xfbe0c504.putString("SSH_ssl", str).apply();
    }

    public void setSec(String str) {
        this.f1009xfbe0c504.putString("Sec", str).apply();
    }

    public void setServerName(String str) {
        this.f1009xfbe0c504.putString("SERVER_SELECTED_NAME", str).apply();
    }

    public void setServerSelectedName(String str) {
        this.f1009xfbe0c504.putString("SERVER_SELECTED_NAME", str).apply();
    }

    public void setServerSelectedPosition(int i) {
        this.f1009xfbe0c504.putInt("SERVER_SELECTED_POSITION", i).apply();
    }

    public void setServerType(String str) {
        this.f1009xfbe0c504.putString("Type", str).apply();
    }

    public void setSni(String str) {
        this.f1009xfbe0c504.putString("SNI", str).apply();
    }

    public void setStartTimer(boolean z) {
        this.f1009xfbe0c504.putBoolean("StartTimer", z).apply();
    }

    public void setSupport(String str) {
        this.f1009xfbe0c504.putString("Support", str).apply();
    }

    public void setTCPSSH(String str) {
        this.f1009xfbe0c504.putString("SSH_tcp", str).apply();
    }

    public void setTetheringSubnet(boolean z) {
        this.f1009xfbe0c504.putBoolean(SettingsConstants.TETHERING_SUBNET, z).apply();
    }

    public void setTime(String str) {
        this.f1009xfbe0c504.putString("Time_Duration", str).apply();
    }

    public void setTunnelType(int i) {
        this.f1009xfbe0c504.putInt("TUNNEL_TYPE", i).apply();
    }

    public void setUDPConfig(String str) {
        this.f1009xfbe0c504.putString("UDPConf", str).apply();
    }

    public void setUdp(boolean z) {
        this.f1009xfbe0c504.putBoolean("isUDPSet", z).apply();
    }

    public void setUdpLogs(String str) {
        this.f1009xfbe0c504.putString("Udp_Logs", str).apply();
    }

    public void setUdpPort(String str) {
        this.f1009xfbe0c504.putString("UdpPort", str).apply();
    }

    public void setUpdateApi(String str) {
        this.f1009xfbe0c504.putString("UpdateApi", str).apply();
    }

    public void setUsername(String str) {
        this.f1009xfbe0c504.putString("USERNAME", str).apply();
    }

    public void setV2rayConfig(String str) {
        this.f1009xfbe0c504.putString("V2RAY_CONFIG", str).apply();
    }

    public void setV2rayConfig1(String str) {
        this.f1009xfbe0c504.putString("V2RAY_CONFIG1", str).apply();
    }

    public void setVpnDnsResolver(String str) {
        if (str.length() <= 9) {
            str = "1.1.1.1:9.9.9.9";
        }
        this.f1009xfbe0c504.putString(SettingsConstants.DNSRESOLVER_KEY, str).apply();
    }

    public void setVpnUdpForward(boolean z) {
        SharedPreferences.Editor edit = f1008x75d576dc.edit();
        edit.putBoolean(SettingsConstants.UDPFORWARD_KEY, z);
        edit.apply();
    }

    public void setVpnUdpResolver(String str) {
        this.f1009xfbe0c504.putString(SettingsConstants.UDPRESOLVER_KEY, str).apply();
    }

    public void setWireguard(String str) {
        this.f1009xfbe0c504.putString("Wireguard", str).apply();
    }

    public void setWireguardConvertion(String str) {
        this.f1009xfbe0c504.putString("WireguardConvertion", str).apply();
    }

    public void setXconfig(String str) {
        this.f1009xfbe0c504.putString("Xconfig", str).apply();
    }

    public void setdnsForward(boolean z) {
        this.f1009xfbe0c504.putBoolean("isForwardDns", z).apply();
    }

    public void setimg1(String str) {
        this.f1009xfbe0c504.putString("img1", str).apply();
    }

    public void setimg2(String str) {
        this.f1009xfbe0c504.putString("img2", str).apply();
    }

    public void setimg3(String str) {
        this.f1009xfbe0c504.putString("img3", str).apply();
    }

    public void sets1(String str) {
        this.f1009xfbe0c504.putString("s1", str).apply();
    }

    public void sets2(String str) {
        this.f1009xfbe0c504.putString("s2", str).apply();
    }

    public void sets3(String str) {
        this.f1009xfbe0c504.putString("s3", str).apply();
    }

    public String toString() {
        return super.toString();
    }
}
