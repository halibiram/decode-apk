package androidx.camera.core.impl.utils.executor;

import androidx.annotation.GuardedBy;
import androidx.core.util.Preconditions;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class SequentialExecutor implements Executor {
    private static final String TAG = "SequentialExecutor";
    private final Executor mExecutor;

    @GuardedBy("mQueue")
    final Deque<Runnable> mQueue = new ArrayDeque();
    private final QueueWorker mWorker = new QueueWorker();

    @GuardedBy("mQueue")
    WorkerRunningState mWorkerRunningState = WorkerRunningState.IDLE;

    @GuardedBy("mQueue")
    long mWorkerRunCount = 0;

    /* loaded from: classes.dex */
    public final class QueueWorker implements Runnable {
        public QueueWorker() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:10:0x004a, code lost:
        
            r1 = r1 | java.lang.Thread.interrupted();
         */
        /* JADX WARN: Code restructure failed: missing block: B:12:0x004b, code lost:
        
            r3.run();
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0051, code lost:
        
            r2 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
        
            androidx.camera.core.Logger.e(androidx.camera.core.impl.utils.executor.SequentialExecutor.TAG, "Exception while executing runnable " + r3, r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0044, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:?, code lost:
        
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private void workOnQueue() {
            boolean z = false;
            boolean z2 = false;
            while (true) {
                try {
                    synchronized (SequentialExecutor.this.mQueue) {
                        if (!z) {
                            SequentialExecutor sequentialExecutor = SequentialExecutor.this;
                            WorkerRunningState workerRunningState = sequentialExecutor.mWorkerRunningState;
                            WorkerRunningState workerRunningState2 = WorkerRunningState.RUNNING;
                            if (workerRunningState != workerRunningState2) {
                                sequentialExecutor.mWorkerRunCount++;
                                sequentialExecutor.mWorkerRunningState = workerRunningState2;
                                z = true;
                            }
                        }
                        Runnable poll = SequentialExecutor.this.mQueue.poll();
                        if (poll == null) {
                            SequentialExecutor.this.mWorkerRunningState = WorkerRunningState.IDLE;
                        }
                    }
                    if (z2) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                } finally {
                    if (z2) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                workOnQueue();
            } catch (Error e) {
                synchronized (SequentialExecutor.this.mQueue) {
                    SequentialExecutor.this.mWorkerRunningState = WorkerRunningState.IDLE;
                    throw e;
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public enum WorkerRunningState {
        IDLE,
        QUEUING,
        QUEUED,
        RUNNING
    }

    public SequentialExecutor(Executor executor) {
        this.mExecutor = (Executor) Preconditions.checkNotNull(executor);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0066 A[ADDED_TO_REGION] */
    @Override // java.util.concurrent.Executor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void execute(final Runnable runnable) {
        WorkerRunningState workerRunningState;
        boolean z;
        Preconditions.checkNotNull(runnable);
        synchronized (this.mQueue) {
            WorkerRunningState workerRunningState2 = this.mWorkerRunningState;
            if (workerRunningState2 != WorkerRunningState.RUNNING && workerRunningState2 != (workerRunningState = WorkerRunningState.QUEUED)) {
                long j = this.mWorkerRunCount;
                Runnable runnable2 = new Runnable() { // from class: androidx.camera.core.impl.utils.executor.SequentialExecutor.1
                    @Override // java.lang.Runnable
                    public void run() {
                        runnable.run();
                    }
                };
                this.mQueue.add(runnable2);
                WorkerRunningState workerRunningState3 = WorkerRunningState.QUEUING;
                this.mWorkerRunningState = workerRunningState3;
                try {
                    this.mExecutor.execute(this.mWorker);
                    if (this.mWorkerRunningState != workerRunningState3) {
                        return;
                    }
                    synchronized (this.mQueue) {
                        try {
                            if (this.mWorkerRunCount == j && this.mWorkerRunningState == workerRunningState3) {
                                this.mWorkerRunningState = workerRunningState;
                            }
                        } finally {
                        }
                    }
                    return;
                } catch (Error | RuntimeException e) {
                    synchronized (this.mQueue) {
                        try {
                            WorkerRunningState workerRunningState4 = this.mWorkerRunningState;
                            if (workerRunningState4 != WorkerRunningState.IDLE) {
                                if (workerRunningState4 == WorkerRunningState.QUEUING) {
                                }
                                z = false;
                                if ((e instanceof RejectedExecutionException) || z) {
                                    throw e;
                                }
                            }
                            if (this.mQueue.removeLastOccurrence(runnable2)) {
                                z = true;
                                if (e instanceof RejectedExecutionException) {
                                }
                                throw e;
                            }
                            z = false;
                            if (e instanceof RejectedExecutionException) {
                            }
                            throw e;
                        } finally {
                        }
                    }
                    return;
                }
            }
            this.mQueue.add(runnable);
        }
    }
}
