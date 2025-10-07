package androidx.work.multiprocess;

import android.content.Context;
import androidx.concurrent.futures.SuspendToFutureAdapter;
import androidx.work.Configuration;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a>\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0000¨\u0006\u000f"}, d2 = {"executeRemoteWorker", "Lcom/google/common/util/concurrent/ListenableFuture;", "Landroidx/work/ListenableWorker$Result;", "context", "Landroid/content/Context;", "configuration", "Landroidx/work/Configuration;", "workerClassName", "", "workerParameters", "Landroidx/work/WorkerParameters;", "job", "Lkotlinx/coroutines/Job;", "taskExecutor", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "work-multiprocess_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RemoteWorkerWrapperKt {
    @NotNull
    public static final ListenableFuture<ListenableWorker.Result> executeRemoteWorker(@NotNull Context context, @NotNull Configuration configuration, @NotNull String workerClassName, @NotNull WorkerParameters workerParameters, @NotNull Job job, @NotNull TaskExecutor taskExecutor) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(workerClassName, "workerClassName");
        Intrinsics.checkNotNullParameter(workerParameters, "workerParameters");
        Intrinsics.checkNotNullParameter(job, "job");
        Intrinsics.checkNotNullParameter(taskExecutor, "taskExecutor");
        Executor mainThreadExecutor = taskExecutor.getMainThreadExecutor();
        Intrinsics.checkNotNullExpressionValue(mainThreadExecutor, "taskExecutor.mainThreadExecutor");
        return SuspendToFutureAdapter.INSTANCE.launchFuture(ExecutorsKt.from(mainThreadExecutor).plus(job), false, new RemoteWorkerWrapperKt$executeRemoteWorker$future$1(configuration, context, workerClassName, workerParameters, taskExecutor, null));
    }
}
