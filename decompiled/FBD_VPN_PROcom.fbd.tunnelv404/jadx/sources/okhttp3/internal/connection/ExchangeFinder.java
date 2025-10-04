package okhttp3.internal.connection;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0006\u001a\u00020\u0007H&R\u0012\u0010\u0002\u001a\u00020\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\bÀ\u0006\u0001"}, d2 = {"Lokhttp3/internal/connection/ExchangeFinder;", "", "routePlanner", "Lokhttp3/internal/connection/RoutePlanner;", "getRoutePlanner", "()Lokhttp3/internal/connection/RoutePlanner;", "find", "Lokhttp3/internal/connection/RealConnection;", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public interface ExchangeFinder {
    @NotNull
    RealConnection find();

    @NotNull
    RoutePlanner getRoutePlanner();
}
