package androidx.work.multiprocess;

import android.content.Context;
import androidx.concurrent.futures.ListenableFutureKt;
import androidx.concurrent.futures.SuspendToFutureAdapter;
import androidx.work.Data;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0892xc141c517;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b&\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u000e\u0010\u0007\u001a\u00020\bH¦@¢\u0006\u0002\u0010\tJ\u0006\u0010\n\u001a\u00020\u000bJ\u0016\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eH\u0086@¢\u0006\u0002\u0010\u000fJ\u000e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\b0\u0011H\u0016¨\u0006\u0012"}, d2 = {"Landroidx/work/multiprocess/RemoteCoroutineWorker;", "Landroidx/work/multiprocess/RemoteListenableWorker;", "context", "Landroid/content/Context;", "parameters", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "doRemoteWork", "Landroidx/work/ListenableWorker$Result;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "onStopped", "", "setProgress", "data", "Landroidx/work/Data;", "(Landroidx/work/Data;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "startRemoteWork", "Lcom/google/common/util/concurrent/ListenableFuture;", "work-multiprocess_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class RemoteCoroutineWorker extends RemoteListenableWorker {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteCoroutineWorker(@NotNull Context context, @NotNull WorkerParameters parameters) {
        super(context, parameters);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
    }

    @Nullable
    public abstract Object doRemoteWork(@NotNull Continuation<? super ListenableWorker.Result> continuation);

    @Override // androidx.work.ListenableWorker
    public final void onStopped() {
        super.onStopped();
    }

    @Nullable
    public final Object setProgress(@NotNull Data data, @NotNull Continuation<? super Unit> continuation) {
        ListenableFuture<Void> progressAsync = setProgressAsync(data);
        Intrinsics.checkNotNullExpressionValue(progressAsync, "setProgressAsync(data)");
        Object await = ListenableFutureKt.await(progressAsync, continuation);
        if (await == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return await;
        }
        return Unit.INSTANCE;
    }

    @Override // androidx.work.multiprocess.RemoteListenableWorker
    @NotNull
    public ListenableFuture<ListenableWorker.Result> startRemoteWork() {
        return SuspendToFutureAdapter.INSTANCE.launchFuture(Dispatchers.getDefault().plus(JobKt.Job$default((Job) null, 1, (Object) null)), false, new RemoteCoroutineWorker$startRemoteWork$1(this, null));
    }
}
