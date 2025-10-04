package okhttp3.internal.proxy;

import defpackage.AbstractC0586x968d4673;
import java.io.IOException;
import java.net.Proxy;
import java.net.ProxySelector;
import java.net.SocketAddress;
import java.net.URI;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001J\u001f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u00020\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lokhttp3/internal/proxy/NullProxySelector;", "Ljava/net/ProxySelector;", "Ljava/net/URI;", "uri", "", "Ljava/net/Proxy;", "select", "(Ljava/net/URI;)Ljava/util/List;", "Ljava/net/SocketAddress;", "sa", "Ljava/io/IOException;", "ioe", "", "connectFailed", "(Ljava/net/URI;Ljava/net/SocketAddress;Ljava/io/IOException;)V", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nNullProxySelector.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NullProxySelector.kt\nokhttp3/internal/proxy/NullProxySelector\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,36:1\n1#2:37\n*E\n"})
/* loaded from: classes3.dex */
public final class NullProxySelector extends ProxySelector {

    @NotNull
    public static final NullProxySelector INSTANCE = new ProxySelector();

    @Override // java.net.ProxySelector
    public void connectFailed(@Nullable URI uri, @Nullable SocketAddress sa, @Nullable IOException ioe) {
    }

    @Override // java.net.ProxySelector
    @NotNull
    public List<Proxy> select(@Nullable URI uri) {
        if (uri != null) {
            return AbstractC0586x968d4673.listOf(Proxy.NO_PROXY);
        }
        throw new IllegalArgumentException("uri must not be null");
    }
}
