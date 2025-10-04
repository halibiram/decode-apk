package androidx.work.impl;

import androidx.annotation.RestrictTo;
import androidx.exifinterface.media.ExifInterface;
import androidx.work.DirectExecutor;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0892xc141c517;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuationImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000*\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0000\u001a!\u0010\u0002\u001a\u0002H\u0003\"\u0004\b\u0000\u0010\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00030\u0005H\u0002¢\u0006\u0002\u0010\u0006\u001a&\u0010\u0007\u001a\u0002H\b\"\u0004\b\u0000\u0010\b*\b\u0012\u0004\u0012\u0002H\b0\t2\u0006\u0010\n\u001a\u00020\u000bH\u0087@¢\u0006\u0002\u0010\f\u001a\f\u0010\r\u001a\u00020\u000e*\u00020\u000fH\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"TAG", "", "getUninterruptibly", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "future", "Ljava/util/concurrent/Future;", "(Ljava/util/concurrent/Future;)Ljava/lang/Object;", "awaitWithin", ExifInterface.GPS_DIRECTION_TRUE, "Lcom/google/common/util/concurrent/ListenableFuture;", "worker", "Landroidx/work/ListenableWorker;", "(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/work/ListenableWorker;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "nonNullCause", "", "Ljava/util/concurrent/ExecutionException;", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nWorkerWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkerWrapper.kt\nandroidx/work/impl/WorkerWrapperKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,607:1\n314#2,11:608\n*S KotlinDebug\n*F\n+ 1 WorkerWrapper.kt\nandroidx/work/impl/WorkerWrapperKt\n*L\n553#1:608,11\n*E\n"})
/* loaded from: classes.dex */
public final class WorkerWrapperKt {

    @NotNull
    private static final String TAG;

    static {
        String tagWithPrefix = Logger.tagWithPrefix("WorkerWrapper");
        Intrinsics.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"WorkerWrapper\")");
        TAG = tagWithPrefix;
    }

    public static final /* synthetic */ String access$getTAG$p() {
        return TAG;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    public static final <T> Object awaitWithin(@NotNull final ListenableFuture<T> listenableFuture, @NotNull final ListenableWorker listenableWorker, @NotNull Continuation<? super T> continuation) {
        try {
            if (listenableFuture.isDone()) {
                return getUninterruptibly(listenableFuture);
            }
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
            cancellableContinuationImpl.initCancellability();
            listenableFuture.addListener(new ToContinuation(listenableFuture, cancellableContinuationImpl), DirectExecutor.INSTANCE);
            cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.work.impl.WorkerWrapperKt$awaitWithin$2$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(Throwable th) {
                    if (th instanceof WorkerStoppedException) {
                        ListenableWorker.this.stop(((WorkerStoppedException) th).getReason());
                    }
                    listenableFuture.cancel(false);
                }
            });
            Object result = cancellableContinuationImpl.getResult();
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return result;
        } catch (ExecutionException e) {
            throw nonNullCause(e);
        }
    }

    public static final <V> V getUninterruptibly(Future<V> future) {
        V v;
        boolean z = false;
        while (true) {
            try {
                v = future.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return v;
    }

    public static final Throwable nonNullCause(ExecutionException executionException) {
        Throwable cause = executionException.getCause();
        Intrinsics.checkNotNull(cause);
        return cause;
    }
}
