package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import defpackage.C0891x3b3f891f;
import defpackage.C1234x3bf46a91;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a.\u0010\u0005\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0086@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlin/Function0;", "block", "runInterruptible", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class InterruptibleKt {
    public static final Object access$runInterruptibleInExpectedContext(CoroutineContext coroutineContext, Function0 function0) {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        int i;
        try {
            C1234x3bf46a91 c1234x3bf46a91 = new C1234x3bf46a91();
            c1234x3bf46a91.f5642x9738a56c = JobKt.invokeOnCompletion$default(JobKt.getJob(coroutineContext), false, c1234x3bf46a91, 1, null);
            try {
                do {
                    atomicIntegerFieldUpdater = C1234x3bf46a91.f5640x9e171bf9;
                    i = atomicIntegerFieldUpdater.get(c1234x3bf46a91);
                    if (i != 0) {
                        if (i != 2 && i != 3) {
                            C1234x3bf46a91.m3976x75d576dc(i);
                            throw null;
                        }
                    }
                    return function0.invoke();
                } while (!atomicIntegerFieldUpdater.compareAndSet(c1234x3bf46a91, i, 0));
                return function0.invoke();
            } finally {
                c1234x3bf46a91.m3977x1378447b();
            }
        } catch (InterruptedException e) {
            throw new CancellationException("Blocking call was interrupted due to parent cancellation").initCause(e);
        }
    }

    @Nullable
    public static final <T> Object runInterruptible(@NotNull CoroutineContext coroutineContext, @NotNull Function0<? extends T> function0, @NotNull Continuation<? super T> continuation) {
        return BuildersKt.withContext(coroutineContext, new C0891x3b3f891f(function0, null), continuation);
    }

    public static /* synthetic */ Object runInterruptible$default(CoroutineContext coroutineContext, Function0 function0, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return runInterruptible(coroutineContext, function0, continuation);
    }
}
