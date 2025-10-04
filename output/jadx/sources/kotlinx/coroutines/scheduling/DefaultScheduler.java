package kotlinx.coroutines.scheduling;

import kotlin.Metadata;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.internal.LimitedDispatcherKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0007\bÀ\u0002\u0018\u00002\u00020\u0001J!\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\f\u001a\u00020\tH\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\tH\u0016¢\u0006\u0004\b\r\u0010\u000bJ\u000f\u0010\u000e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"Lkotlinx/coroutines/scheduling/DefaultScheduler;", "Lkotlinx/coroutines/scheduling/SchedulerCoroutineDispatcher;", "", "parallelism", "", "name", "Lkotlinx/coroutines/CoroutineDispatcher;", "limitedParallelism", "(ILjava/lang/String;)Lkotlinx/coroutines/CoroutineDispatcher;", "", "shutdown$kotlinx_coroutines_core", "()V", "shutdown", "close", "toString", "()Ljava/lang/String;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class DefaultScheduler extends SchedulerCoroutineDispatcher {

    @NotNull
    public static final DefaultScheduler INSTANCE = new SchedulerCoroutineDispatcher(TasksKt.CORE_POOL_SIZE, TasksKt.MAX_POOL_SIZE, TasksKt.IDLE_WORKER_KEEP_ALIVE_NS, TasksKt.DEFAULT_SCHEDULER_NAME);

    @Override // kotlinx.coroutines.scheduling.SchedulerCoroutineDispatcher, kotlinx.coroutines.ExecutorCoroutineDispatcher, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public CoroutineDispatcher limitedParallelism(int parallelism, @Nullable String name) {
        LimitedDispatcherKt.checkParallelism(parallelism);
        if (parallelism >= TasksKt.CORE_POOL_SIZE) {
            return LimitedDispatcherKt.namedOrThis(this, name);
        }
        return super.limitedParallelism(parallelism, name);
    }

    public final void shutdown$kotlinx_coroutines_core() {
        super.close();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    /* renamed from: toString */
    public String getF2411x1378447b() {
        return "Dispatchers.Default";
    }
}
