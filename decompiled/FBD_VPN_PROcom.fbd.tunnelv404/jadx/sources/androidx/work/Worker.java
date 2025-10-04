package androidx.work;

import android.content.Context;
import androidx.annotation.WorkerThread;
import androidx.work.ListenableWorker;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b&\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH'J\b\u0010\t\u001a\u00020\nH\u0017J\u000e\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\fH\u0016J\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\f¨\u0006\u000e"}, d2 = {"Landroidx/work/Worker;", "Landroidx/work/ListenableWorker;", "context", "Landroid/content/Context;", "workerParams", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doWork", "Landroidx/work/ListenableWorker$Result;", "getForegroundInfo", "Landroidx/work/ForegroundInfo;", "getForegroundInfoAsync", "Lcom/google/common/util/concurrent/ListenableFuture;", "startWork", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class Worker extends ListenableWorker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Worker(@NotNull Context context, @NotNull WorkerParameters workerParams) {
        super(context, workerParams);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(workerParams, "workerParams");
    }

    @WorkerThread
    @NotNull
    public abstract ListenableWorker.Result doWork();

    @WorkerThread
    @NotNull
    public ForegroundInfo getForegroundInfo() {
        throw new IllegalStateException("Expedited WorkRequests require a Worker to provide an implementation for `getForegroundInfo()`");
    }

    @Override // androidx.work.ListenableWorker
    @NotNull
    public ListenableFuture<ForegroundInfo> getForegroundInfoAsync() {
        ListenableFuture<ForegroundInfo> future;
        Executor backgroundExecutor = getBackgroundExecutor();
        Intrinsics.checkNotNullExpressionValue(backgroundExecutor, "backgroundExecutor");
        future = WorkerKt.future(backgroundExecutor, new Function0<ForegroundInfo>() { // from class: androidx.work.Worker$getForegroundInfoAsync$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ForegroundInfo invoke() {
                return Worker.this.getForegroundInfo();
            }
        });
        return future;
    }

    @Override // androidx.work.ListenableWorker
    @NotNull
    public final ListenableFuture<ListenableWorker.Result> startWork() {
        ListenableFuture<ListenableWorker.Result> future;
        Executor backgroundExecutor = getBackgroundExecutor();
        Intrinsics.checkNotNullExpressionValue(backgroundExecutor, "backgroundExecutor");
        future = WorkerKt.future(backgroundExecutor, new Function0<ListenableWorker.Result>() { // from class: androidx.work.Worker$startWork$1
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ListenableWorker.Result invoke() {
                return Worker.this.doWork();
            }
        });
        return future;
    }
}
