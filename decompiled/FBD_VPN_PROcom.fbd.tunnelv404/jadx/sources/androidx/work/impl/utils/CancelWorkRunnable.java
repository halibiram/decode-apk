package androidx.work.impl.utils;

import androidx.work.Operation;
import androidx.work.OperationKt;
import androidx.work.Tracer;
import androidx.work.WorkInfo;
import androidx.work.impl.Processor;
import androidx.work.impl.Scheduler;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0590xf7db57e6;
import defpackage.RunnableC0384x149e5abd;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000,\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0016\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0016\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0016\u0010\r\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0016\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0018\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0004\u001a\u00020\u0005H\u0002\u001a\u0010\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0002¨\u0006\u0014"}, d2 = {"cancel", "", "workManagerImpl", "Landroidx/work/impl/WorkManagerImpl;", "workSpecId", "", "forAll", "Landroidx/work/Operation;", "forId", "id", "Ljava/util/UUID;", "forName", "name", "forNameInline", "forTag", "tag", "iterativelyCancelWorkAndDependents", "workDatabase", "Landroidx/work/impl/WorkDatabase;", "reschedulePendingWorkers", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "CancelWorkRunnable")
/* loaded from: classes.dex */
public final class CancelWorkRunnable {
    public static final void cancel(WorkManagerImpl workManagerImpl, String str) {
        WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        Intrinsics.checkNotNullExpressionValue(workDatabase, "workManagerImpl.workDatabase");
        iterativelyCancelWorkAndDependents(workDatabase, str);
        Processor processor = workManagerImpl.getProcessor();
        Intrinsics.checkNotNullExpressionValue(processor, "workManagerImpl.processor");
        processor.stopAndCancelWork(str, 1);
        Iterator<Scheduler> it = workManagerImpl.getSchedulers().iterator();
        while (it.hasNext()) {
            it.next().cancel(str);
        }
    }

    @NotNull
    public static final Operation forAll(@NotNull WorkManagerImpl workManagerImpl) {
        Intrinsics.checkNotNullParameter(workManagerImpl, "workManagerImpl");
        Tracer tracer = workManagerImpl.getConfiguration().getTracer();
        SerialExecutor serialTaskExecutor = workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "workManagerImpl.workTask…ecutor.serialTaskExecutor");
        return OperationKt.launchOperation(tracer, "CancelAllWork", serialTaskExecutor, new CancelWorkRunnable$forAll$1(workManagerImpl));
    }

    @NotNull
    public static final Operation forId(@NotNull UUID id, @NotNull WorkManagerImpl workManagerImpl) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(workManagerImpl, "workManagerImpl");
        Tracer tracer = workManagerImpl.getConfiguration().getTracer();
        SerialExecutor serialTaskExecutor = workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "workManagerImpl.workTask…ecutor.serialTaskExecutor");
        return OperationKt.launchOperation(tracer, "CancelWorkById", serialTaskExecutor, new CancelWorkRunnable$forId$1(workManagerImpl, id));
    }

    @NotNull
    public static final Operation forName(@NotNull final String name, @NotNull final WorkManagerImpl workManagerImpl) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(workManagerImpl, "workManagerImpl");
        Tracer tracer = workManagerImpl.getConfiguration().getTracer();
        String m2952x5ac5058d = AbstractC0362x4440ab85.m2952x5ac5058d("CancelWorkByName_", name);
        SerialExecutor serialTaskExecutor = workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "workManagerImpl.workTask…ecutor.serialTaskExecutor");
        return OperationKt.launchOperation(tracer, m2952x5ac5058d, serialTaskExecutor, new Function0<Unit>() { // from class: androidx.work.impl.utils.CancelWorkRunnable$forName$1
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
                CancelWorkRunnable.forNameInline(name, workManagerImpl);
                CancelWorkRunnable.reschedulePendingWorkers(workManagerImpl);
            }
        });
    }

    public static final void forNameInline(@NotNull String name, @NotNull WorkManagerImpl workManagerImpl) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(workManagerImpl, "workManagerImpl");
        WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        Intrinsics.checkNotNullExpressionValue(workDatabase, "workManagerImpl.workDatabase");
        workDatabase.runInTransaction(new RunnableC0384x149e5abd(workDatabase, 5, name, workManagerImpl));
    }

    public static final void forNameInline$lambda$0(WorkDatabase workDatabase, String str, WorkManagerImpl workManagerImpl) {
        Iterator<String> it = workDatabase.workSpecDao().getUnfinishedWorkWithName(str).iterator();
        while (it.hasNext()) {
            cancel(workManagerImpl, it.next());
        }
    }

    @NotNull
    public static final Operation forTag(@NotNull String tag, @NotNull WorkManagerImpl workManagerImpl) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(workManagerImpl, "workManagerImpl");
        Tracer tracer = workManagerImpl.getConfiguration().getTracer();
        String m2952x5ac5058d = AbstractC0362x4440ab85.m2952x5ac5058d("CancelWorkByTag_", tag);
        SerialExecutor serialTaskExecutor = workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "workManagerImpl.workTask…ecutor.serialTaskExecutor");
        return OperationKt.launchOperation(tracer, m2952x5ac5058d, serialTaskExecutor, new CancelWorkRunnable$forTag$1(workManagerImpl, tag));
    }

    private static final void iterativelyCancelWorkAndDependents(WorkDatabase workDatabase, String str) {
        WorkSpecDao workSpecDao = workDatabase.workSpecDao();
        DependencyDao dependencyDao = workDatabase.dependencyDao();
        List mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(str);
        while (!mutableListOf.isEmpty()) {
            String str2 = (String) AbstractC0590xf7db57e6.removeLast(mutableListOf);
            WorkInfo.State state = workSpecDao.getState(str2);
            if (state != WorkInfo.State.SUCCEEDED && state != WorkInfo.State.FAILED) {
                workSpecDao.setCancelledState(str2);
            }
            mutableListOf.addAll(dependencyDao.getDependentWorkIds(str2));
        }
    }

    public static final void reschedulePendingWorkers(WorkManagerImpl workManagerImpl) {
        Schedulers.schedule(workManagerImpl.getConfiguration(), workManagerImpl.getWorkDatabase(), workManagerImpl.getSchedulers());
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static /* synthetic */ void m886xfbe0c504(WorkDatabase workDatabase, String str, WorkManagerImpl workManagerImpl) {
        forNameInline$lambda$0(workDatabase, str, workManagerImpl);
    }
}
