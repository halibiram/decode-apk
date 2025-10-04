package okhttp3;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RealConnectionPool;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B;\b\u0010\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0004\u0010\u0010B1\b\u0016\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0004\u0010\u0011B!\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\b\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0004\u0010\u0012B\t\b\u0016¢\u0006\u0004\b\u0004\u0010\u0013J\r\u0010\u0014\u001a\u00020\u0006¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u0006¢\u0006\u0004\b\u0016\u0010\u0015J\r\u0010\u0018\u001a\u00020\u0017¢\u0006\u0004\b\u0018\u0010\u0013R\u001a\u0010\u0003\u001a\u00020\u00028\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR\u0014\u0010\u000f\u001a\u00020\u000e8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u001d\u0010\u001e¨\u0006\u001f"}, d2 = {"Lokhttp3/ConnectionPool;", "", "Lokhttp3/internal/connection/RealConnectionPool;", "delegate", "<init>", "(Lokhttp3/internal/connection/RealConnectionPool;)V", "", "maxIdleConnections", "", "keepAliveDuration", "Ljava/util/concurrent/TimeUnit;", "timeUnit", "Lokhttp3/internal/concurrent/TaskRunner;", "taskRunner", "Lokhttp3/ConnectionListener;", "connectionListener", "(IJLjava/util/concurrent/TimeUnit;Lokhttp3/internal/concurrent/TaskRunner;Lokhttp3/ConnectionListener;)V", "(IJLjava/util/concurrent/TimeUnit;Lokhttp3/ConnectionListener;)V", "(IJLjava/util/concurrent/TimeUnit;)V", "()V", "idleConnectionCount", "()I", "connectionCount", "", "evictAll", "뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸", "Lokhttp3/internal/connection/RealConnectionPool;", "getDelegate$okhttp", "()Lokhttp3/internal/connection/RealConnectionPool;", "getConnectionListener$okhttp", "()Lokhttp3/ConnectionListener;", "okhttp"}, k = 1, mv = {1, 9, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ConnectionPool {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters and from kotlin metadata */
    public final RealConnectionPool delegate;

    public ConnectionPool(@NotNull RealConnectionPool delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    public final int connectionCount() {
        return this.delegate.connectionCount();
    }

    public final void evictAll() {
        this.delegate.evictAll();
    }

    @NotNull
    public final ConnectionListener getConnectionListener$okhttp() {
        return this.delegate.getConnectionListener();
    }

    @NotNull
    /* renamed from: getDelegate$okhttp, reason: from getter */
    public final RealConnectionPool getDelegate() {
        return this.delegate;
    }

    public final int idleConnectionCount() {
        return this.delegate.idleConnectionCount();
    }

    public /* synthetic */ ConnectionPool(int i, long j, TimeUnit timeUnit, TaskRunner taskRunner, ConnectionListener connectionListener, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 5 : i, (i2 & 2) != 0 ? 5L : j, (i2 & 4) != 0 ? TimeUnit.MINUTES : timeUnit, (i2 & 8) != 0 ? TaskRunner.INSTANCE : taskRunner, (i2 & 16) != 0 ? ConnectionListener.INSTANCE.getNONE() : connectionListener);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ConnectionPool(int i, long j, @NotNull TimeUnit timeUnit, @NotNull TaskRunner taskRunner, @NotNull ConnectionListener connectionListener) {
        this(new RealConnectionPool(taskRunner, i, j, timeUnit, connectionListener));
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        Intrinsics.checkNotNullParameter(connectionListener, "connectionListener");
    }

    public /* synthetic */ ConnectionPool(int i, long j, TimeUnit timeUnit, ConnectionListener connectionListener, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this((i2 & 1) != 0 ? 5 : i, (i2 & 2) != 0 ? 5L : j, (i2 & 4) != 0 ? TimeUnit.MINUTES : timeUnit, (i2 & 8) != 0 ? ConnectionListener.INSTANCE.getNONE() : connectionListener);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ConnectionPool(int i, long j, @NotNull TimeUnit timeUnit, @NotNull ConnectionListener connectionListener) {
        this(i, j, timeUnit, TaskRunner.INSTANCE, connectionListener);
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        Intrinsics.checkNotNullParameter(connectionListener, "connectionListener");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public ConnectionPool(int i, long j, @NotNull TimeUnit timeUnit) {
        this(i, j, timeUnit, TaskRunner.INSTANCE, ConnectionListener.INSTANCE.getNONE());
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
    }

    public ConnectionPool() {
        this(5, 5L, TimeUnit.MINUTES);
    }
}
