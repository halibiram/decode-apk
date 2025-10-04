package okio;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0006\b\u0016\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0005\u001a\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\b\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\b\u0010\u000bJ\u000f\u0010\f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\rJ\u0017\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0001H\u0016¢\u0006\u0004\b\u0015\u0010\u0014J\u000f\u0010\u0017\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u0019\u001a\u00020\u0016H\u0016¢\u0006\u0004\b\u0019\u0010\u0018J\u0017\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010 \u001a\u00020\u00162\u0006\u0010\u001f\u001a\u00020\u001eH\u0016¢\u0006\u0004\b \u0010!R\"\u0010\u0002\u001a\u00020\u00018G@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\"\u0010#\u001a\u0004\b\u0002\u0010\u0014\"\u0004\b\u0005\u0010\u0004¨\u0006$"}, d2 = {"Lokio/ForwardingTimeout;", "Lokio/Timeout;", "delegate", "<init>", "(Lokio/Timeout;)V", "setDelegate", "(Lokio/Timeout;)Lokio/ForwardingTimeout;", "", "timeout", "Ljava/util/concurrent/TimeUnit;", "unit", "(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;", "timeoutNanos", "()J", "", "hasDeadline", "()Z", "deadlineNanoTime", "(J)Lokio/Timeout;", "clearTimeout", "()Lokio/Timeout;", "clearDeadline", "", "throwIfReached", "()V", "cancel", "Ljava/util/concurrent/locks/Condition;", "condition", "awaitSignal", "(Ljava/util/concurrent/locks/Condition;)V", "", "monitor", "waitUntilNotified", "(Ljava/lang/Object;)V", "뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨", "Lokio/Timeout;", "okio"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public class ForwardingTimeout extends Timeout {

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters and from kotlin metadata */
    public Timeout delegate;

    public ForwardingTimeout(@NotNull Timeout delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // okio.Timeout
    public void awaitSignal(@NotNull Condition condition) {
        Intrinsics.checkNotNullParameter(condition, "condition");
        this.delegate.awaitSignal(condition);
    }

    @Override // okio.Timeout
    public void cancel() {
        this.delegate.cancel();
    }

    @Override // okio.Timeout
    @NotNull
    public Timeout clearDeadline() {
        return this.delegate.clearDeadline();
    }

    @Override // okio.Timeout
    @NotNull
    public Timeout clearTimeout() {
        return this.delegate.clearTimeout();
    }

    @Override // okio.Timeout
    public long deadlineNanoTime() {
        return this.delegate.deadlineNanoTime();
    }

    @JvmName(name = "delegate")
    @NotNull
    /* renamed from: delegate, reason: from getter */
    public final Timeout getDelegate() {
        return this.delegate;
    }

    @Override // okio.Timeout
    /* renamed from: hasDeadline */
    public boolean getF3666xfbe0c504() {
        return this.delegate.getF3666xfbe0c504();
    }

    /* renamed from: setDelegate, reason: collision with other method in class */
    public final /* synthetic */ void m2658setDelegate(Timeout timeout) {
        Intrinsics.checkNotNullParameter(timeout, "<set-?>");
        this.delegate = timeout;
    }

    @Override // okio.Timeout
    public void throwIfReached() {
        this.delegate.throwIfReached();
    }

    @Override // okio.Timeout
    @NotNull
    public Timeout timeout(long timeout, @NotNull TimeUnit unit) {
        Intrinsics.checkNotNullParameter(unit, "unit");
        return this.delegate.timeout(timeout, unit);
    }

    @Override // okio.Timeout
    /* renamed from: timeoutNanos */
    public long getF3668x1378447b() {
        return this.delegate.getF3668x1378447b();
    }

    @Override // okio.Timeout
    public void waitUntilNotified(@NotNull Object monitor) {
        Intrinsics.checkNotNullParameter(monitor, "monitor");
        this.delegate.waitUntilNotified(monitor);
    }

    @Override // okio.Timeout
    @NotNull
    public Timeout deadlineNanoTime(long deadlineNanoTime) {
        return this.delegate.deadlineNanoTime(deadlineNanoTime);
    }

    @NotNull
    public final ForwardingTimeout setDelegate(@NotNull Timeout delegate) {
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.delegate = delegate;
        return this;
    }
}
