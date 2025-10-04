package okhttp3.internal.connection;

import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Route;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0015\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u0015\u0010\n\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\n\u0010\bJ\u0015\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\rR\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0012"}, d2 = {"Lokhttp3/internal/connection/RouteDatabase;", "", "<init>", "()V", "Lokhttp3/Route;", "failedRoute", "", "failed", "(Lokhttp3/Route;)V", "route", "connected", "", "shouldPostpone", "(Lokhttp3/Route;)Z", "", "getFailedRoutes", "()Ljava/util/Set;", "failedRoutes", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class RouteDatabase {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final LinkedHashSet f3223xfbe0c504 = new LinkedHashSet();

    public final synchronized void connected(@NotNull Route route) {
        Intrinsics.checkNotNullParameter(route, "route");
        this.f3223xfbe0c504.remove(route);
    }

    public final synchronized void failed(@NotNull Route failedRoute) {
        Intrinsics.checkNotNullParameter(failedRoute, "failedRoute");
        this.f3223xfbe0c504.add(failedRoute);
    }

    @NotNull
    public final synchronized Set<Route> getFailedRoutes() {
        return CollectionsKt___CollectionsKt.toSet(this.f3223xfbe0c504);
    }

    public final synchronized boolean shouldPostpone(@NotNull Route route) {
        Intrinsics.checkNotNullParameter(route, "route");
        return this.f3223xfbe0c504.contains(route);
    }
}
