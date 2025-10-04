package androidx.work.multiprocess;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.C0641x7afeb542;

/* loaded from: classes.dex */
public abstract class RemoteListenableWorker extends ListenableWorker {
    public static final String ARGUMENT_CLASS_NAME = "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME";
    public static final String ARGUMENT_PACKAGE_NAME = "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME";
    static final String TAG = Logger.tagWithPrefix("RemoteListenableWorker");

    public RemoteListenableWorker(@NonNull Context context, @NonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    private static ListenableFuture<ListenableWorker.Result> getFailedFuture(@NonNull String str) {
        return CallbackToFutureAdapter.getFuture(new C0641x7afeb542(str, 5));
    }

    public static /* synthetic */ Object lambda$getFailedFuture$0(String str, CallbackToFutureAdapter.Completer completer) {
        Logger.get().error(TAG, str);
        completer.setException(new IllegalArgumentException(str));
        return "RemoteListenableWorker Failed Future";
    }

    @NonNull
    public abstract ListenableFuture<ListenableWorker.Result> startRemoteWork();

    @Override // androidx.work.ListenableWorker
    @NonNull
    public final ListenableFuture<ListenableWorker.Result> startWork() {
        return getFailedFuture("startWork() shouldn't never be called on RemoteListenableWorker");
    }
}
