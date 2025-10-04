package androidx.work;

import android.content.Context;
import android.net.Network;
import android.net.Uri;
import androidx.annotation.IntRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.C0370x5ac5058d;
import java.util.List;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class ListenableWorker {

    @NonNull
    private Context mAppContext;
    private final AtomicInteger mStopReason = new AtomicInteger(-256);
    private boolean mUsed;

    @NonNull
    private WorkerParameters mWorkerParams;

    /* loaded from: classes.dex */
    public static abstract class Result {

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes.dex */
        public static final class Failure extends Result {
            private final Data mOutputData;

            public Failure() {
                this(Data.EMPTY);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && Failure.class == obj.getClass()) {
                    return this.mOutputData.equals(((Failure) obj).mOutputData);
                }
                return false;
            }

            @Override // androidx.work.ListenableWorker.Result
            @NonNull
            public Data getOutputData() {
                return this.mOutputData;
            }

            public int hashCode() {
                return this.mOutputData.hashCode() + 846803280;
            }

            @NonNull
            public String toString() {
                return "Failure {mOutputData=" + this.mOutputData + '}';
            }

            public Failure(@NonNull Data data) {
                this.mOutputData = data;
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes.dex */
        public static final class Retry extends Result {
            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && Retry.class == obj.getClass()) {
                    return true;
                }
                return false;
            }

            @Override // androidx.work.ListenableWorker.Result
            @NonNull
            public Data getOutputData() {
                return Data.EMPTY;
            }

            public int hashCode() {
                return 25945934;
            }

            @NonNull
            public String toString() {
                return "Retry";
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        /* loaded from: classes.dex */
        public static final class Success extends Result {
            private final Data mOutputData;

            public Success() {
                this(Data.EMPTY);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (obj != null && Success.class == obj.getClass()) {
                    return this.mOutputData.equals(((Success) obj).mOutputData);
                }
                return false;
            }

            @Override // androidx.work.ListenableWorker.Result
            @NonNull
            public Data getOutputData() {
                return this.mOutputData;
            }

            public int hashCode() {
                return this.mOutputData.hashCode() - 1876823561;
            }

            @NonNull
            public String toString() {
                return "Success {mOutputData=" + this.mOutputData + '}';
            }

            public Success(@NonNull Data data) {
                this.mOutputData = data;
            }
        }

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public Result() {
        }

        @NonNull
        public static Result failure() {
            return new Failure();
        }

        @NonNull
        public static Result retry() {
            return new Retry();
        }

        @NonNull
        public static Result success() {
            return new Success();
        }

        @NonNull
        public abstract Data getOutputData();

        @NonNull
        public static Result failure(@NonNull Data data) {
            return new Failure(data);
        }

        @NonNull
        public static Result success(@NonNull Data data) {
            return new Success(data);
        }
    }

    public ListenableWorker(@NonNull Context context, @NonNull WorkerParameters workerParameters) {
        if (context != null) {
            if (workerParameters != null) {
                this.mAppContext = context;
                this.mWorkerParams = workerParameters;
                return;
            }
            throw new IllegalArgumentException("WorkerParameters is null");
        }
        throw new IllegalArgumentException("Application Context is null");
    }

    public static /* synthetic */ Object lambda$getForegroundInfoAsync$0(CallbackToFutureAdapter.Completer completer) {
        completer.setException(new IllegalStateException("Expedited WorkRequests require a ListenableWorker to provide an implementation for`getForegroundInfoAsync()`"));
        return "default failing getForegroundInfoAsync";
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static /* synthetic */ Object m857xfbe0c504(CallbackToFutureAdapter.Completer completer) {
        return lambda$getForegroundInfoAsync$0(completer);
    }

    @NonNull
    public final Context getApplicationContext() {
        return this.mAppContext;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Executor getBackgroundExecutor() {
        return this.mWorkerParams.getBackgroundExecutor();
    }

    @NonNull
    public ListenableFuture<ForegroundInfo> getForegroundInfoAsync() {
        return CallbackToFutureAdapter.getFuture(new C0370x5ac5058d(16));
    }

    @NonNull
    public final UUID getId() {
        return this.mWorkerParams.getId();
    }

    @NonNull
    public final Data getInputData() {
        return this.mWorkerParams.getInputData();
    }

    @Nullable
    @RequiresApi(28)
    public final Network getNetwork() {
        return this.mWorkerParams.getNetwork();
    }

    @IntRange(from = 0)
    public final int getRunAttemptCount() {
        return this.mWorkerParams.getRunAttemptCount();
    }

    @RequiresApi(31)
    public final int getStopReason() {
        return this.mStopReason.get();
    }

    @NonNull
    public final Set<String> getTags() {
        return this.mWorkerParams.getTags();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public TaskExecutor getTaskExecutor() {
        return this.mWorkerParams.getTaskExecutor();
    }

    @NonNull
    @RequiresApi(24)
    public final List<String> getTriggeredContentAuthorities() {
        return this.mWorkerParams.getTriggeredContentAuthorities();
    }

    @NonNull
    @RequiresApi(24)
    public final List<Uri> getTriggeredContentUris() {
        return this.mWorkerParams.getTriggeredContentUris();
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public WorkerFactory getWorkerFactory() {
        return this.mWorkerParams.getWorkerFactory();
    }

    public final boolean isStopped() {
        if (this.mStopReason.get() != -256) {
            return true;
        }
        return false;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final boolean isUsed() {
        return this.mUsed;
    }

    public void onStopped() {
    }

    @NonNull
    public final ListenableFuture<Void> setForegroundAsync(@NonNull ForegroundInfo foregroundInfo) {
        return this.mWorkerParams.getForegroundUpdater().setForegroundAsync(getApplicationContext(), getId(), foregroundInfo);
    }

    @NonNull
    public ListenableFuture<Void> setProgressAsync(@NonNull Data data) {
        return this.mWorkerParams.getProgressUpdater().updateProgress(getApplicationContext(), getId(), data);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void setUsed() {
        this.mUsed = true;
    }

    @NonNull
    @MainThread
    public abstract ListenableFuture<Result> startWork();

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void stop(int i) {
        if (this.mStopReason.compareAndSet(-256, i)) {
            onStopped();
        }
    }
}
