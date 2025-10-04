package androidx.work.impl.utils;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.work.ExistingWorkPolicy;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.WorkRequest;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.Dependency;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkName;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class EnqueueRunnable {
    private static final String TAG = Logger.tagWithPrefix("EnqueueRunnable");

    private EnqueueRunnable() {
    }

    @VisibleForTesting
    public static boolean addToDatabase(@NonNull WorkContinuationImpl workContinuationImpl) {
        WorkManagerImpl workManagerImpl = workContinuationImpl.getWorkManagerImpl();
        WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        workDatabase.beginTransaction();
        try {
            EnqueueUtilsKt.checkContentUriTriggerWorkerLimits(workDatabase, workManagerImpl.getConfiguration(), workContinuationImpl);
            boolean processContinuation = processContinuation(workContinuationImpl);
            workDatabase.setTransactionSuccessful();
            return processContinuation;
        } finally {
            workDatabase.endTransaction();
        }
    }

    public static void enqueue(@NonNull WorkContinuationImpl workContinuationImpl) {
        if (!workContinuationImpl.hasCycles()) {
            if (addToDatabase(workContinuationImpl)) {
                scheduleWorkInBackground(workContinuationImpl);
            }
        } else {
            throw new IllegalStateException("WorkContinuation has cycles (" + workContinuationImpl + ")");
        }
    }

    private static boolean enqueueContinuation(@NonNull WorkContinuationImpl workContinuationImpl) {
        boolean enqueueWorkWithPrerequisites = enqueueWorkWithPrerequisites(workContinuationImpl.getWorkManagerImpl(), workContinuationImpl.getWork(), (String[]) WorkContinuationImpl.prerequisitesFor(workContinuationImpl).toArray(new String[0]), workContinuationImpl.getName(), workContinuationImpl.getExistingWorkPolicy());
        workContinuationImpl.markEnqueued();
        return enqueueWorkWithPrerequisites;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:62:0x015c  */
    /* JADX WARN: Type inference failed for: r15v8, types: [java.util.List] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static boolean enqueueWorkWithPrerequisites(WorkManagerImpl workManagerImpl, @NonNull List<? extends WorkRequest> list, String[] strArr, String str, ExistingWorkPolicy existingWorkPolicy) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        Iterator<? extends WorkRequest> it;
        DependencyDao dependencyDao;
        boolean z6;
        boolean z7;
        String[] strArr2 = strArr;
        long currentTimeMillis = workManagerImpl.getConfiguration().getClock().currentTimeMillis();
        WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        if (strArr2 != null && strArr2.length > 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            z2 = true;
            z3 = false;
            z4 = false;
            for (String str2 : strArr2) {
                WorkSpec workSpec = workDatabase.workSpecDao().getWorkSpec(str2);
                if (workSpec == null) {
                    Logger.get().error(TAG, "Prerequisite " + str2 + " doesn't exist; not enqueuing");
                    return false;
                }
                WorkInfo.State state = workSpec.state;
                if (state == WorkInfo.State.SUCCEEDED) {
                    z7 = true;
                } else {
                    z7 = false;
                }
                z2 &= z7;
                if (state == WorkInfo.State.FAILED) {
                    z4 = true;
                } else if (state == WorkInfo.State.CANCELLED) {
                    z3 = true;
                }
            }
        } else {
            z2 = true;
            z3 = false;
            z4 = false;
        }
        boolean isEmpty = TextUtils.isEmpty(str);
        if (!isEmpty && !z) {
            List<WorkSpec.IdAndState> workSpecIdAndStatesForName = workDatabase.workSpecDao().getWorkSpecIdAndStatesForName(str);
            if (!workSpecIdAndStatesForName.isEmpty()) {
                if (existingWorkPolicy != ExistingWorkPolicy.APPEND && existingWorkPolicy != ExistingWorkPolicy.APPEND_OR_REPLACE) {
                    if (existingWorkPolicy == ExistingWorkPolicy.KEEP) {
                        Iterator<WorkSpec.IdAndState> it2 = workSpecIdAndStatesForName.iterator();
                        while (it2.hasNext()) {
                            WorkInfo.State state2 = it2.next().state;
                            if (state2 == WorkInfo.State.ENQUEUED || state2 == WorkInfo.State.RUNNING) {
                                return false;
                            }
                        }
                    }
                    CancelWorkRunnable.forNameInline(str, workManagerImpl);
                    WorkSpecDao workSpecDao = workDatabase.workSpecDao();
                    Iterator<WorkSpec.IdAndState> it3 = workSpecIdAndStatesForName.iterator();
                    while (it3.hasNext()) {
                        workSpecDao.delete(it3.next().id);
                    }
                    z5 = true;
                    it = list.iterator();
                    while (it.hasNext()) {
                    }
                    return z5;
                }
                DependencyDao dependencyDao2 = workDatabase.dependencyDao();
                ArrayList arrayList = new ArrayList();
                for (WorkSpec.IdAndState idAndState : workSpecIdAndStatesForName) {
                    if (!dependencyDao2.hasDependents(idAndState.id)) {
                        WorkInfo.State state3 = idAndState.state;
                        dependencyDao = dependencyDao2;
                        if (state3 == WorkInfo.State.SUCCEEDED) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        boolean z8 = z6 & z2;
                        if (state3 == WorkInfo.State.FAILED) {
                            z4 = true;
                        } else if (state3 == WorkInfo.State.CANCELLED) {
                            z3 = true;
                        }
                        arrayList.add(idAndState.id);
                        z2 = z8;
                    } else {
                        dependencyDao = dependencyDao2;
                    }
                    dependencyDao2 = dependencyDao;
                }
                ArrayList arrayList2 = arrayList;
                arrayList2 = arrayList;
                if (existingWorkPolicy == ExistingWorkPolicy.APPEND_OR_REPLACE && (z3 || z4)) {
                    WorkSpecDao workSpecDao2 = workDatabase.workSpecDao();
                    Iterator<WorkSpec.IdAndState> it4 = workSpecDao2.getWorkSpecIdAndStatesForName(str).iterator();
                    while (it4.hasNext()) {
                        workSpecDao2.delete(it4.next().id);
                    }
                    z3 = false;
                    z4 = false;
                    arrayList2 = Collections.emptyList();
                }
                strArr2 = (String[]) arrayList2.toArray(strArr2);
                if (strArr2.length > 0) {
                    z = true;
                } else {
                    z = false;
                }
                z5 = false;
                it = list.iterator();
                while (it.hasNext()) {
                    WorkRequest next = it.next();
                    WorkSpec workSpec2 = next.getWorkSpec();
                    if (z && !z2) {
                        if (z4) {
                            workSpec2.state = WorkInfo.State.FAILED;
                        } else if (z3) {
                            workSpec2.state = WorkInfo.State.CANCELLED;
                        } else {
                            workSpec2.state = WorkInfo.State.BLOCKED;
                        }
                    } else {
                        workSpec2.lastEnqueueTime = currentTimeMillis;
                    }
                    Iterator<? extends WorkRequest> it5 = it;
                    if (workSpec2.state == WorkInfo.State.ENQUEUED) {
                        z5 = true;
                    }
                    workDatabase.workSpecDao().insertWorkSpec(EnqueueUtilsKt.wrapWorkSpecIfNeeded(workManagerImpl.getSchedulers(), workSpec2));
                    if (z) {
                        int length = strArr2.length;
                        int i = 0;
                        while (i < length) {
                            workDatabase.dependencyDao().insertDependency(new Dependency(next.getStringId(), strArr2[i]));
                            i++;
                            length = length;
                            strArr2 = strArr2;
                        }
                    }
                    String[] strArr3 = strArr2;
                    workDatabase.workTagDao().insertTags(next.getStringId(), next.getTags());
                    if (!isEmpty) {
                        workDatabase.workNameDao().insert(new WorkName(str, next.getStringId()));
                    }
                    it = it5;
                    strArr2 = strArr3;
                }
                return z5;
            }
        }
        z5 = false;
        it = list.iterator();
        while (it.hasNext()) {
        }
        return z5;
    }

    private static boolean processContinuation(@NonNull WorkContinuationImpl workContinuationImpl) {
        List<WorkContinuationImpl> parents = workContinuationImpl.getParents();
        boolean z = false;
        if (parents != null) {
            for (WorkContinuationImpl workContinuationImpl2 : parents) {
                if (!workContinuationImpl2.isEnqueued()) {
                    z |= processContinuation(workContinuationImpl2);
                } else {
                    Logger.get().warning(TAG, "Already enqueued work ids (" + TextUtils.join(", ", workContinuationImpl2.getIds()) + ")");
                }
            }
        }
        return enqueueContinuation(workContinuationImpl) | z;
    }

    @VisibleForTesting
    public static void scheduleWorkInBackground(@NonNull WorkContinuationImpl workContinuationImpl) {
        WorkManagerImpl workManagerImpl = workContinuationImpl.getWorkManagerImpl();
        Schedulers.schedule(workManagerImpl.getConfiguration(), workManagerImpl.getWorkDatabase(), workManagerImpl.getSchedulers());
    }
}
