package androidx.work.multiprocess;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.concurrent.futures.SuspendToFutureAdapter;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.multiprocess.IListenableWorkerImpl;
import androidx.work.multiprocess.IWorkManagerImplCallback;
import androidx.work.multiprocess.RemoteListenableDelegatingWorker;
import androidx.work.multiprocess.parcelable.ParcelConverters;
import androidx.work.multiprocess.parcelable.ParcelableInterruptRequest;
import com.google.common.util.concurrent.ListenableFuture;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineDispatcher;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\r\u001a\u00020\u000eH\u0017J\u000e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010H\u0016R\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Landroidx/work/multiprocess/RemoteListenableDelegatingWorker;", "Landroidx/work/ListenableWorker;", "context", "Landroid/content/Context;", "workerParameters", "Landroidx/work/WorkerParameters;", "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V", "client", "Landroidx/work/multiprocess/ListenableWorkerImplClient;", "getClient$work_multiprocess_release", "()Landroidx/work/multiprocess/ListenableWorkerImplClient;", "componentName", "Landroid/content/ComponentName;", "onStopped", "", "startWork", "Lcom/google/common/util/concurrent/ListenableFuture;", "Landroidx/work/ListenableWorker$Result;", "Companion", "work-multiprocess_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RemoteListenableDelegatingWorker extends ListenableWorker {

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final String ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME = "androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME";

    @NotNull
    private static final String TAG = "RemoteListenableDelegatingWorker";

    @NotNull
    private final ListenableWorkerImplClient client;

    @Nullable
    private ComponentName componentName;

    @NotNull
    private final Context context;

    @NotNull
    private final WorkerParameters workerParameters;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteListenableDelegatingWorker(@NotNull Context context, @NotNull WorkerParameters workerParameters) {
        super(context, workerParameters);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(workerParameters, "workerParameters");
        this.context = context;
        this.workerParameters = workerParameters;
        this.client = new ListenableWorkerImplClient(context, workerParameters.getBackgroundExecutor());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onStopped$lambda$0(RemoteListenableDelegatingWorker remoteListenableDelegatingWorker, IListenableWorkerImpl iListenableWorkerImpl, IWorkManagerImplCallback callback) {
        Intrinsics.checkNotNullParameter(iListenableWorkerImpl, "iListenableWorkerImpl");
        Intrinsics.checkNotNullParameter(callback, "callback");
        String uuid = remoteListenableDelegatingWorker.workerParameters.getId().toString();
        Intrinsics.checkNotNullExpressionValue(uuid, "workerParameters.id.toString()");
        byte[] marshall = ParcelConverters.marshall(new ParcelableInterruptRequest(uuid, remoteListenableDelegatingWorker.getStopReason()));
        Intrinsics.checkNotNullExpressionValue(marshall, "marshall(interruptRequest)");
        iListenableWorkerImpl.interrupt(marshall, callback);
    }

    @NotNull
    /* renamed from: getClient$work_multiprocess_release, reason: from getter */
    public final ListenableWorkerImplClient getClient() {
        return this.client;
    }

    @Override // androidx.work.ListenableWorker
    @SuppressLint({"NewApi"})
    public void onStopped() {
        super.onStopped();
        ComponentName componentName = this.componentName;
        if (componentName != null) {
            ListenableWorkerImplClient listenableWorkerImplClient = this.client;
            Intrinsics.checkNotNull(componentName);
            listenableWorkerImplClient.execute(componentName, new RemoteDispatcher() { // from class: 땄땤딀딻땦뒾딤뒘땫드돨돴땝딸뒙뎽땮뎹뒹두둡딎뎹땸땰돠땱뒙됨땵땥뒹딌땋뒘둠땵딄된땱뒼땭뎻땲땝둥뒈돛돤땮둬돤뒈둣뒾뎡뒋됐딄딜돸땁뒷땮뒀뒨뒻됴뒉땯뒙딤된땹땡땬뎰따뎡듰땄둥뒋돳땣뒛듰되뒝땋땤뒝되뎸듻뒋땹둠듰돝듰뒼듬됫돨듬땥돰땐됫뎸뒬뎬땔땐땨땪뒙둠들따딝땋뎡돸듟둘돼듼뒨
                @Override // androidx.work.multiprocess.RemoteDispatcher
                public final void execute(Object obj, IWorkManagerImplCallback iWorkManagerImplCallback) {
                    RemoteListenableDelegatingWorker.onStopped$lambda$0(RemoteListenableDelegatingWorker.this, (IListenableWorkerImpl) obj, iWorkManagerImplCallback);
                }
            });
        }
    }

    @Override // androidx.work.ListenableWorker
    @NotNull
    public ListenableFuture<ListenableWorker.Result> startWork() {
        WorkManagerImpl workManagerImpl = WorkManagerImpl.getInstance(this.context.getApplicationContext());
        Intrinsics.checkNotNullExpressionValue(workManagerImpl, "getInstance(context.applicationContext)");
        CoroutineDispatcher taskCoroutineDispatcher = workManagerImpl.getWorkTaskExecutor().getTaskCoroutineDispatcher();
        Intrinsics.checkNotNullExpressionValue(taskCoroutineDispatcher, "workManager.workTaskExec…r.taskCoroutineDispatcher");
        return SuspendToFutureAdapter.launchFuture$default(SuspendToFutureAdapter.INSTANCE, taskCoroutineDispatcher, false, new RemoteListenableDelegatingWorker$startWork$1(this, null), 2, null);
    }
}
