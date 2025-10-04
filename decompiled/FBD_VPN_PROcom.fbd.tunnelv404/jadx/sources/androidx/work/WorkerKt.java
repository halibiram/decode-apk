package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.exifinterface.media.ExifInterface;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.C0379x9172909e;
import defpackage.RunnableC0933x9c04fa0;
import defpackage.RunnableC0934xfc4a23e4;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a&\u0010\u0000\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0005H\u0002¨\u0006\u0006"}, d2 = {"future", "Lcom/google/common/util/concurrent/ListenableFuture;", ExifInterface.GPS_DIRECTION_TRUE, "Ljava/util/concurrent/Executor;", "block", "Lkotlin/Function0;", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WorkerKt {
    public static final <T> ListenableFuture<T> future(Executor executor, Function0<? extends T> function0) {
        ListenableFuture<T> future = CallbackToFutureAdapter.getFuture(new C0379x9172909e(executor, function0, 10));
        Intrinsics.checkNotNullExpressionValue(future, "getFuture {\n        val …        }\n        }\n    }");
        return future;
    }

    public static final Unit future$lambda$2(Executor executor, Function0 function0, CallbackToFutureAdapter.Completer it) {
        Intrinsics.checkNotNullParameter(it, "it");
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        it.addCancellationListener(new RunnableC0933x9c04fa0(atomicBoolean, 1), DirectExecutor.INSTANCE);
        executor.execute(new RunnableC0934xfc4a23e4(atomicBoolean, it, function0, 1));
        return Unit.INSTANCE;
    }

    public static final void future$lambda$2$lambda$1(AtomicBoolean atomicBoolean, CallbackToFutureAdapter.Completer completer, Function0 function0) {
        if (atomicBoolean.get()) {
            return;
        }
        try {
            completer.set(function0.invoke());
        } catch (Throwable th) {
            completer.setException(th);
        }
    }
}
