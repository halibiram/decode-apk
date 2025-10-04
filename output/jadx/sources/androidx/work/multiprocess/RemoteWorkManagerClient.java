package androidx.work.multiprocess;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.arch.core.util.Function;
import androidx.work.Data;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.ExistingWorkPolicy;
import androidx.work.ForegroundInfo;
import androidx.work.Logger;
import androidx.work.OneTimeWorkRequest;
import androidx.work.PeriodicWorkRequest;
import androidx.work.RunnableScheduler;
import androidx.work.WorkContinuation;
import androidx.work.WorkInfo;
import androidx.work.WorkQuery;
import androidx.work.WorkRequest;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.utils.futures.SettableFuture;
import androidx.work.multiprocess.IWorkManagerImpl;
import androidx.work.multiprocess.IWorkManagerImplCallback;
import androidx.work.multiprocess.RemoteWorkManagerClient;
import androidx.work.multiprocess.parcelable.ParcelConverters;
import androidx.work.multiprocess.parcelable.ParcelableForegroundRequestInfo;
import androidx.work.multiprocess.parcelable.ParcelableUpdateRequest;
import androidx.work.multiprocess.parcelable.ParcelableWorkContinuationImpl;
import androidx.work.multiprocess.parcelable.ParcelableWorkInfos;
import androidx.work.multiprocess.parcelable.ParcelableWorkQuery;
import androidx.work.multiprocess.parcelable.ParcelableWorkRequest;
import androidx.work.multiprocess.parcelable.ParcelableWorkRequests;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.C0667x7214e6ee;
import defpackage.RunnableC0938xaa9be1e3;
import defpackage.RunnableC1044x8c43c726;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class RemoteWorkManagerClient extends RemoteWorkManager {
    private static final long SESSION_TIMEOUT_MILLIS = 6000000;
    static final String TAG = Logger.tagWithPrefix("RemoteWorkManagerClient");
    public static final Function<byte[], Void> sVoidMapper = new C0667x7214e6ee(2);
    final Context mContext;
    final Executor mExecutor;
    final Object mLock;
    private final RunnableScheduler mRunnableScheduler;
    Session mSession;
    private volatile long mSessionIndex;
    private final long mSessionTimeout;
    private final SessionTracker mSessionTracker;
    final WorkManagerImpl mWorkManager;

    /* renamed from: androidx.work.multiprocess.RemoteWorkManagerClient$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements RemoteDispatcher<IWorkManagerImpl> {
        final /* synthetic */ List val$requests;

        public AnonymousClass1(List list) {
            r2 = list;
        }

        @Override // androidx.work.multiprocess.RemoteDispatcher
        public void execute(@NonNull IWorkManagerImpl iWorkManagerImpl, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
            iWorkManagerImpl.enqueueWorkRequests(ParcelConverters.marshall(new ParcelableWorkRequests((List<WorkRequest>) r2)), iWorkManagerImplCallback);
        }
    }

    /* renamed from: androidx.work.multiprocess.RemoteWorkManagerClient$10 */
    /* loaded from: classes.dex */
    public class AnonymousClass10 implements RemoteDispatcher<IWorkManagerImpl> {
        final /* synthetic */ ForegroundInfo val$foregroundInfo;
        final /* synthetic */ String val$id;

        public AnonymousClass10(String str, ForegroundInfo foregroundInfo) {
            r2 = str;
            r3 = foregroundInfo;
        }

        @Override // androidx.work.multiprocess.RemoteDispatcher
        public void execute(@NonNull IWorkManagerImpl iWorkManagerImpl, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
            iWorkManagerImpl.setForegroundAsync(ParcelConverters.marshall(new ParcelableForegroundRequestInfo(r2, r3)), iWorkManagerImplCallback);
        }
    }

    /* renamed from: androidx.work.multiprocess.RemoteWorkManagerClient$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements RemoteDispatcher<IWorkManagerImpl> {
        final /* synthetic */ WorkContinuation val$continuation;

        public AnonymousClass2(WorkContinuation workContinuation) {
            r2 = workContinuation;
        }

        @Override // androidx.work.multiprocess.RemoteDispatcher
        public void execute(@NonNull IWorkManagerImpl iWorkManagerImpl, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
            iWorkManagerImpl.enqueueContinuation(ParcelConverters.marshall(new ParcelableWorkContinuationImpl((WorkContinuationImpl) r2)), iWorkManagerImplCallback);
        }
    }

    /* renamed from: androidx.work.multiprocess.RemoteWorkManagerClient$3 */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements RemoteDispatcher<IWorkManagerImpl> {
        final /* synthetic */ UUID val$id;

        public AnonymousClass3(UUID uuid) {
            r2 = uuid;
        }

        @Override // androidx.work.multiprocess.RemoteDispatcher
        public void execute(@NonNull IWorkManagerImpl iWorkManagerImpl, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
            iWorkManagerImpl.cancelWorkById(r2.toString(), iWorkManagerImplCallback);
        }
    }

    /* renamed from: androidx.work.multiprocess.RemoteWorkManagerClient$4 */
    /* loaded from: classes.dex */
    public class AnonymousClass4 implements RemoteDispatcher<IWorkManagerImpl> {
        final /* synthetic */ String val$tag;

        public AnonymousClass4(String str) {
            r2 = str;
        }

        @Override // androidx.work.multiprocess.RemoteDispatcher
        public void execute(@NonNull IWorkManagerImpl iWorkManagerImpl, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
            iWorkManagerImpl.cancelAllWorkByTag(r2, iWorkManagerImplCallback);
        }
    }

    /* renamed from: androidx.work.multiprocess.RemoteWorkManagerClient$5 */
    /* loaded from: classes.dex */
    public class AnonymousClass5 implements RemoteDispatcher<IWorkManagerImpl> {
        final /* synthetic */ String val$uniqueWorkName;

        public AnonymousClass5(String str) {
            r2 = str;
        }

        @Override // androidx.work.multiprocess.RemoteDispatcher
        public void execute(@NonNull IWorkManagerImpl iWorkManagerImpl, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
            iWorkManagerImpl.cancelUniqueWork(r2, iWorkManagerImplCallback);
        }
    }

    /* renamed from: androidx.work.multiprocess.RemoteWorkManagerClient$6 */
    /* loaded from: classes.dex */
    public class AnonymousClass6 implements RemoteDispatcher<IWorkManagerImpl> {
        public AnonymousClass6() {
        }

        @Override // androidx.work.multiprocess.RemoteDispatcher
        public void execute(@NonNull IWorkManagerImpl iWorkManagerImpl, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
            iWorkManagerImpl.cancelAllWork(iWorkManagerImplCallback);
        }
    }

    /* renamed from: androidx.work.multiprocess.RemoteWorkManagerClient$7 */
    /* loaded from: classes.dex */
    public class AnonymousClass7 implements RemoteDispatcher<IWorkManagerImpl> {
        final /* synthetic */ WorkQuery val$workQuery;

        public AnonymousClass7(WorkQuery workQuery) {
            r2 = workQuery;
        }

        @Override // androidx.work.multiprocess.RemoteDispatcher
        public void execute(@NonNull IWorkManagerImpl iWorkManagerImpl, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
            iWorkManagerImpl.queryWorkInfo(ParcelConverters.marshall(new ParcelableWorkQuery(r2)), iWorkManagerImplCallback);
        }
    }

    /* renamed from: androidx.work.multiprocess.RemoteWorkManagerClient$8 */
    /* loaded from: classes.dex */
    public class AnonymousClass8 implements Function<byte[], List<WorkInfo>> {
        public AnonymousClass8() {
        }

        @Override // androidx.arch.core.util.Function
        public List<WorkInfo> apply(byte[] bArr) {
            return ((ParcelableWorkInfos) ParcelConverters.unmarshall(bArr, ParcelableWorkInfos.CREATOR)).getWorkInfos();
        }
    }

    /* renamed from: androidx.work.multiprocess.RemoteWorkManagerClient$9 */
    /* loaded from: classes.dex */
    public class AnonymousClass9 implements RemoteDispatcher<IWorkManagerImpl> {
        final /* synthetic */ Data val$data;
        final /* synthetic */ UUID val$id;

        public AnonymousClass9(UUID uuid, Data data) {
            r2 = uuid;
            r3 = data;
        }

        @Override // androidx.work.multiprocess.RemoteDispatcher
        public void execute(@NonNull IWorkManagerImpl iWorkManagerImpl, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
            iWorkManagerImpl.setProgress(ParcelConverters.marshall(new ParcelableUpdateRequest(r2, r3)), iWorkManagerImplCallback);
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public static class Session implements ServiceConnection {
        private static final String TAG = Logger.tagWithPrefix("RemoteWMgr.Connection");
        final RemoteWorkManagerClient mClient;
        final SettableFuture<IWorkManagerImpl> mFuture = SettableFuture.create();

        public Session(@NonNull RemoteWorkManagerClient remoteWorkManagerClient) {
            this.mClient = remoteWorkManagerClient;
        }

        @Override // android.content.ServiceConnection
        public void onBindingDied(@NonNull ComponentName componentName) {
            onBindingDied();
        }

        @Override // android.content.ServiceConnection
        public void onNullBinding(@NonNull ComponentName componentName) {
            Logger.get().error(TAG, "Unable to bind to service");
            this.mFuture.setException(new RuntimeException("Cannot bind to service " + componentName));
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(@NonNull ComponentName componentName, @NonNull IBinder iBinder) {
            Logger.get().debug(TAG, "Service connected");
            this.mFuture.set(IWorkManagerImpl.Stub.asInterface(iBinder));
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(@NonNull ComponentName componentName) {
            Logger.get().debug(TAG, "Service disconnected");
            this.mFuture.setException(new RuntimeException("Service disconnected"));
            this.mClient.cleanUp();
        }

        public void onBindingDied() {
            Logger.get().debug(TAG, "Binding died");
            this.mFuture.setException(new RuntimeException("Binding died"));
            this.mClient.cleanUp();
        }
    }

    /* loaded from: classes.dex */
    public static class SessionTracker implements Runnable {
        private static final String TAG = Logger.tagWithPrefix("SessionHandler");
        private final RemoteWorkManagerClient mClient;

        public SessionTracker(@NonNull RemoteWorkManagerClient remoteWorkManagerClient) {
            this.mClient = remoteWorkManagerClient;
        }

        @Override // java.lang.Runnable
        public void run() {
            long sessionIndex = this.mClient.getSessionIndex();
            synchronized (this.mClient.getSessionLock()) {
                try {
                    long sessionIndex2 = this.mClient.getSessionIndex();
                    Session currentSession = this.mClient.getCurrentSession();
                    if (currentSession != null) {
                        if (sessionIndex == sessionIndex2) {
                            Logger.get().debug(TAG, "Unbinding service");
                            this.mClient.getContext().unbindService(currentSession);
                            currentSession.onBindingDied();
                        } else {
                            Logger.get().debug(TAG, "Ignoring request to unbind.");
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    public RemoteWorkManagerClient(@NonNull Context context, @NonNull WorkManagerImpl workManagerImpl) {
        this(context, workManagerImpl, SESSION_TIMEOUT_MILLIS);
    }

    public static /* synthetic */ void lambda$enqueueUniquePeriodicWork$1(PeriodicWorkRequest periodicWorkRequest, String str, IWorkManagerImpl iWorkManagerImpl, IWorkManagerImplCallback iWorkManagerImplCallback) {
        iWorkManagerImpl.updateUniquePeriodicWorkRequest(str, ParcelConverters.marshall(new ParcelableWorkRequest(periodicWorkRequest)), iWorkManagerImplCallback);
    }

    public /* synthetic */ void lambda$execute$2(ListenableFuture listenableFuture) {
        try {
            listenableFuture.get();
        } catch (InterruptedException | ExecutionException unused) {
            cleanUp();
        }
    }

    public /* synthetic */ void lambda$execute$3() {
        this.mRunnableScheduler.scheduleWithDelay(getSessionTimeout(), getSessionTracker());
    }

    public static /* synthetic */ Void lambda$static$0(byte[] bArr) {
        return null;
    }

    private static Intent newIntent(@NonNull Context context) {
        return new Intent(context, (Class<?>) RemoteWorkManagerService.class);
    }

    private void unableToBind(@NonNull Session session, @NonNull Throwable th) {
        Logger.get().error(TAG, "Unable to bind to service", th);
        session.mFuture.setException(th);
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉 */
    public static /* synthetic */ void m901x1378447b(RemoteWorkManagerClient remoteWorkManagerClient, ListenableFuture listenableFuture) {
        remoteWorkManagerClient.lambda$execute$2(listenableFuture);
    }

    @Override // androidx.work.multiprocess.RemoteWorkManager
    @NonNull
    public RemoteWorkContinuation beginUniqueWork(@NonNull String str, @NonNull ExistingWorkPolicy existingWorkPolicy, @NonNull List<OneTimeWorkRequest> list) {
        return new RemoteWorkContinuationImpl(this, this.mWorkManager.beginUniqueWork(str, existingWorkPolicy, list));
    }

    @Override // androidx.work.multiprocess.RemoteWorkManager
    @NonNull
    public RemoteWorkContinuation beginWith(@NonNull List<OneTimeWorkRequest> list) {
        return new RemoteWorkContinuationImpl(this, this.mWorkManager.beginWith(list));
    }

    @Override // androidx.work.multiprocess.RemoteWorkManager
    @NonNull
    public ListenableFuture<Void> cancelAllWork() {
        return RemoteClientUtilsKt.map(execute(new RemoteDispatcher<IWorkManagerImpl>() { // from class: androidx.work.multiprocess.RemoteWorkManagerClient.6
            public AnonymousClass6() {
            }

            @Override // androidx.work.multiprocess.RemoteDispatcher
            public void execute(@NonNull IWorkManagerImpl iWorkManagerImpl, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
                iWorkManagerImpl.cancelAllWork(iWorkManagerImplCallback);
            }
        }), sVoidMapper, this.mExecutor);
    }

    @Override // androidx.work.multiprocess.RemoteWorkManager
    @NonNull
    public ListenableFuture<Void> cancelAllWorkByTag(@NonNull String str) {
        return RemoteClientUtilsKt.map(execute(new RemoteDispatcher<IWorkManagerImpl>() { // from class: androidx.work.multiprocess.RemoteWorkManagerClient.4
            final /* synthetic */ String val$tag;

            public AnonymousClass4(String str2) {
                r2 = str2;
            }

            @Override // androidx.work.multiprocess.RemoteDispatcher
            public void execute(@NonNull IWorkManagerImpl iWorkManagerImpl, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
                iWorkManagerImpl.cancelAllWorkByTag(r2, iWorkManagerImplCallback);
            }
        }), sVoidMapper, this.mExecutor);
    }

    @Override // androidx.work.multiprocess.RemoteWorkManager
    @NonNull
    public ListenableFuture<Void> cancelUniqueWork(@NonNull String str) {
        return RemoteClientUtilsKt.map(execute(new RemoteDispatcher<IWorkManagerImpl>() { // from class: androidx.work.multiprocess.RemoteWorkManagerClient.5
            final /* synthetic */ String val$uniqueWorkName;

            public AnonymousClass5(String str2) {
                r2 = str2;
            }

            @Override // androidx.work.multiprocess.RemoteDispatcher
            public void execute(@NonNull IWorkManagerImpl iWorkManagerImpl, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
                iWorkManagerImpl.cancelUniqueWork(r2, iWorkManagerImplCallback);
            }
        }), sVoidMapper, this.mExecutor);
    }

    @Override // androidx.work.multiprocess.RemoteWorkManager
    @NonNull
    public ListenableFuture<Void> cancelWorkById(@NonNull UUID uuid) {
        return RemoteClientUtilsKt.map(execute(new RemoteDispatcher<IWorkManagerImpl>() { // from class: androidx.work.multiprocess.RemoteWorkManagerClient.3
            final /* synthetic */ UUID val$id;

            public AnonymousClass3(UUID uuid2) {
                r2 = uuid2;
            }

            @Override // androidx.work.multiprocess.RemoteDispatcher
            public void execute(@NonNull IWorkManagerImpl iWorkManagerImpl, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
                iWorkManagerImpl.cancelWorkById(r2.toString(), iWorkManagerImplCallback);
            }
        }), sVoidMapper, this.mExecutor);
    }

    public void cleanUp() {
        synchronized (this.mLock) {
            Logger.get().debug(TAG, "Cleaning up.");
            this.mSession = null;
        }
    }

    @Override // androidx.work.multiprocess.RemoteWorkManager
    @NonNull
    public ListenableFuture<Void> enqueue(@NonNull WorkRequest workRequest) {
        return enqueue(Collections.singletonList(workRequest));
    }

    @Override // androidx.work.multiprocess.RemoteWorkManager
    @NonNull
    public ListenableFuture<Void> enqueueUniquePeriodicWork(@NonNull final String str, @NonNull ExistingPeriodicWorkPolicy existingPeriodicWorkPolicy, @NonNull final PeriodicWorkRequest periodicWorkRequest) {
        if (existingPeriodicWorkPolicy == ExistingPeriodicWorkPolicy.UPDATE) {
            return RemoteClientUtilsKt.map(execute(new RemoteDispatcher() { // from class: 땅뒻땃뒝땮든땭뒙든뒉뒛뒹딜돷땬딎땐딎돶딟둥땱딤뎽땜땡뒨돷듼딃뒤땮땔돷딸딻딠땲된뎨둔뎰뒈뎠뒝땱땮둘뎸돰둬딨땰돰둬돨땱뒝돠듻땡듸둔땐땤돸디뎨두땍돷땠돤뒻딠딸딄뎠둡듰득딜됴땵뒋딹땱땅도땵뒼딞둣뎻듰딸뒀딽둠땡딃딃딟땅땬딄땐듼뒻땔딟드둑돵도땝땁땔땬땅뎽땀땨뒘딨듼둔둣돼디
                @Override // androidx.work.multiprocess.RemoteDispatcher
                public final void execute(Object obj, IWorkManagerImplCallback iWorkManagerImplCallback) {
                    RemoteWorkManagerClient.lambda$enqueueUniquePeriodicWork$1(PeriodicWorkRequest.this, str, (IWorkManagerImpl) obj, iWorkManagerImplCallback);
                }
            }), sVoidMapper, this.mExecutor);
        }
        return enqueue(this.mWorkManager.createWorkContinuationForUniquePeriodicWork(str, existingPeriodicWorkPolicy, periodicWorkRequest));
    }

    @Override // androidx.work.multiprocess.RemoteWorkManager
    @NonNull
    public ListenableFuture<Void> enqueueUniqueWork(@NonNull String str, @NonNull ExistingWorkPolicy existingWorkPolicy, @NonNull List<OneTimeWorkRequest> list) {
        return beginUniqueWork(str, existingWorkPolicy, list).enqueue();
    }

    @NonNull
    public ListenableFuture<byte[]> execute(@NonNull RemoteDispatcher<IWorkManagerImpl> remoteDispatcher) {
        return execute(getSession(), remoteDispatcher);
    }

    @NonNull
    public Context getContext() {
        return this.mContext;
    }

    @Nullable
    public Session getCurrentSession() {
        return this.mSession;
    }

    @NonNull
    public Executor getExecutor() {
        return this.mExecutor;
    }

    @NonNull
    public ListenableFuture<IWorkManagerImpl> getSession() {
        return getSession(newIntent(this.mContext));
    }

    public long getSessionIndex() {
        return this.mSessionIndex;
    }

    @NonNull
    public Object getSessionLock() {
        return this.mLock;
    }

    public long getSessionTimeout() {
        return this.mSessionTimeout;
    }

    @NonNull
    public SessionTracker getSessionTracker() {
        return this.mSessionTracker;
    }

    @Override // androidx.work.multiprocess.RemoteWorkManager
    @NonNull
    public ListenableFuture<List<WorkInfo>> getWorkInfos(@NonNull WorkQuery workQuery) {
        return RemoteClientUtilsKt.map(execute(new RemoteDispatcher<IWorkManagerImpl>() { // from class: androidx.work.multiprocess.RemoteWorkManagerClient.7
            final /* synthetic */ WorkQuery val$workQuery;

            public AnonymousClass7(WorkQuery workQuery2) {
                r2 = workQuery2;
            }

            @Override // androidx.work.multiprocess.RemoteDispatcher
            public void execute(@NonNull IWorkManagerImpl iWorkManagerImpl, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
                iWorkManagerImpl.queryWorkInfo(ParcelConverters.marshall(new ParcelableWorkQuery(r2)), iWorkManagerImplCallback);
            }
        }), new Function<byte[], List<WorkInfo>>() { // from class: androidx.work.multiprocess.RemoteWorkManagerClient.8
            public AnonymousClass8() {
            }

            @Override // androidx.arch.core.util.Function
            public List<WorkInfo> apply(byte[] bArr) {
                return ((ParcelableWorkInfos) ParcelConverters.unmarshall(bArr, ParcelableWorkInfos.CREATOR)).getWorkInfos();
            }
        }, this.mExecutor);
    }

    @Override // androidx.work.multiprocess.RemoteWorkManager
    @NonNull
    public ListenableFuture<Void> setForegroundAsync(@NonNull String str, @NonNull ForegroundInfo foregroundInfo) {
        return RemoteClientUtilsKt.map(execute(new RemoteDispatcher<IWorkManagerImpl>() { // from class: androidx.work.multiprocess.RemoteWorkManagerClient.10
            final /* synthetic */ ForegroundInfo val$foregroundInfo;
            final /* synthetic */ String val$id;

            public AnonymousClass10(String str2, ForegroundInfo foregroundInfo2) {
                r2 = str2;
                r3 = foregroundInfo2;
            }

            @Override // androidx.work.multiprocess.RemoteDispatcher
            public void execute(@NonNull IWorkManagerImpl iWorkManagerImpl, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
                iWorkManagerImpl.setForegroundAsync(ParcelConverters.marshall(new ParcelableForegroundRequestInfo(r2, r3)), iWorkManagerImplCallback);
            }
        }), sVoidMapper, this.mExecutor);
    }

    @Override // androidx.work.multiprocess.RemoteWorkManager
    @NonNull
    public ListenableFuture<Void> setProgress(@NonNull UUID uuid, @NonNull Data data) {
        return RemoteClientUtilsKt.map(execute(new RemoteDispatcher<IWorkManagerImpl>() { // from class: androidx.work.multiprocess.RemoteWorkManagerClient.9
            final /* synthetic */ Data val$data;
            final /* synthetic */ UUID val$id;

            public AnonymousClass9(UUID uuid2, Data data2) {
                r2 = uuid2;
                r3 = data2;
            }

            @Override // androidx.work.multiprocess.RemoteDispatcher
            public void execute(@NonNull IWorkManagerImpl iWorkManagerImpl, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
                iWorkManagerImpl.setProgress(ParcelConverters.marshall(new ParcelableUpdateRequest(r2, r3)), iWorkManagerImplCallback);
            }
        }), sVoidMapper, this.mExecutor);
    }

    public RemoteWorkManagerClient(@NonNull Context context, @NonNull WorkManagerImpl workManagerImpl, long j) {
        this.mContext = context.getApplicationContext();
        this.mWorkManager = workManagerImpl;
        this.mExecutor = workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        this.mLock = new Object();
        this.mSession = null;
        this.mSessionTracker = new SessionTracker(this);
        this.mSessionTimeout = j;
        this.mRunnableScheduler = workManagerImpl.getConfiguration().getRunnableScheduler();
    }

    @Override // androidx.work.multiprocess.RemoteWorkManager
    @NonNull
    public ListenableFuture<Void> enqueue(@NonNull List<WorkRequest> list) {
        return RemoteClientUtilsKt.map(execute(new RemoteDispatcher<IWorkManagerImpl>() { // from class: androidx.work.multiprocess.RemoteWorkManagerClient.1
            final /* synthetic */ List val$requests;

            public AnonymousClass1(List list2) {
                r2 = list2;
            }

            @Override // androidx.work.multiprocess.RemoteDispatcher
            public void execute(@NonNull IWorkManagerImpl iWorkManagerImpl, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
                iWorkManagerImpl.enqueueWorkRequests(ParcelConverters.marshall(new ParcelableWorkRequests((List<WorkRequest>) r2)), iWorkManagerImplCallback);
            }
        }), sVoidMapper, this.mExecutor);
    }

    @NonNull
    @VisibleForTesting
    public ListenableFuture<byte[]> execute(@NonNull ListenableFuture<IWorkManagerImpl> listenableFuture, @NonNull RemoteDispatcher<IWorkManagerImpl> remoteDispatcher) {
        listenableFuture.addListener(new RunnableC0938xaa9be1e3(this, listenableFuture, 10), this.mExecutor);
        ListenableFuture<byte[]> execute = RemoteExecuteKt.execute(this.mExecutor, listenableFuture, remoteDispatcher);
        execute.addListener(new RunnableC1044x8c43c726(this, 3), this.mExecutor);
        return execute;
    }

    @NonNull
    @VisibleForTesting
    public ListenableFuture<IWorkManagerImpl> getSession(@NonNull Intent intent) {
        SettableFuture<IWorkManagerImpl> settableFuture;
        synchronized (this.mLock) {
            try {
                this.mSessionIndex++;
                if (this.mSession == null) {
                    Logger.get().debug(TAG, "Creating a new session");
                    Session session = new Session(this);
                    this.mSession = session;
                    try {
                        if (!this.mContext.bindService(intent, session, 1)) {
                            unableToBind(this.mSession, new RuntimeException("Unable to bind to service"));
                        }
                    } catch (Throwable th) {
                        unableToBind(this.mSession, th);
                    }
                }
                this.mRunnableScheduler.cancel(this.mSessionTracker);
                settableFuture = this.mSession.mFuture;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return settableFuture;
    }

    @Override // androidx.work.multiprocess.RemoteWorkManager
    @NonNull
    public ListenableFuture<Void> enqueue(@NonNull WorkContinuation workContinuation) {
        return RemoteClientUtilsKt.map(execute(new RemoteDispatcher<IWorkManagerImpl>() { // from class: androidx.work.multiprocess.RemoteWorkManagerClient.2
            final /* synthetic */ WorkContinuation val$continuation;

            public AnonymousClass2(WorkContinuation workContinuation2) {
                r2 = workContinuation2;
            }

            @Override // androidx.work.multiprocess.RemoteDispatcher
            public void execute(@NonNull IWorkManagerImpl iWorkManagerImpl, @NonNull IWorkManagerImplCallback iWorkManagerImplCallback) {
                iWorkManagerImpl.enqueueContinuation(ParcelConverters.marshall(new ParcelableWorkContinuationImpl((WorkContinuationImpl) r2)), iWorkManagerImplCallback);
            }
        }), sVoidMapper, this.mExecutor);
    }
}
