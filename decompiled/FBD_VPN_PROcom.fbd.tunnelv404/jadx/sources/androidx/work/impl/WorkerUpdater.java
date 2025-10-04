package androidx.work.impl;

import androidx.annotation.RestrictTo;
import androidx.work.Configuration;
import androidx.work.ExistingWorkPolicy;
import androidx.work.ListenableFutureKt;
import androidx.work.Operation;
import androidx.work.OperationKt;
import androidx.work.Tracer;
import androidx.work.WorkInfo;
import androidx.work.WorkManager;
import androidx.work.WorkRequest;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkerUpdater;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkTagDao;
import androidx.work.impl.utils.EnqueueRunnable;
import androidx.work.impl.utils.EnqueueUtilsKt;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0586x968d4673;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000J\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001aD\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\t2\u0006\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002\u001a\u001c\u0010\u0010\u001a\u00020\u0011*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0014\u001a\u00020\u0015H\u0007\u001a\u001a\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00010\u0016*\u00020\u00122\u0006\u0010\u0014\u001a\u00020\u0015H\u0000¨\u0006\u0017"}, d2 = {"updateWorkImpl", "Landroidx/work/WorkManager$UpdateResult;", "processor", "Landroidx/work/impl/Processor;", "workDatabase", "Landroidx/work/impl/WorkDatabase;", "configuration", "Landroidx/work/Configuration;", "schedulers", "", "Landroidx/work/impl/Scheduler;", "newWorkSpec", "Landroidx/work/impl/model/WorkSpec;", "tags", "", "", "enqueueUniquelyNamedPeriodic", "Landroidx/work/Operation;", "Landroidx/work/impl/WorkManagerImpl;", "name", "workRequest", "Landroidx/work/WorkRequest;", "Lcom/google/common/util/concurrent/ListenableFuture;", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "WorkerUpdater")
@SourceDebugExtension({"SMAP\nWorkerUpdater.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkerUpdater.kt\nandroidx/work/impl/WorkerUpdater\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n1855#2,2:166\n*S KotlinDebug\n*F\n+ 1 WorkerUpdater.kt\nandroidx/work/impl/WorkerUpdater\n*L\n56#1:166,2\n*E\n"})
/* loaded from: classes.dex */
public final class WorkerUpdater {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final Operation enqueueUniquelyNamedPeriodic(@NotNull final WorkManagerImpl workManagerImpl, @NotNull final String name, @NotNull final WorkRequest workRequest) {
        Intrinsics.checkNotNullParameter(workManagerImpl, "<this>");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(workRequest, "workRequest");
        Tracer tracer = workManagerImpl.getConfiguration().getTracer();
        String m2952x5ac5058d = AbstractC0362x4440ab85.m2952x5ac5058d("enqueueUniquePeriodic_", name);
        SerialExecutor serialTaskExecutor = workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "workTaskExecutor.serialTaskExecutor");
        return OperationKt.launchOperation(tracer, m2952x5ac5058d, serialTaskExecutor, new Function0<Unit>() { // from class: androidx.work.impl.WorkerUpdater$enqueueUniquelyNamedPeriodic$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2() {
                final WorkRequest workRequest2 = workRequest;
                final WorkManagerImpl workManagerImpl2 = WorkManagerImpl.this;
                final String str = name;
                Function0<Unit> function0 = new Function0<Unit>() { // from class: androidx.work.impl.WorkerUpdater$enqueueUniquelyNamedPeriodic$1$enqueueNew$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public /* bridge */ /* synthetic */ Unit invoke() {
                        invoke2();
                        return Unit.INSTANCE;
                    }

                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2() {
                        EnqueueRunnable.enqueue(new WorkContinuationImpl(workManagerImpl2, str, ExistingWorkPolicy.KEEP, AbstractC0586x968d4673.listOf(WorkRequest.this)));
                    }
                };
                WorkSpecDao workSpecDao = WorkManagerImpl.this.getWorkDatabase().workSpecDao();
                List<WorkSpec.IdAndState> workSpecIdAndStatesForName = workSpecDao.getWorkSpecIdAndStatesForName(name);
                if (workSpecIdAndStatesForName.size() <= 1) {
                    WorkSpec.IdAndState idAndState = (WorkSpec.IdAndState) CollectionsKt___CollectionsKt.firstOrNull((List) workSpecIdAndStatesForName);
                    if (idAndState == null) {
                        function0.invoke();
                        return;
                    }
                    WorkSpec workSpec = workSpecDao.getWorkSpec(idAndState.id);
                    if (workSpec != null) {
                        if (workSpec.isPeriodic()) {
                            if (idAndState.state == WorkInfo.State.CANCELLED) {
                                workSpecDao.delete(idAndState.id);
                                function0.invoke();
                                return;
                            }
                            WorkSpec copy$default = WorkSpec.copy$default(workRequest.getWorkSpec(), idAndState.id, null, null, null, null, null, 0L, 0L, 0L, null, 0, null, 0L, 0L, 0L, 0L, false, null, 0, 0, 0L, 0, 0, null, 16777214, null);
                            Processor processor = WorkManagerImpl.this.getProcessor();
                            Intrinsics.checkNotNullExpressionValue(processor, "processor");
                            WorkDatabase workDatabase = WorkManagerImpl.this.getWorkDatabase();
                            Intrinsics.checkNotNullExpressionValue(workDatabase, "workDatabase");
                            Configuration configuration = WorkManagerImpl.this.getConfiguration();
                            Intrinsics.checkNotNullExpressionValue(configuration, "configuration");
                            List<Scheduler> schedulers = WorkManagerImpl.this.getSchedulers();
                            Intrinsics.checkNotNullExpressionValue(schedulers, "schedulers");
                            WorkerUpdater.updateWorkImpl(processor, workDatabase, configuration, schedulers, copy$default, workRequest.getTags());
                            return;
                        }
                        throw new UnsupportedOperationException("Can't update OneTimeWorker to Periodic Worker. Update operation must preserve worker's type.");
                    }
                    StringBuilder sb = new StringBuilder("WorkSpec with ");
                    sb.append(idAndState.id);
                    sb.append(", that matches a name \"");
                    throw new IllegalStateException(AbstractC0362x4440ab85.m2936xd2bcb0cf(sb, name, "\", wasn't found"));
                }
                throw new UnsupportedOperationException("Can't apply UPDATE policy to the chains of work.");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WorkManager.UpdateResult updateWorkImpl(Processor processor, final WorkDatabase workDatabase, Configuration configuration, final List<? extends Scheduler> list, final WorkSpec workSpec, final Set<String> set) {
        final String str = workSpec.id;
        final WorkSpec workSpec2 = workDatabase.workSpecDao().getWorkSpec(str);
        if (workSpec2 != null) {
            if (workSpec2.state.isFinished()) {
                return WorkManager.UpdateResult.NOT_APPLIED;
            }
            if (!(workSpec2.isPeriodic() ^ workSpec.isPeriodic())) {
                final boolean isEnqueued = processor.isEnqueued(str);
                if (!isEnqueued) {
                    Iterator<T> it = list.iterator();
                    while (it.hasNext()) {
                        ((Scheduler) it.next()).cancel(str);
                    }
                }
                workDatabase.runInTransaction(new Runnable() { // from class: 땳땣딤땔돷뒻듰둠뒵듬뒘뎬땨땅돛땵땟땜듽둑듟뒬뒨뎽돝땔돶뒛뒈땱땃둑됫땐도땨돠땮땁두딠됨돼땹두땥땔둔딹뎹딠돳땤땍돼딻뒼돷듟듼땥됐딤땱딻딄뒙둠두드뒐뎡돸땀땲뒐둥뒹뒼듽돶뒵돳땠든뒼딟뒵돛뒘됴땋돵듸뒙뒀딐딹됫돳듬땧든돴땠뒨땤됫듼됴뎸둡딌뒻땧땪딠딎딀땟뒨땵땮돰될듰돛둬딽땝
                    @Override // java.lang.Runnable
                    public final void run() {
                        WorkerUpdater.updateWorkImpl$lambda$2(WorkDatabase.this, workSpec2, workSpec, list, str, set, isEnqueued);
                    }
                });
                if (!isEnqueued) {
                    Schedulers.schedule(configuration, workDatabase, list);
                }
                return isEnqueued ? WorkManager.UpdateResult.APPLIED_FOR_NEXT_RUN : WorkManager.UpdateResult.APPLIED_IMMEDIATELY;
            }
            WorkerUpdater$updateWorkImpl$type$1 workerUpdater$updateWorkImpl$type$1 = new Function1<WorkSpec, String>() { // from class: androidx.work.impl.WorkerUpdater$updateWorkImpl$type$1
                @Override // kotlin.jvm.functions.Function1
                public final String invoke(WorkSpec spec) {
                    Intrinsics.checkNotNullParameter(spec, "spec");
                    return spec.isPeriodic() ? "Periodic" : "OneTime";
                }
            };
            StringBuilder sb = new StringBuilder("Can't update ");
            sb.append(workerUpdater$updateWorkImpl$type$1.invoke((WorkerUpdater$updateWorkImpl$type$1) workSpec2));
            sb.append(" Worker to ");
            throw new UnsupportedOperationException(AbstractC0362x4440ab85.m2936xd2bcb0cf(sb, workerUpdater$updateWorkImpl$type$1.invoke((WorkerUpdater$updateWorkImpl$type$1) workSpec), " Worker. Update operation must preserve worker's type."));
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2932x95f25580("Worker with ", str, " doesn't exist"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void updateWorkImpl$lambda$2(WorkDatabase workDatabase, WorkSpec workSpec, WorkSpec workSpec2, List list, String str, Set set, boolean z) {
        WorkSpecDao workSpecDao = workDatabase.workSpecDao();
        WorkTagDao workTagDao = workDatabase.workTagDao();
        WorkSpec copy$default = WorkSpec.copy$default(workSpec2, null, workSpec.state, null, null, null, null, 0L, 0L, 0L, null, workSpec.runAttemptCount, null, 0L, workSpec.lastEnqueueTime, 0L, 0L, false, null, workSpec.getPeriodCount(), workSpec.getGeneration() + 1, workSpec.getNextScheduleTimeOverride(), workSpec.getNextScheduleTimeOverrideGeneration(), 0, null, 12835837, null);
        if (workSpec2.getNextScheduleTimeOverrideGeneration() == 1) {
            copy$default.setNextScheduleTimeOverride(workSpec2.getNextScheduleTimeOverride());
            copy$default.setNextScheduleTimeOverrideGeneration(copy$default.getNextScheduleTimeOverrideGeneration() + 1);
        }
        workSpecDao.updateWorkSpec(EnqueueUtilsKt.wrapWorkSpecIfNeeded(list, copy$default));
        workTagDao.deleteByWorkSpecId(str);
        workTagDao.insertTags(str, set);
        if (!z) {
            workSpecDao.markWorkSpecScheduled(str, -1L);
            workDatabase.workProgressDao().delete(str);
        }
    }

    @NotNull
    public static final ListenableFuture<WorkManager.UpdateResult> updateWorkImpl(@NotNull final WorkManagerImpl workManagerImpl, @NotNull final WorkRequest workRequest) {
        Intrinsics.checkNotNullParameter(workManagerImpl, "<this>");
        Intrinsics.checkNotNullParameter(workRequest, "workRequest");
        SerialExecutor serialTaskExecutor = workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "workTaskExecutor.serialTaskExecutor");
        return ListenableFutureKt.executeAsync(serialTaskExecutor, "updateWorkImpl", new Function0<WorkManager.UpdateResult>() { // from class: androidx.work.impl.WorkerUpdater$updateWorkImpl$3
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final WorkManager.UpdateResult invoke() {
                WorkManager.UpdateResult updateWorkImpl;
                Processor processor = WorkManagerImpl.this.getProcessor();
                Intrinsics.checkNotNullExpressionValue(processor, "processor");
                WorkDatabase workDatabase = WorkManagerImpl.this.getWorkDatabase();
                Intrinsics.checkNotNullExpressionValue(workDatabase, "workDatabase");
                Configuration configuration = WorkManagerImpl.this.getConfiguration();
                Intrinsics.checkNotNullExpressionValue(configuration, "configuration");
                List<Scheduler> schedulers = WorkManagerImpl.this.getSchedulers();
                Intrinsics.checkNotNullExpressionValue(schedulers, "schedulers");
                updateWorkImpl = WorkerUpdater.updateWorkImpl(processor, workDatabase, configuration, schedulers, workRequest.getWorkSpec(), workRequest.getTags());
                return updateWorkImpl;
            }
        });
    }
}
