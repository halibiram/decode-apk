package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0892xc141c517;
import defpackage.C1239x82141783;
import defpackage.RunnableC1238xc7f678f4;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000<\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aT\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0086@\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\t\u0010\n\u001aT\u0010\t\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\f\u001a\u00020\u000b2'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0086@\u0082\u0002\n\n\b\b\u0001\u0012\u0002\u0010\u0002 \u0001¢\u0006\u0004\b\r\u0010\n\u001aI\u0010\u000e\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0086@¢\u0006\u0004\b\u000e\u0010\n\u001aI\u0010\u000e\u001a\u0004\u0018\u00018\u0000\"\u0004\b\u0000\u0010\u00002\u0006\u0010\f\u001a\u00020\u000b2'\u0010\b\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0003¢\u0006\u0002\b\u0007H\u0086@¢\u0006\u0004\b\u000f\u0010\n\u001a'\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0000¢\u0006\u0004\b\u0016\u0010\u0017¨\u0006\u0018"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "timeMillis", "Lkotlin/Function2;", "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "withTimeout", "(JLkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlin/time/Duration;", "timeout", "withTimeout-KLykuaI", "withTimeoutOrNull", "withTimeoutOrNull-KLykuaI", "time", "Lkotlinx/coroutines/Delay;", "delay", "Lkotlinx/coroutines/Job;", "coroutine", "Lkotlinx/coroutines/TimeoutCancellationException;", "TimeoutCancellationException", "(JLkotlinx/coroutines/Delay;Lkotlinx/coroutines/Job;)Lkotlinx/coroutines/TimeoutCancellationException;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class TimeoutKt {
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0016, code lost:
    
        if (r4 == null) goto L9;
     */
    @NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final TimeoutCancellationException TimeoutCancellationException(long j, @NotNull Delay delay, @NotNull Job job) {
        DelayWithTimeoutDiagnostics delayWithTimeoutDiagnostics;
        String str;
        if (delay instanceof DelayWithTimeoutDiagnostics) {
            delayWithTimeoutDiagnostics = (DelayWithTimeoutDiagnostics) delay;
        } else {
            delayWithTimeoutDiagnostics = null;
        }
        if (delayWithTimeoutDiagnostics != null) {
            Duration.Companion companion = Duration.INSTANCE;
            str = delayWithTimeoutDiagnostics.m2226timeoutMessageLRDsOJo(DurationKt.toDuration(j, DurationUnit.MILLISECONDS));
        }
        str = "Timed out waiting for " + j + " ms";
        return new TimeoutCancellationException(str, job);
    }

    @Nullable
    public static final <T> Object withTimeout(long j, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        if (j > 0) {
            RunnableC1238xc7f678f4 runnableC1238xc7f678f4 = new RunnableC1238xc7f678f4(j, continuation);
            JobKt.disposeOnCompletion(runnableC1238xc7f678f4, DelayKt.getDelay(runnableC1238xc7f678f4.uCont.getF1168xfbe0c504()).invokeOnTimeout(runnableC1238xc7f678f4.f5657x75d576dc, runnableC1238xc7f678f4, runnableC1238xc7f678f4.getF1168xfbe0c504()));
            Object startUndispatchedOrReturnIgnoreTimeout = UndispatchedKt.startUndispatchedOrReturnIgnoreTimeout(runnableC1238xc7f678f4, runnableC1238xc7f678f4, function2);
            if (startUndispatchedOrReturnIgnoreTimeout == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return startUndispatchedOrReturnIgnoreTimeout;
        }
        throw new TimeoutCancellationException("Timed out immediately");
    }

    @Nullable
    /* renamed from: withTimeout-KLykuaI, reason: not valid java name */
    public static final <T> Object m2249withTimeoutKLykuaI(long j, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return withTimeout(DelayKt.m2225toDelayMillisLRDsOJo(j), function2, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0089 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /* JADX WARN: Type inference failed for: r2v1, types: [땫듸딤듸돰뒤뒙땭뒼땟딝됴뒻듰땬됴뒛땄둑듼뎡땀딄든듰딽땳딄돼둘땃땰듸딻뒤득딃뒵듻딸듰땳땬딌딤될뎡땍땻땻듟뒘땦땬땐뒈된땅딻뒹딸돳땫땝땻땯뎬둬땫땻땜두딅뎻땵돼드뒬땠딹땹땵딌둣둠딞땤돴뒼듟됫됴땻딄득땮듸땡돼딤땟뒉땜듸돶딜돝뒙딐뒛땹둔뒻땻땟딻뎹됫듌돼땪돨딨땻딹득뒾뒷뎰땝, kotlinx.coroutines.AbstractCoroutine, T, kotlinx.coroutines.Job, kotlinx.coroutines.internal.ScopeCoroutine, java.lang.Object, java.lang.Runnable] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> Object withTimeoutOrNull(long j, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        C1239x82141783 c1239x82141783;
        int i;
        Ref.ObjectRef objectRef;
        if (continuation instanceof C1239x82141783) {
            C1239x82141783 c1239x821417832 = (C1239x82141783) continuation;
            int i2 = c1239x821417832.f5661x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c1239x821417832.f5661x75d576dc = i2 - Integer.MIN_VALUE;
                c1239x82141783 = c1239x821417832;
                Object obj = c1239x82141783.f5660x1378447b;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c1239x82141783.f5661x75d576dc;
                if (i == 0) {
                    if (i == 1) {
                        objectRef = c1239x82141783.f5659x3271d0aa;
                        try {
                            ResultKt.throwOnFailure(obj);
                            return obj;
                        } catch (TimeoutCancellationException e) {
                            e = e;
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    if (j <= 0) {
                        return null;
                    }
                    Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                    try {
                        c1239x82141783.f5658xfbe0c504 = function2;
                        c1239x82141783.f5659x3271d0aa = objectRef2;
                        c1239x82141783.f5661x75d576dc = 1;
                        ?? r2 = (T) new RunnableC1238xc7f678f4(j, c1239x82141783);
                        objectRef2.element = r2;
                        try {
                            JobKt.disposeOnCompletion(r2, DelayKt.getDelay(r2.uCont.getF1168xfbe0c504()).invokeOnTimeout(r2.f5657x75d576dc, r2, r2.getF1168xfbe0c504()));
                            Object startUndispatchedOrReturnIgnoreTimeout = UndispatchedKt.startUndispatchedOrReturnIgnoreTimeout(r2, r2, function2);
                            if (startUndispatchedOrReturnIgnoreTimeout == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                                DebugProbesKt.probeCoroutineSuspended(c1239x82141783);
                            }
                            if (startUndispatchedOrReturnIgnoreTimeout == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                            return startUndispatchedOrReturnIgnoreTimeout;
                        } catch (TimeoutCancellationException e2) {
                            e = e2;
                            objectRef = objectRef2;
                            if (e.coroutine == objectRef.element) {
                            }
                        }
                    } catch (TimeoutCancellationException e3) {
                        e = e3;
                    }
                }
                if (e.coroutine == objectRef.element) {
                    return null;
                }
                throw e;
            }
        }
        c1239x82141783 = new ContinuationImpl(continuation);
        Object obj2 = c1239x82141783.f5660x1378447b;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c1239x82141783.f5661x75d576dc;
        if (i == 0) {
        }
        if (e.coroutine == objectRef.element) {
        }
    }

    @Nullable
    /* renamed from: withTimeoutOrNull-KLykuaI, reason: not valid java name */
    public static final <T> Object m2250withTimeoutOrNullKLykuaI(long j, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return withTimeoutOrNull(DelayKt.m2225toDelayMillisLRDsOJo(j), function2, continuation);
    }
}
