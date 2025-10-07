package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import defpackage.C0648x4ba9bb0c;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ExperimentalStdlibApi;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.AbstractCoroutineContextKey;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import kotlinx.coroutines.internal.LimitedDispatcher;
import kotlinx.coroutines.internal.LimitedDispatcherKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u0000 \u001d2\u00020\u00012\u00020\u0002:\u0001\u001dB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u001c\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000b2\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\t\u001a\u00020\u00002\u0006\u0010\n\u001a\u00020\u000bH\u0017J!\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\b2\n\u0010\u0010\u001a\u00060\u0011j\u0002`\u0012H&¢\u0006\u0002\u0010\u0013J!\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\b2\n\u0010\u0010\u001a\u00060\u0011j\u0002`\u0012H\u0017¢\u0006\u0002\u0010\u0013J \u0010\u0015\u001a\b\u0012\u0004\u0012\u0002H\u00170\u0016\"\u0004\b\u0000\u0010\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u00170\u0016J\u0012\u0010\u0019\u001a\u00020\u000f2\n\u0010\u0018\u001a\u0006\u0012\u0002\b\u00030\u0016J\u0011\u0010\u001a\u001a\u00020\u00002\u0006\u0010\u001b\u001a\u00020\u0000H\u0087\u0002J\b\u0010\u001c\u001a\u00020\rH\u0016¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/CoroutineDispatcher;", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlin/coroutines/ContinuationInterceptor;", "<init>", "()V", "isDispatchNeeded", "", "context", "Lkotlin/coroutines/CoroutineContext;", "limitedParallelism", "parallelism", "", "name", "", "dispatch", "", "block", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "dispatchYield", "interceptContinuation", "Lkotlin/coroutines/Continuation;", ExifInterface.GPS_DIRECTION_TRUE, "continuation", "releaseInterceptedContinuation", "plus", "other", "toString", "Key", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public abstract class CoroutineDispatcher extends AbstractCoroutineContextElement implements ContinuationInterceptor {

    /* renamed from: Key, reason: from kotlin metadata */
    @NotNull
    public static final Companion INSTANCE = new Companion(null);

    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0087\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001¨\u0006\u0004"}, d2 = {"Lkotlinx/coroutines/CoroutineDispatcher$Key;", "Lkotlin/coroutines/AbstractCoroutineContextKey;", "Lkotlin/coroutines/ContinuationInterceptor;", "Lkotlinx/coroutines/CoroutineDispatcher;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @ExperimentalStdlibApi
    /* renamed from: kotlinx.coroutines.CoroutineDispatcher$Key, reason: from kotlin metadata */
    /* loaded from: classes3.dex */
    public static final class Companion extends AbstractCoroutineContextKey<ContinuationInterceptor, CoroutineDispatcher> {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            super(ContinuationInterceptor.INSTANCE, new C0648x4ba9bb0c(0));
        }
    }

    public CoroutineDispatcher() {
        super(ContinuationInterceptor.INSTANCE);
    }

    public static /* synthetic */ CoroutineDispatcher limitedParallelism$default(CoroutineDispatcher coroutineDispatcher, int i, String str, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 2) != 0) {
                str = null;
            }
            return coroutineDispatcher.limitedParallelism(i, str);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: limitedParallelism");
    }

    public abstract void dispatch(@NotNull CoroutineContext context, @NotNull Runnable block);

    @InternalCoroutinesApi
    public void dispatchYield(@NotNull CoroutineContext context, @NotNull Runnable block) {
        DispatchedContinuationKt.safeDispatch(this, context, block);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @Nullable
    public <E extends CoroutineContext.Element> E get(@NotNull CoroutineContext.Key<E> key) {
        return (E) ContinuationInterceptor.DefaultImpls.get(this, key);
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    @NotNull
    public final <T> Continuation<T> interceptContinuation(@NotNull Continuation<? super T> continuation) {
        return new DispatchedContinuation(this, continuation);
    }

    public boolean isDispatchNeeded(@NotNull CoroutineContext context) {
        return true;
    }

    @NotNull
    public CoroutineDispatcher limitedParallelism(int parallelism, @Nullable String name) {
        LimitedDispatcherKt.checkParallelism(parallelism);
        return new LimitedDispatcher(this, parallelism, name);
    }

    @Override // kotlin.coroutines.AbstractCoroutineContextElement, kotlin.coroutines.CoroutineContext.Element, kotlin.coroutines.CoroutineContext
    @NotNull
    public CoroutineContext minusKey(@NotNull CoroutineContext.Key<?> key) {
        return ContinuationInterceptor.DefaultImpls.minusKey(this, key);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two CoroutineDispatcher objects is meaningless. CoroutineDispatcher is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The dispatcher to the right of `+` just replaces the dispatcher to the left.")
    @NotNull
    public final CoroutineDispatcher plus(@NotNull CoroutineDispatcher other) {
        return other;
    }

    @Override // kotlin.coroutines.ContinuationInterceptor
    public final void releaseInterceptedContinuation(@NotNull Continuation<?> continuation) {
        Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        ((DispatchedContinuation) continuation).release$kotlinx_coroutines_core();
    }

    @NotNull
    public String toString() {
        return DebugStringsKt.getClassSimpleName(this) + '@' + DebugStringsKt.getHexAddress(this);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated for good. Override 'limitedParallelism(parallelism: Int, name: String?)' instead", replaceWith = @ReplaceWith(expression = "limitedParallelism(parallelism, null)", imports = {}))
    public /* synthetic */ CoroutineDispatcher limitedParallelism(int parallelism) {
        return limitedParallelism(parallelism, null);
    }
}
