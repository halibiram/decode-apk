package kotlinx.coroutines.intrinsics;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.DispatchException;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a=\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\u0000*\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002H\u0007¢\u0006\u0004\b\u0006\u0010\u0007\u001aQ\u0010\u0006\u001a\u00020\u0005\"\u0004\b\u0000\u0010\b\"\u0004\b\u0001\u0010\u0000*\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00010\u00030\t2\u0006\u0010\n\u001a\u00028\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u0002H\u0000¢\u0006\u0004\b\u0006\u0010\u000b\u001a%\u0010\u0006\u001a\u00020\u0005*\b\u0012\u0004\u0012\u00020\u00050\u00022\n\u0010\f\u001a\u0006\u0012\u0002\b\u00030\u0002H\u0000¢\u0006\u0004\b\u0006\u0010\r¨\u0006\u000e"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "completion", "", "startCoroutineCancellable", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V", "R", "Lkotlin/Function2;", "receiver", "(Lkotlin/jvm/functions/Function2;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)V", "fatalCompletion", "(Lkotlin/coroutines/Continuation;Lkotlin/coroutines/Continuation;)V", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCancellable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n1#1,65:1\n45#1,6:66\n45#1,6:72\n45#1,6:78\n*S KotlinDebug\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n15#1:66,6\n25#1:72,6\n34#1:78,6\n*E\n"})
/* loaded from: classes3.dex */
public final class CancellableKt {
    @InternalCoroutinesApi
    public static final <T> void startCoroutineCancellable(@NotNull Function1<? super Continuation<? super T>, ? extends Object> function1, @NotNull Continuation<? super T> continuation) {
        try {
            Continuation intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(function1, continuation));
            Result.Companion companion = Result.INSTANCE;
            DispatchedContinuationKt.resumeCancellableWith(intercepted, Result.m1764constructorimpl(Unit.INSTANCE));
        } catch (Throwable th) {
            m2362xfbe0c504(continuation, th);
            throw null;
        }
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public static final void m2362xfbe0c504(Continuation continuation, Throwable th) {
        if (th instanceof DispatchException) {
            th = ((DispatchException) th).getCause();
        }
        Result.Companion companion = Result.INSTANCE;
        continuation.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(th)));
        throw th;
    }

    public static final <R, T> void startCoroutineCancellable(@NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r, @NotNull Continuation<? super T> continuation) {
        try {
            Continuation intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(function2, r, continuation));
            Result.Companion companion = Result.INSTANCE;
            DispatchedContinuationKt.resumeCancellableWith(intercepted, Result.m1764constructorimpl(Unit.INSTANCE));
        } catch (Throwable th) {
            m2362xfbe0c504(continuation, th);
            throw null;
        }
    }

    public static final void startCoroutineCancellable(@NotNull Continuation<? super Unit> continuation, @NotNull Continuation<?> continuation2) {
        try {
            Continuation intercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
            Result.Companion companion = Result.INSTANCE;
            DispatchedContinuationKt.resumeCancellableWith(intercepted, Result.m1764constructorimpl(Unit.INSTANCE));
        } catch (Throwable th) {
            m2362xfbe0c504(continuation2, th);
            throw null;
        }
    }
}
