package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\bÀ\u0002\u0018\u00002\u00020\u0001J!\u0010\u0006\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fJ#\u0010\u0011\u001a\u00020\u00102\u0006\u0010\t\u001a\u00020\b2\n\u0010\u000f\u001a\u00060\rj\u0002`\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0013\u0010\u0014¨\u0006\u0015"}, d2 = {"Lkotlinx/coroutines/Unconfined;", "Lkotlinx/coroutines/CoroutineDispatcher;", "", "parallelism", "", "name", "limitedParallelism", "(ILjava/lang/String;)Lkotlinx/coroutines/CoroutineDispatcher;", "Lkotlin/coroutines/CoroutineContext;", "context", "", "isDispatchNeeded", "(Lkotlin/coroutines/CoroutineContext;)Z", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "toString", "()Ljava/lang/String;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class Unconfined extends CoroutineDispatcher {

    @NotNull
    public static final Unconfined INSTANCE = new CoroutineDispatcher();

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatch(@NotNull CoroutineContext context, @NotNull Runnable block) {
        YieldContext yieldContext = (YieldContext) context.get(YieldContext.INSTANCE);
        if (yieldContext != null) {
            yieldContext.dispatcherWasUnconfined = true;
            return;
        }
        throw new UnsupportedOperationException("Dispatchers.Unconfined.dispatch function can only be used by the yield function. If you wrap Unconfined dispatcher in your code, make sure you properly delegate isDispatchNeeded and dispatch calls.");
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public boolean isDispatchNeeded(@NotNull CoroutineContext context) {
        return false;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public CoroutineDispatcher limitedParallelism(int parallelism, @Nullable String name) {
        throw new UnsupportedOperationException("limitedParallelism is not supported for Dispatchers.Unconfined");
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        return "Dispatchers.Unconfined";
    }
}
