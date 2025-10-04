package kotlinx.coroutines;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.AbstractC0892xc141c517;
import defpackage.C0671x85431a38;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010\u0001\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u000e\u0010\u0000\u001a\u00020\u0001H\u0086@¢\u0006\u0002\u0010\u0002\u001a\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086@¢\u0006\u0002\u0010\u0007\u001a\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\tH\u0086@¢\u0006\u0004\b\n\u0010\u0007\u001a\u0013\u0010\u000f\u001a\u00020\u0006*\u00020\tH\u0000¢\u0006\u0004\b\u0010\u0010\u0011\"\u0018\u0010\u0003\u001a\u00020\u000b*\u00020\f8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000e¨\u0006\u0012"}, d2 = {"awaitCancellation", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "delay", "", "timeMillis", "", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", TypedValues.TransitionType.S_DURATION, "Lkotlin/time/Duration;", "delay-VtjQ1oo", "Lkotlinx/coroutines/Delay;", "Lkotlin/coroutines/CoroutineContext;", "getDelay", "(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/Delay;", "toDelayMillis", "toDelayMillis-LRDsOJo", "(J)J", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/DelayKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,159:1\n426#2,11:160\n426#2,11:171\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/DelayKt\n*L\n103#1:160,11\n123#1:171,11\n*E\n"})
/* loaded from: classes3.dex */
public final class DelayKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object awaitCancellation(@NotNull Continuation<?> continuation) {
        C0671x85431a38 c0671x85431a38;
        int i;
        if (continuation instanceof C0671x85431a38) {
            C0671x85431a38 c0671x85431a382 = (C0671x85431a38) continuation;
            int i2 = c0671x85431a382.f4495x3271d0aa;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0671x85431a382.f4495x3271d0aa = i2 - Integer.MIN_VALUE;
                c0671x85431a38 = c0671x85431a382;
                Object obj = c0671x85431a38.f4494xfbe0c504;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0671x85431a38.f4495x3271d0aa;
                if (i == 0) {
                    if (i != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    ResultKt.throwOnFailure(obj);
                } else {
                    ResultKt.throwOnFailure(obj);
                    c0671x85431a38.f4495x3271d0aa = 1;
                    CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(c0671x85431a38), 1);
                    cancellableContinuationImpl.initCancellability();
                    Object result = cancellableContinuationImpl.getResult();
                    if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                        DebugProbesKt.probeCoroutineSuspended(c0671x85431a38);
                    }
                    if (result == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                throw new KotlinNothingValueException();
            }
        }
        c0671x85431a38 = new ContinuationImpl(continuation);
        Object obj2 = c0671x85431a38.f4494xfbe0c504;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0671x85431a38.f4495x3271d0aa;
        if (i == 0) {
        }
        throw new KotlinNothingValueException();
    }

    @Nullable
    public static final Object delay(long j, @NotNull Continuation<? super Unit> continuation) {
        if (j <= 0) {
            return Unit.INSTANCE;
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        if (j < Long.MAX_VALUE) {
            getDelay(cancellableContinuationImpl.getContext()).scheduleResumeAfterDelay(j, cancellableContinuationImpl);
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return result;
        }
        return Unit.INSTANCE;
    }

    @Nullable
    /* renamed from: delay-VtjQ1oo, reason: not valid java name */
    public static final Object m2224delayVtjQ1oo(long j, @NotNull Continuation<? super Unit> continuation) {
        Object delay = delay(m2225toDelayMillisLRDsOJo(j), continuation);
        if (delay == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return delay;
        }
        return Unit.INSTANCE;
    }

    @NotNull
    public static final Delay getDelay(@NotNull CoroutineContext coroutineContext) {
        Delay delay;
        CoroutineContext.Element element = coroutineContext.get(ContinuationInterceptor.INSTANCE);
        if (element instanceof Delay) {
            delay = (Delay) element;
        } else {
            delay = null;
        }
        if (delay == null) {
            return DefaultExecutorKt.getDefaultDelay();
        }
        return delay;
    }

    /* renamed from: toDelayMillis-LRDsOJo, reason: not valid java name */
    public static final long m2225toDelayMillisLRDsOJo(long j) {
        boolean m2111isPositiveimpl = Duration.m2111isPositiveimpl(j);
        if (m2111isPositiveimpl) {
            return Duration.m2100getInWholeMillisecondsimpl(Duration.m2113plusLRDsOJo(j, DurationKt.toDuration(999999L, DurationUnit.NANOSECONDS)));
        }
        if (!m2111isPositiveimpl) {
            return 0L;
        }
        throw new NoWhenBranchMatchedException();
    }
}
