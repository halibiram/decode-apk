package slowdns.app.tunnel.slowdns.core;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00058\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u0014\u0010\t\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\t\u0010\u0004R\u0014\u0010\n\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\n\u0010\u0004R\u0014\u0010\u000b\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u000b\u0010\u0004¨\u0006\f"}, d2 = {"Lslowdns/app/tunnel/slowdns/core/SlowDnsConstants;", "", "", "SLOW_DNS_DEFAULT_ADDRESS", "Ljava/lang/String;", "", "SLOW_DNS_DEFAULT_PORT", "I", "SLOW_DNS_RESOLVER_MODE", "SLOW_DNS_RESOLVER_ADDRESS", "SLOW_DNS_PUB_KEY", "SLOW_DNS_NAME_SERVER", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class SlowDnsConstants {

    @NotNull
    public static final SlowDnsConstants INSTANCE = new Object();

    @NotNull
    public static final String SLOW_DNS_DEFAULT_ADDRESS = "127.0.0.1";
    public static final int SLOW_DNS_DEFAULT_PORT = 2222;

    @NotNull
    public static final String SLOW_DNS_NAME_SERVER = "slowdnsNameServerKey";

    @NotNull
    public static final String SLOW_DNS_PUB_KEY = "slowdnsPubKey";

    @NotNull
    public static final String SLOW_DNS_RESOLVER_ADDRESS = "slowdnsResolverAddrKey";

    @NotNull
    public static final String SLOW_DNS_RESOLVER_MODE = "slowdnsResolverModeKey";
}
