package androidx.work.impl;

import android.content.Context;
import android.os.PowerManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import androidx.work.Configuration;
import androidx.work.ForegroundInfo;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.Processor;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.foreground.SystemForegroundDispatcher;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WakeLocks;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.CallableC0951x87d6b5e6;
import defpackage.RunnableC0384x149e5abd;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class Processor implements ForegroundProcessor {
    private static final String FOREGROUND_WAKELOCK_TAG = "ProcessorForegroundLck";
    private static final String TAG = Logger.tagWithPrefix("Processor");
    private Context mAppContext;
    private Configuration mConfiguration;
    private WorkDatabase mWorkDatabase;
    private TaskExecutor mWorkTaskExecutor;
    private Map<String, WorkerWrapper> mEnqueuedWorkMap = new HashMap();
    private Map<String, WorkerWrapper> mForegroundWorkMap = new HashMap();
    private Set<String> mCancelledIds = new HashSet();
    private final List<ExecutionListener> mOuterListeners = new ArrayList();

    @Nullable
    private PowerManager.WakeLock mForegroundLock = null;
    private final Object mLock = new Object();
    private Map<String, Set<StartStopToken>> mWorkRuns = new HashMap();

    public Processor(@NonNull Context context, @NonNull Configuration configuration, @NonNull TaskExecutor taskExecutor, @NonNull WorkDatabase workDatabase) {
        this.mAppContext = context;
        this.mConfiguration = configuration;
        this.mWorkTaskExecutor = taskExecutor;
        this.mWorkDatabase = workDatabase;
    }

    @Nullable
    private WorkerWrapper cleanUpWorkerUnsafe(@NonNull String str) {
        boolean z;
        WorkerWrapper remove = this.mForegroundWorkMap.remove(str);
        if (remove != null) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            remove = this.mEnqueuedWorkMap.remove(str);
        }
        this.mWorkRuns.remove(str);
        if (z) {
            stopForegroundService();
        }
        return remove;
    }

    @Nullable
    private WorkerWrapper getWorkerWrapperUnsafe(@NonNull String str) {
        WorkerWrapper workerWrapper = this.mForegroundWorkMap.get(str);
        if (workerWrapper == null) {
            return this.mEnqueuedWorkMap.get(str);
        }
        return workerWrapper;
    }

    private static boolean interrupt(@NonNull String str, @Nullable WorkerWrapper workerWrapper, int i) {
        if (workerWrapper != null) {
            workerWrapper.interrupt(i);
            Logger.get().debug(TAG, "WorkerWrapper interrupted for " + str);
            return true;
        }
        Logger.get().debug(TAG, "WorkerWrapper could not be found for " + str);
        return false;
    }

    public /* synthetic */ void lambda$runOnExecuted$2(WorkGenerationalId workGenerationalId, boolean z) {
        synchronized (this.mLock) {
            try {
                Iterator<ExecutionListener> it = this.mOuterListeners.iterator();
                while (it.hasNext()) {
                    it.next().onExecuted(workGenerationalId, z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public /* synthetic */ WorkSpec lambda$startWork$0(ArrayList arrayList, String str) {
        arrayList.addAll(this.mWorkDatabase.workTagDao().getTagsForWorkSpecId(str));
        return this.mWorkDatabase.workSpecDao().getWorkSpec(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$startWork$1(ListenableFuture listenableFuture, WorkerWrapper workerWrapper) {
        boolean z;
        try {
            z = ((Boolean) listenableFuture.get()).booleanValue();
        } catch (InterruptedException | ExecutionException unused) {
            z = true;
        }
        onExecuted(workerWrapper, z);
    }

    private void onExecuted(@NonNull WorkerWrapper workerWrapper, boolean z) {
        synchronized (this.mLock) {
            try {
                WorkGenerationalId workGenerationalId = workerWrapper.getWorkGenerationalId();
                String workSpecId = workGenerationalId.getWorkSpecId();
                if (getWorkerWrapperUnsafe(workSpecId) == workerWrapper) {
                    cleanUpWorkerUnsafe(workSpecId);
                }
                Logger.get().debug(TAG, getClass().getSimpleName() + " " + workSpecId + " executed; reschedule = " + z);
                Iterator<ExecutionListener> it = this.mOuterListeners.iterator();
                while (it.hasNext()) {
                    it.next().onExecuted(workGenerationalId, z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void runOnExecuted(@NonNull final WorkGenerationalId workGenerationalId, final boolean z) {
        this.mWorkTaskExecutor.getMainThreadExecutor().execute(new Runnable() { // from class: 딻뎨듰뎡뒵뒬딐됐도듻땜돶디땁땋둡땠돸뒾들딹뒀뒋뒻들따뒻땠땯돨듌돛땻둘뎻돳땲땀뎹듸땱땟뎸뒉딠들땳돨땸딜뒵듌든딎뒼뒘땦땭땻돨뒻딞땐땭땜둑도땪돤든땹뒙돛뎠돤돼돳뒼땬딤땸뒛딐땅땯돤딸땱도듬돳땁딅듨돝땀듟딠땹땅듔돠뎨될두땹땵뒤둥뒈돵딸딟땮땠들듐땩뒤땻뎹됐땋딞땟뎽뎻듐뎬딠
            @Override // java.lang.Runnable
            public final void run() {
                Processor.this.lambda$runOnExecuted$2(workGenerationalId, z);
            }
        });
    }

    private void stopForegroundService() {
        synchronized (this.mLock) {
            try {
                if (this.mForegroundWorkMap.isEmpty()) {
                    try {
                        this.mAppContext.startService(SystemForegroundDispatcher.createStopForegroundIntent(this.mAppContext));
                    } catch (Throwable th) {
                        Logger.get().error(TAG, "Unable to stop foreground service", th);
                    }
                    PowerManager.WakeLock wakeLock = this.mForegroundLock;
                    if (wakeLock != null) {
                        wakeLock.release();
                        this.mForegroundLock = null;
                    }
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void addExecutionListener(@NonNull ExecutionListener executionListener) {
        synchronized (this.mLock) {
            this.mOuterListeners.add(executionListener);
        }
    }

    @Nullable
    public WorkSpec getRunningWorkSpec(@NonNull String str) {
        synchronized (this.mLock) {
            try {
                WorkerWrapper workerWrapperUnsafe = getWorkerWrapperUnsafe(str);
                if (workerWrapperUnsafe != null) {
                    return workerWrapperUnsafe.getWorkSpec();
                }
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean hasWork() {
        boolean z;
        synchronized (this.mLock) {
            try {
                if (this.mEnqueuedWorkMap.isEmpty() && this.mForegroundWorkMap.isEmpty()) {
                    z = false;
                }
                z = true;
            } finally {
            }
        }
        return z;
    }

    public boolean isCancelled(@NonNull String str) {
        boolean contains;
        synchronized (this.mLock) {
            contains = this.mCancelledIds.contains(str);
        }
        return contains;
    }

    public boolean isEnqueued(@NonNull String str) {
        boolean z;
        synchronized (this.mLock) {
            if (getWorkerWrapperUnsafe(str) != null) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public void removeExecutionListener(@NonNull ExecutionListener executionListener) {
        synchronized (this.mLock) {
            this.mOuterListeners.remove(executionListener);
        }
    }

    @Override // androidx.work.impl.foreground.ForegroundProcessor
    public void startForeground(@NonNull String str, @NonNull ForegroundInfo foregroundInfo) {
        synchronized (this.mLock) {
            try {
                Logger.get().info(TAG, "Moving WorkSpec (" + str + ") to the foreground");
                WorkerWrapper remove = this.mEnqueuedWorkMap.remove(str);
                if (remove != null) {
                    if (this.mForegroundLock == null) {
                        PowerManager.WakeLock newWakeLock = WakeLocks.newWakeLock(this.mAppContext, FOREGROUND_WAKELOCK_TAG);
                        this.mForegroundLock = newWakeLock;
                        newWakeLock.acquire();
                    }
                    this.mForegroundWorkMap.put(str, remove);
                    ContextCompat.startForegroundService(this.mAppContext, SystemForegroundDispatcher.createStartForegroundIntent(this.mAppContext, remove.getWorkGenerationalId(), foregroundInfo));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public boolean startWork(@NonNull StartStopToken startStopToken) {
        return startWork(startStopToken, null);
    }

    public boolean stopAndCancelWork(@NonNull String str, int i) {
        WorkerWrapper cleanUpWorkerUnsafe;
        synchronized (this.mLock) {
            Logger.get().debug(TAG, "Processor cancelling " + str);
            this.mCancelledIds.add(str);
            cleanUpWorkerUnsafe = cleanUpWorkerUnsafe(str);
        }
        return interrupt(str, cleanUpWorkerUnsafe, i);
    }

    public boolean stopForegroundWork(@NonNull StartStopToken startStopToken, int i) {
        WorkerWrapper cleanUpWorkerUnsafe;
        String workSpecId = startStopToken.getId().getWorkSpecId();
        synchronized (this.mLock) {
            cleanUpWorkerUnsafe = cleanUpWorkerUnsafe(workSpecId);
        }
        return interrupt(workSpecId, cleanUpWorkerUnsafe, i);
    }

    public boolean stopWork(@NonNull StartStopToken startStopToken, int i) {
        String workSpecId = startStopToken.getId().getWorkSpecId();
        synchronized (this.mLock) {
            try {
                if (this.mForegroundWorkMap.get(workSpecId) != null) {
                    Logger.get().debug(TAG, "Ignored stopWork. WorkerWrapper " + workSpecId + " is in foreground");
                    return false;
                }
                Set<StartStopToken> set = this.mWorkRuns.get(workSpecId);
                if (set != null && set.contains(startStopToken)) {
                    return interrupt(workSpecId, cleanUpWorkerUnsafe(workSpecId), i);
                }
                return false;
            } finally {
            }
        }
    }

    public boolean startWork(@NonNull StartStopToken startStopToken, @Nullable WorkerParameters.RuntimeExtras runtimeExtras) {
        WorkGenerationalId id = startStopToken.getId();
        String workSpecId = id.getWorkSpecId();
        ArrayList arrayList = new ArrayList();
        WorkSpec workSpec = (WorkSpec) this.mWorkDatabase.runInTransaction(new CallableC0951x87d6b5e6(1, workSpecId, this, arrayList));
        if (workSpec == null) {
            Logger.get().warning(TAG, "Didn't find WorkSpec for id " + id);
            runOnExecuted(id, false);
            return false;
        }
        synchronized (this.mLock) {
            try {
                if (isEnqueued(workSpecId)) {
                    Set<StartStopToken> set = this.mWorkRuns.get(workSpecId);
                    if (set.iterator().next().getId().getGeneration() == id.getGeneration()) {
                        set.add(startStopToken);
                        Logger.get().debug(TAG, "Work " + id + " is already enqueued for processing");
                    } else {
                        runOnExecuted(id, false);
                    }
                    return false;
                }
                if (workSpec.getGeneration() != id.getGeneration()) {
                    runOnExecuted(id, false);
                    return false;
                }
                WorkerWrapper build = new WorkerWrapper.Builder(this.mAppContext, this.mConfiguration, this.mWorkTaskExecutor, this, this.mWorkDatabase, workSpec, arrayList).withRuntimeExtras(runtimeExtras).build();
                ListenableFuture<Boolean> launch = build.launch();
                launch.addListener(new RunnableC0384x149e5abd(this, 11, launch, build), this.mWorkTaskExecutor.getMainThreadExecutor());
                this.mEnqueuedWorkMap.put(workSpecId, build);
                HashSet hashSet = new HashSet();
                hashSet.add(startStopToken);
                this.mWorkRuns.put(workSpecId, hashSet);
                Logger.get().debug(TAG, getClass().getSimpleName() + ": processing " + id);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
