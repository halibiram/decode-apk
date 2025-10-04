package app.tunnel.vpncommons;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\b\n\u0002\bC\bÆ\u0002\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004R\u0014\u0010\f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\f\u0010\u0004R\u0014\u0010\r\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\r\u0010\u0004R\u0014\u0010\u000e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000e\u0010\u0004R\u0014\u0010\u000f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000f\u0010\u0004R\u0014\u0010\u0011\u001a\u00020\u00108\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0013\u0010\u0004R\u0014\u0010\u0014\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0004R\u0014\u0010\u0015\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0004R\u0014\u0010\u0016\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0004R\u0014\u0010\u0017\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0004R\u0014\u0010\u0018\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0004R\u0014\u0010\u0019\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0004R\u0014\u0010\u001a\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0004R\u0014\u0010\u001b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0004R\u0014\u0010\u001c\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0004R\u0014\u0010\u001d\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001d\u0010\u0004R\u0014\u0010\u001e\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001e\u0010\u0004R\u0014\u0010\u001f\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010\u0004R\u0014\u0010 \u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b \u0010\u0004R\u0014\u0010!\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\u0004R\u0014\u0010\"\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010\u0004R\u0014\u0010#\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b#\u0010\u0004R\u0014\u0010$\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010\u0004R\u0014\u0010%\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b%\u0010\u0004R\u0014\u0010&\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b&\u0010\u0004R\u0014\u0010'\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b'\u0010\u0004R\u0014\u0010(\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010\u0004R\u0014\u0010)\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b)\u0010\u0004R\u0014\u0010*\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b*\u0010\u0004R\u0014\u0010+\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b+\u0010\u0004R\u0014\u0010,\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b,\u0010\u0004R\u0014\u0010-\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b-\u0010\u0004R\u0014\u0010.\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b.\u0010\u0004R\u0014\u0010/\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b/\u0010\u0004R\u0014\u00100\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b0\u0010\u0004R\u0014\u00101\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b1\u0010\u0004R\u0014\u00102\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b2\u0010\u0004R\u0014\u00103\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b3\u0010\u0004R\u0014\u00104\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b4\u0010\u0004R\u0014\u00105\u001a\u00020\u00108\u0006X\u0086T¢\u0006\u0006\n\u0004\b5\u0010\u0012R\u0014\u00106\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b6\u0010\u0004R\u0014\u00107\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b7\u0010\u0004R\u0014\u00108\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b8\u0010\u0004R\u0014\u00109\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b9\u0010\u0004R\u0014\u0010:\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b:\u0010\u0004R\u0014\u0010;\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b;\u0010\u0004R\u0014\u0010<\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b<\u0010\u0004R\u0014\u0010=\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b=\u0010\u0004R\u0014\u0010>\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b>\u0010\u0004R\u0014\u0010?\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b?\u0010\u0004R\u0014\u0010@\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b@\u0010\u0004R\u0014\u0010A\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bA\u0010\u0004R\u0014\u0010B\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bB\u0010\u0004R\u0014\u0010C\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bC\u0010\u0004R\u0014\u0010D\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bD\u0010\u0004R\u0014\u0010E\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bE\u0010\u0004R\u0014\u0010F\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bF\u0010\u0004R\u0014\u0010G\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bG\u0010\u0004R\u0014\u0010H\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bH\u0010\u0004R\u0014\u0010I\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bI\u0010\u0004R\u0014\u0010J\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bJ\u0010\u0004R\u0014\u0010K\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bK\u0010\u0004R\u0014\u0010L\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bL\u0010\u0004R\u0014\u0010M\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bM\u0010\u0004R\u0014\u0010N\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bN\u0010\u0004R\u0014\u0010O\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bO\u0010\u0004R\u0014\u0010P\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bP\u0010\u0004R\u0014\u0010Q\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bQ\u0010\u0004R\u0014\u0010R\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\bR\u0010\u0004¨\u0006S"}, d2 = {"Lapp/tunnel/vpncommons/VpnConstants;", "", "", "LOCAL_PORT", "Ljava/lang/String;", "MAX_THREADS", "KEY_ENABLE_APP_FILTER", "PREF_TETHERING", "KEY_DISALLOWED_APPS", "KEY_ALLOW_DISALLOWED_APPS", "PORT_MTU", "PORT_SOCKS", "PORT_HTTP", "DEFAULT_PAYLOAD", "DEFAULT_SNI", "DEFAULT_DNS", "", "DEFAULT_PROXY_PORT", "I", "KEY_REPLACE_PAYLOAD", "DEFAULT_PRIMARY_DNS", "DEFAULT_SECONDARY_DNS", "REMAINING_TIMER", "SELECTED_COUNTRY", "SELECTED_COUNTRY_NAME", "SELECTED_COUNTRY_FLAG", "SELECTED_NETWORK", "IS_PRODUCTION", "KEY_LOCAL_PORT", "SERVER_ADDRESS", "SERVER_PORT", "EXCLUDE_ADDRESS", "AUTH_USERNAME", "AUTH_PASSWORD", "AUTH_KEY_PATH", "PROXY_HOST", "PROXY_PORT", "HAS_PROXY", "HAS_SNI", "HAS_PAYLOAD", "IS_DIRECT", "IS_UDP", "IS_OPENVPN", "AUTO_REPLACE", "HAS_DNS", "WAKELOCK", "VPN_PROTOCOL", "PAYLOAD", "SNI", "REQUEST_DOMAIN", "HYSTERIA_CONFIG", "RECONNECT", "DNSTT_ADDRESS", "DNSTT_PORT", "DNSTT_RESOLVER_MODE", "DNSTT_RESOLVER_ADDR", "DNSTT_PUB_KEY", "DNSTT_NAME_SERVER", "SSL_PROTOCOL", "PREF_DNS_FORWARD", "PREF_SSH_MAX_THREADS", "PREF_USE_DNS", "DNS_SERVER", "DNS_PRIMARY", "DNS_SECONDARY", "PREF_UDP_FORWARD", "PREF_UDP_RESOLVER", "SSH_DATA_COMPRESS", "DISABLE_DELAY", "TCP_DELAY", "SHOW_NET_STAT", "KEX_TIMEOUT", "CONNECTION_TIMEOUT", "RECONNECT_TIMEOUT", "V2RAY_URI", "V2RAY_CONFIG", "V2RAY_FULL", "V2RAY_TYPE", "KEY_UUID", "OPENVPN_UUID", "KEY_REMAINING_TIMER", "PREF_SOCKS_PORT", "PREF_HTTP_PORT", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VpnConstants {

    @NotNull
    public static final String AUTH_KEY_PATH = "auth_key_path";

    @NotNull
    public static final String AUTH_PASSWORD = "auth_password";

    @NotNull
    public static final String AUTH_USERNAME = "auth_username";

    @NotNull
    public static final String AUTO_REPLACE = "autoReplaceKey";

    @NotNull
    public static final String CONNECTION_TIMEOUT = "connectionTimeOutKey";

    @NotNull
    public static final String DEFAULT_DNS = "127.0.0.1";

    @NotNull
    public static final String DEFAULT_PAYLOAD = "CONNECT [host_port] [protocol][crlf]Host: www.bughost.com[crlf][crlf]";

    @NotNull
    public static final String DEFAULT_PRIMARY_DNS = "8.8.8.8";
    public static final int DEFAULT_PROXY_PORT = 8080;

    @NotNull
    public static final String DEFAULT_SECONDARY_DNS = "8.8.4.4";

    @NotNull
    public static final String DEFAULT_SNI = "www.bughost.com";

    @NotNull
    public static final String DISABLE_DELAY = "disableDelaySSHKey";

    @NotNull
    public static final String DNSTT_ADDRESS = "127.0.0.1";

    @NotNull
    public static final String DNSTT_NAME_SERVER = "dnsttNameServerKey";
    public static final int DNSTT_PORT = 2222;

    @NotNull
    public static final String DNSTT_PUB_KEY = "dnsttPubKey";

    @NotNull
    public static final String DNSTT_RESOLVER_ADDR = "dnsttResolverAddressKey";

    @NotNull
    public static final String DNSTT_RESOLVER_MODE = "dnsttResolverModeKey";

    @NotNull
    public static final String DNS_PRIMARY = "primaryDnsKey";

    @NotNull
    public static final String DNS_SECONDARY = "secondaryDnsKey";

    @NotNull
    public static final String DNS_SERVER = "dnsServer";

    @NotNull
    public static final String EXCLUDE_ADDRESS = "exclude_address";

    @NotNull
    public static final String HAS_DNS = "hasDnsKey";

    @NotNull
    public static final String HAS_PAYLOAD = "usePayloadKey";

    @NotNull
    public static final String HAS_PROXY = "useProxyKey";

    @NotNull
    public static final String HAS_SNI = "useSniKey";

    @NotNull
    public static final String HYSTERIA_CONFIG = "hysteriaConfigKey";

    @NotNull
    public static final VpnConstants INSTANCE = new Object();

    @NotNull
    public static final String IS_DIRECT = "isDirectKey";

    @NotNull
    public static final String IS_OPENVPN = "isOpenVpnKey";

    @NotNull
    public static final String IS_PRODUCTION = "keyProduction";

    @NotNull
    public static final String IS_UDP = "isUdpKey";

    @NotNull
    public static final String KEX_TIMEOUT = "kexTimeoutKey";

    @NotNull
    public static final String KEY_ALLOW_DISALLOWED_APPS = "allowDisallowedApps";

    @NotNull
    public static final String KEY_DISALLOWED_APPS = "disallowedApps";

    @NotNull
    public static final String KEY_ENABLE_APP_FILTER = "enableAppFilter";

    @NotNull
    public static final String KEY_LOCAL_PORT = "key_local_port";

    @NotNull
    public static final String KEY_REMAINING_TIMER = "key_remaining_timer";

    @NotNull
    public static final String KEY_REPLACE_PAYLOAD = "replace_host";

    @NotNull
    public static final String KEY_UUID = "key_uuid";

    @NotNull
    public static final String LOCAL_PORT = "1080";

    @NotNull
    public static final String MAX_THREADS = "8";

    @NotNull
    public static final String OPENVPN_UUID = "64215cf6-35d4-4d0f-a5be-9359a21d83a9";

    @NotNull
    public static final String PAYLOAD = "payloadKey";

    @NotNull
    public static final String PORT_HTTP = "10809";

    @NotNull
    public static final String PORT_MTU = "1500";

    @NotNull
    public static final String PORT_SOCKS = "10808";

    @NotNull
    public static final String PREF_DNS_FORWARD = "key_dns_forward";

    @NotNull
    public static final String PREF_HTTP_PORT = "pref_http_port";

    @NotNull
    public static final String PREF_SOCKS_PORT = "pref_socks_port";

    @NotNull
    public static final String PREF_SSH_MAX_THREADS = "ssh_max_threads";

    @NotNull
    public static final String PREF_TETHERING = "pref_tethering";

    @NotNull
    public static final String PREF_UDP_FORWARD = "pref_udp_forward";

    @NotNull
    public static final String PREF_UDP_RESOLVER = "pref_udp_resolver";

    @NotNull
    public static final String PREF_USE_DNS = "useDnsKey";

    @NotNull
    public static final String PROXY_HOST = "proxy_host";

    @NotNull
    public static final String PROXY_PORT = "proxy_port";

    @NotNull
    public static final String RECONNECT = "reconnectTimeKey";

    @NotNull
    public static final String RECONNECT_TIMEOUT = "reconnectTimeoutKey";

    @NotNull
    public static final String REMAINING_TIMER = "keyRemainingTimer";

    @NotNull
    public static final String REQUEST_DOMAIN = "requestDomainKey";

    @NotNull
    public static final String SELECTED_COUNTRY = "keySelectedCountry";

    @NotNull
    public static final String SELECTED_COUNTRY_FLAG = "keySelectedCountryFlag";

    @NotNull
    public static final String SELECTED_COUNTRY_NAME = "keySelectedCountryName";

    @NotNull
    public static final String SELECTED_NETWORK = "keySelectedNetwork";

    @NotNull
    public static final String SERVER_ADDRESS = "server_address";

    @NotNull
    public static final String SERVER_PORT = "server_port";

    @NotNull
    public static final String SHOW_NET_STAT = "key_show_net_stat";

    @NotNull
    public static final String SNI = "sniKey";

    @NotNull
    public static final String SSH_DATA_COMPRESS = "key_use_compression";

    @NotNull
    public static final String SSL_PROTOCOL = "sslProtocolKey";

    @NotNull
    public static final String TCP_DELAY = "key_tcp_delay";

    @NotNull
    public static final String V2RAY_CONFIG = "v2RayConfigKey";

    @NotNull
    public static final String V2RAY_FULL = "v2RayFullKey";

    @NotNull
    public static final String V2RAY_TYPE = "v2RayTypeKey";

    @NotNull
    public static final String V2RAY_URI = "v2RayUriKey";

    @NotNull
    public static final String VPN_PROTOCOL = "key_vpn_protocol";

    @NotNull
    public static final String WAKELOCK = "cpuWakelockKey";
}
