package app.tunnel.vpncommons.interfaces;

import app.tunnel.vpncommons.enums.VpnType;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007"}, d2 = {"Lapp/tunnel/vpncommons/interfaces/VpnListener;", "", "onStartVpn", "", "vpnType", "Lapp/tunnel/vpncommons/enums/VpnType;", "onStopVpn", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public interface VpnListener {
    void onStartVpn(@NotNull VpnType vpnType);

    void onStopVpn(@NotNull VpnType vpnType);
}
