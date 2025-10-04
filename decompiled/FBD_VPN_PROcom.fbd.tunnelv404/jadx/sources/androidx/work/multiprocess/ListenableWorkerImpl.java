package androidx.work.multiprocess;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.work.Configuration;
import androidx.work.ForegroundUpdater;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.ProgressUpdater;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkerStoppedException;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import androidx.work.multiprocess.IListenableWorkerImpl;
import androidx.work.multiprocess.ListenableCallback;
import androidx.work.multiprocess.parcelable.ParcelConverters;
import androidx.work.multiprocess.parcelable.ParcelableInterruptRequest;
import androidx.work.multiprocess.parcelable.ParcelableRemoteWorkRequest;
import androidx.work.multiprocess.parcelable.ParcelableResult;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.RunnableC0391x31381f22;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class ListenableWorkerImpl extends IListenableWorkerImpl.Stub {
    static final String TAG = Logger.tagWithPrefix("WM-RemoteWorker ListenableWorkerImpl");
    static byte[] sEMPTY = new byte[0];
    static final Object sLock = new Object();
    final Configuration mConfiguration;
    final Context mContext;
    final ForegroundUpdater mForegroundUpdater;
    final ProgressUpdater mProgressUpdater;
    final Map<String, Job> mRemoteWorkerWrapperMap;
    final TaskExecutor mTaskExecutor;

    /* renamed from: androidx.work.multiprocess.ListenableWorkerImpl$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Runnable {
        final /* synthetic */ IWorkManagerImplCallback val$callback;
        final /* synthetic */ ListenableFuture val$futureResult;
        final /* synthetic */ String val$id;

        public AnonymousClass1(ListenableFuture listenableFuture, IWorkManagerImplCallback iWorkManagerImplCallback, String str) {
            r2 = listenableFuture;
            r3 = iWorkManagerImplCallback;
            r4 = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:34:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            try {
                try {
                    ListenableCallback.ListenableCallbackRunnable.reportSuccess(r3, ParcelConverters.marshall(new ParcelableResult((ListenableWorker.Result) r2.get())));
                    synchronized (ListenableWorkerImpl.sLock) {
                        ListenableWorkerImpl.this.mRemoteWorkerWrapperMap.remove(r4);
                    }
                } catch (InterruptedException e) {
                    e = e;
                    ListenableCallback.ListenableCallbackRunnable.reportFailure(r3, e);
                    synchronized (ListenableWorkerImpl.sLock) {
                        ListenableWorkerImpl.this.mRemoteWorkerWrapperMap.remove(r4);
                    }
                } catch (CancellationException e2) {
                    Logger.get().debug(ListenableWorkerImpl.TAG, "Worker (" + r4 + ") was cancelled");
                    ListenableCallback.ListenableCallbackRunnable.reportFailure(r3, e2);
                    synchronized (ListenableWorkerImpl.sLock) {
                        ListenableWorkerImpl.this.mRemoteWorkerWrapperMap.remove(r4);
                    }
                } catch (ExecutionException e3) {
                    e = e3;
                    ListenableCallback.ListenableCallbackRunnable.reportFailure(r3, e);
                    synchronized (ListenableWorkerImpl.sLock) {
                    }
                }
            } catch (Throwable th) {
                synchronized (ListenableWorkerImpl.sLock) {
                    ListenableWorkerImpl.this.mRemoteWorkerWrapperMap.remove(r4);
                    throw th;
                }
            }
        }
    }

    public ListenableWorkerImpl(@NonNull Context context) {
        this.mContext = context.getApplicationContext();
        RemoteWorkManagerInfo remoteWorkManagerInfo = RemoteWorkManagerInfo.getInstance(context);
        this.mConfiguration = remoteWorkManagerInfo.getConfiguration();
        this.mTaskExecutor = remoteWorkManagerInfo.getTaskExecutor();
        this.mProgressUpdater = remoteWorkManagerInfo.getProgressUpdater();
        this.mForegroundUpdater = remoteWorkManagerInfo.getForegroundUpdater();
        this.mRemoteWorkerWrapperMap = new HashMap();
    }

    @NonNull
    private ListenableFuture<ListenableWorker.Result> executeWorkRequest(@NonNull String str, @NonNull String str2, @NonNull WorkerParameters workerParameters) {
        CompletableJob Job = JobKt.Job((Job) null);
        synchronized (sLock) {
            this.mRemoteWorkerWrapperMap.put(str, Job);
        }
        return RemoteWorkerWrapperKt.executeRemoteWorker(this.mContext, this.mConfiguration, str2, workerParameters, Job, this.mTaskExecutor);
    }

    public static /* synthetic */ void lambda$interrupt$0(Job job, int i, IWorkManagerImplCallback iWorkManagerImplCallback) {
        job.cancel((CancellationException) new WorkerStoppedException(i));
        ListenableCallback.ListenableCallbackRunnable.reportSuccess(iWorkManagerImplCallback, sEMPTY);
    }

    @Override // androidx.work.multiprocess.IListenableWorkerImpl
    public void interrupt(@NonNull byte[] bArr, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
        Job remove;
        try {
            ParcelableInterruptRequest parcelableInterruptRequest = (ParcelableInterruptRequest) ParcelConverters.unmarshall(bArr, ParcelableInterruptRequest.CREATOR);
            String id = parcelableInterruptRequest.getId();
            int stopReason = parcelableInterruptRequest.getStopReason();
            Logger.get().debug(TAG, "Interrupting work with id (" + id + ")");
            synchronized (sLock) {
                remove = this.mRemoteWorkerWrapperMap.remove(id);
            }
            if (remove != null) {
                this.mTaskExecutor.getSerialTaskExecutor().execute(new RunnableC0391x31381f22(remove, stopReason, iWorkManagerImplCallback, 5));
            } else {
                ListenableCallback.ListenableCallbackRunnable.reportSuccess(iWorkManagerImplCallback, sEMPTY);
            }
        } catch (Throwable th) {
            ListenableCallback.ListenableCallbackRunnable.reportFailure(iWorkManagerImplCallback, th);
        }
    }

    @Override // androidx.work.multiprocess.IListenableWorkerImpl
    public void startWork(@NonNull byte[] bArr, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
        try {
            ParcelableRemoteWorkRequest parcelableRemoteWorkRequest = (ParcelableRemoteWorkRequest) ParcelConverters.unmarshall(bArr, ParcelableRemoteWorkRequest.CREATOR);
            WorkerParameters workerParameters = parcelableRemoteWorkRequest.getParcelableWorkerParameters().toWorkerParameters(this.mConfiguration, this.mTaskExecutor, this.mProgressUpdater, this.mForegroundUpdater);
            String uuid = workerParameters.getId().toString();
            String workerClassName = parcelableRemoteWorkRequest.getWorkerClassName();
            Logger.get().debug(TAG, "Executing work request (" + uuid + ", " + workerClassName + ")");
            ListenableFuture<ListenableWorker.Result> executeWorkRequest = executeWorkRequest(uuid, workerClassName, workerParameters);
            executeWorkRequest.addListener(new Runnable() { // from class: androidx.work.multiprocess.ListenableWorkerImpl.1
                final /* synthetic */ IWorkManagerImplCallback val$callback;
                final /* synthetic */ ListenableFuture val$futureResult;
                final /* synthetic */ String val$id;

                public AnonymousClass1(ListenableFuture executeWorkRequest2, IWorkManagerImplCallback iWorkManagerImplCallback2, String uuid2) {
                    r2 = executeWorkRequest2;
                    r3 = iWorkManagerImplCallback2;
                    r4 = uuid2;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:34:0x006b A[EXC_TOP_SPLITTER, SYNTHETIC] */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public void run() {
                    try {
                        try {
                            ListenableCallback.ListenableCallbackRunnable.reportSuccess(r3, ParcelConverters.marshall(new ParcelableResult((ListenableWorker.Result) r2.get())));
                            synchronized (ListenableWorkerImpl.sLock) {
                                ListenableWorkerImpl.this.mRemoteWorkerWrapperMap.remove(r4);
                            }
                        } catch (InterruptedException e) {
                            e = e;
                            ListenableCallback.ListenableCallbackRunnable.reportFailure(r3, e);
                            synchronized (ListenableWorkerImpl.sLock) {
                                ListenableWorkerImpl.this.mRemoteWorkerWrapperMap.remove(r4);
                            }
                        } catch (CancellationException e2) {
                            Logger.get().debug(ListenableWorkerImpl.TAG, "Worker (" + r4 + ") was cancelled");
                            ListenableCallback.ListenableCallbackRunnable.reportFailure(r3, e2);
                            synchronized (ListenableWorkerImpl.sLock) {
                                ListenableWorkerImpl.this.mRemoteWorkerWrapperMap.remove(r4);
                            }
                        } catch (ExecutionException e3) {
                            e = e3;
                            ListenableCallback.ListenableCallbackRunnable.reportFailure(r3, e);
                            synchronized (ListenableWorkerImpl.sLock) {
                            }
                        }
                    } catch (Throwable th) {
                        synchronized (ListenableWorkerImpl.sLock) {
                            ListenableWorkerImpl.this.mRemoteWorkerWrapperMap.remove(r4);
                            throw th;
                        }
                    }
                }
            }, this.mTaskExecutor.getSerialTaskExecutor());
        } catch (Throwable th) {
            ListenableCallback.ListenableCallbackRunnable.reportFailure(iWorkManagerImplCallback2, th);
        }
    }
}
