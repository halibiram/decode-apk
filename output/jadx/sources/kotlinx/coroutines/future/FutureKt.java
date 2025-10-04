package kotlinx.coroutines.future;

import androidx.exifinterface.media.ExifInterface;
import defpackage.AbstractC0617xd23d8a2a;
import defpackage.AbstractC0892xc141c517;
import defpackage.C0346x75d576dc;
import defpackage.C0513x476a4a0c;
import defpackage.C0618x7655f594;
import defpackage.C0834x4a7fe0f8;
import defpackage.C0835x679acdd9;
import defpackage.C0836x3e38e592;
import defpackage.C0837xfd694cb0;
import defpackage.C0838xae8db1e;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.CompletionStage;
import java.util.concurrent.ExecutionException;
import java.util.function.BiFunction;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Deferred;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000F\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001aZ\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u0000*\u00020\u00012\b\b\u0002\u0010\u0003\u001a\u00020\u00022\b\b\u0002\u0010\u0005\u001a\u00020\u00042'\u0010\n\u001a#\b\u0001\u0012\u0004\u0012\u00020\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0006¢\u0006\u0002\b\t¢\u0006\u0004\b\f\u0010\r\u001a#\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u000e¢\u0006\u0004\b\u000f\u0010\u0010\u001a\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00120\u000b*\u00020\u0011¢\u0006\u0004\b\u000f\u0010\u0013\u001a#\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u000e\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0014¢\u0006\u0004\b\u0015\u0010\u0016\u001a \u0010\u0017\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0014H\u0086@¢\u0006\u0004\b\u0017\u0010\u0018¨\u0006\u0019"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/CoroutineScope;", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/CoroutineStart;", "start", "Lkotlin/Function2;", "Lkotlin/coroutines/Continuation;", "", "Lkotlin/ExtensionFunctionType;", "block", "Ljava/util/concurrent/CompletableFuture;", "future", "(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;)Ljava/util/concurrent/CompletableFuture;", "Lkotlinx/coroutines/Deferred;", "asCompletableFuture", "(Lkotlinx/coroutines/Deferred;)Ljava/util/concurrent/CompletableFuture;", "Lkotlinx/coroutines/Job;", "", "(Lkotlinx/coroutines/Job;)Ljava/util/concurrent/CompletableFuture;", "Ljava/util/concurrent/CompletionStage;", "asDeferred", "(Ljava/util/concurrent/CompletionStage;)Lkotlinx/coroutines/Deferred;", "await", "(Ljava/util/concurrent/CompletionStage;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 2, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFuture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,208:1\n1#2:209\n426#3,11:210\n*S KotlinDebug\n*F\n+ 1 Future.kt\nkotlinx/coroutines/future/FutureKt\n*L\n168#1:210,11\n*E\n"})
/* loaded from: classes3.dex */
public final class FutureKt {
    @NotNull
    public static final <T> CompletableFuture<T> asCompletableFuture(@NotNull Deferred<? extends T> deferred) {
        CompletableFuture<T> m3204x1db10c9d = AbstractC0617xd23d8a2a.m3204x1db10c9d();
        m3204x1db10c9d.handle((BiFunction) new C0835x679acdd9(new C0838xae8db1e(deferred), 1));
        deferred.invokeOnCompletion(new C0836x3e38e592(m3204x1db10c9d, deferred, 0));
        return m3204x1db10c9d;
    }

    @NotNull
    public static final <T> Deferred<T> asDeferred(@NotNull CompletionStage<T> completionStage) {
        CompletableFuture completableFuture;
        boolean isDone;
        ExecutionException executionException;
        Throwable cause;
        Object obj;
        completableFuture = completionStage.toCompletableFuture();
        isDone = completableFuture.isDone();
        if (isDone) {
            try {
                obj = completableFuture.get();
                return CompletableDeferredKt.CompletableDeferred(obj);
            } catch (Throwable th) {
                th = th;
                if (th instanceof ExecutionException) {
                    executionException = (ExecutionException) th;
                } else {
                    executionException = null;
                }
                if (executionException != null && (cause = executionException.getCause()) != null) {
                    th = cause;
                }
                CompletableDeferred CompletableDeferred$default = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
                CompletableDeferred$default.completeExceptionally(th);
                return CompletableDeferred$default;
            }
        }
        CompletableDeferred CompletableDeferred$default2 = CompletableDeferredKt.CompletableDeferred$default(null, 1, null);
        completionStage.handle(new C0835x679acdd9(new C0834x4a7fe0f8(CompletableDeferred$default2, 0), 0));
        JobKt.invokeOnCompletion$default(CompletableDeferred$default2, false, new C0513x476a4a0c(completableFuture, 0), 1, null);
        return CompletableDeferred$default2;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [둬들땥뒼듟됩딜땅따딃땪땭디땭두뒉딃둡딄땦딀돸듟땀딟땮땩딽뎽들땰뎻뒷딌뎡뒘땪딞뒼땯듼됫돨듼들딄딨땧딜딎땣뒹뒝딀땄땟딁뒈돤듔뒙뒘됐땀딝디듽딀딄땦뒹뒹딅땻땫땄뒙듰뎨돷땥땔두딅둡둡땯돷뒙된땜둣뒼땐뒐돷뎽돼딄딟뎰딅땜돨뒬됨둣돰딠도땍뒻둬듼땐딜뒬듻뒷뒹뒾땹둘돛돨듸땝딠듼딸, java.lang.Object] */
    @Nullable
    public static final <T> Object await(@NotNull CompletionStage<T> completionStage, @NotNull Continuation<? super T> continuation) {
        CompletableFuture completableFuture;
        boolean isDone;
        Object obj;
        completableFuture = completionStage.toCompletableFuture();
        isDone = completableFuture.isDone();
        if (isDone) {
            try {
                obj = completableFuture.get();
                return obj;
            } catch (ExecutionException e) {
                Throwable cause = e.getCause();
                if (cause == null) {
                    throw e;
                }
                throw cause;
            }
        }
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        ?? obj2 = new Object();
        obj2.cont = cancellableContinuationImpl;
        completionStage.handle(obj2);
        cancellableContinuationImpl.invokeOnCancellation(new C0837xfd694cb0(completableFuture, obj2));
        Object result = cancellableContinuationImpl.getResult();
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    @NotNull
    public static final <T> CompletableFuture<T> future(@NotNull CoroutineScope coroutineScope, @NotNull CoroutineContext coroutineContext, @NotNull CoroutineStart coroutineStart, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2) {
        if (!coroutineStart.isLazy()) {
            CoroutineContext newCoroutineContext = CoroutineContextKt.newCoroutineContext(coroutineScope, coroutineContext);
            CompletableFuture<T> m3204x1db10c9d = AbstractC0617xd23d8a2a.m3204x1db10c9d();
            C0618x7655f594 c0618x7655f594 = new C0618x7655f594(newCoroutineContext, m3204x1db10c9d);
            m3204x1db10c9d.handle((BiFunction) c0618x7655f594);
            c0618x7655f594.start(coroutineStart, c0618x7655f594, function2);
            return m3204x1db10c9d;
        }
        throw new IllegalArgumentException((coroutineStart + " start is not supported").toString());
    }

    public static /* synthetic */ CompletableFuture future$default(CoroutineScope coroutineScope, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return future(coroutineScope, coroutineContext, coroutineStart, function2);
    }

    @NotNull
    public static final CompletableFuture<Unit> asCompletableFuture(@NotNull Job job) {
        CompletableFuture<Unit> m3204x1db10c9d = AbstractC0617xd23d8a2a.m3204x1db10c9d();
        m3204x1db10c9d.handle((BiFunction<? super Unit, Throwable, ? extends U>) ((BiFunction) new C0835x679acdd9(new C0838xae8db1e(job), 1)));
        job.invokeOnCompletion(new C0346x75d576dc(m3204x1db10c9d, 6));
        return m3204x1db10c9d;
    }
}
