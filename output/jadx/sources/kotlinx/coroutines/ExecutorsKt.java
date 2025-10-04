package kotlinx.coroutines;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.ExecutorC0678xe905b244;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0011\u0010\u0003\u001a\u00020\u0001*\u00020\u0004H\u0007¢\u0006\u0002\b\u0005\u001a\u0011\u0010\u0003\u001a\u00020\u0006*\u00020\u0007H\u0007¢\u0006\u0002\b\u0005\u001a\n\u0010\b\u001a\u00020\u0007*\u00020\u0006*\u0010\b\u0007\u0010\u0000\"\u00020\u00012\u00020\u0001B\u0002\b\u0002¨\u0006\t"}, d2 = {"CloseableCoroutineDispatcher", "Lkotlinx/coroutines/ExecutorCoroutineDispatcher;", "Lkotlinx/coroutines/ExperimentalCoroutinesApi;", "asCoroutineDispatcher", "Ljava/util/concurrent/ExecutorService;", TypedValues.TransitionType.S_FROM, "Lkotlinx/coroutines/CoroutineDispatcher;", "Ljava/util/concurrent/Executor;", "asExecutor", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class ExecutorsKt {
    @ExperimentalCoroutinesApi
    public static /* synthetic */ void CloseableCoroutineDispatcher$annotations() {
    }

    @NotNull
    public static final Executor asExecutor(@NotNull CoroutineDispatcher coroutineDispatcher) {
        ExecutorCoroutineDispatcher executorCoroutineDispatcher;
        Executor executor;
        if (coroutineDispatcher instanceof ExecutorCoroutineDispatcher) {
            executorCoroutineDispatcher = (ExecutorCoroutineDispatcher) coroutineDispatcher;
        } else {
            executorCoroutineDispatcher = null;
        }
        if (executorCoroutineDispatcher == null || (executor = executorCoroutineDispatcher.getExecutor()) == null) {
            return new ExecutorC0678xe905b244(coroutineDispatcher);
        }
        return executor;
    }

    @JvmName(name = TypedValues.TransitionType.S_FROM)
    @NotNull
    public static final ExecutorCoroutineDispatcher from(@NotNull ExecutorService executorService) {
        return new ExecutorCoroutineDispatcherImpl(executorService);
    }

    @JvmName(name = TypedValues.TransitionType.S_FROM)
    @NotNull
    public static final CoroutineDispatcher from(@NotNull Executor executor) {
        CoroutineDispatcher coroutineDispatcher;
        ExecutorC0678xe905b244 executorC0678xe905b244 = executor instanceof ExecutorC0678xe905b244 ? (ExecutorC0678xe905b244) executor : null;
        return (executorC0678xe905b244 == null || (coroutineDispatcher = executorC0678xe905b244.f4508xfbe0c504) == null) ? new ExecutorCoroutineDispatcherImpl(executor) : coroutineDispatcher;
    }
}
