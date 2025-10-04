package androidx.work.impl.utils;

import androidx.exifinterface.media.ExifInterface;
import androidx.work.ListenableFutureKt;
import androidx.work.WorkInfo;
import androidx.work.WorkQuery;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.UUID;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u00008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u001a.\u0010\u0000\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\b0\u0002H\u0000\u001a(\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\bH\u0000\u001a$\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\rH\u0000\u001a(\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\bH\u0000\u001a(\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0000\u001a4\u0010\u0013\u001a\b\u0012\u0004\u0012\u0002H\u00140\u0001\"\u0004\b\u0000\u0010\u0014*\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u0002H\u00140\u0016H\u0002¨\u0006\u0017"}, d2 = {"forStringIds", "Lcom/google/common/util/concurrent/ListenableFuture;", "", "Landroidx/work/WorkInfo;", "Landroidx/work/impl/WorkDatabase;", "executor", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "ids", "", "forTag", "tag", "forUUID", "id", "Ljava/util/UUID;", "forUniqueWork", "name", "forWorkQuerySpec", "querySpec", "Landroidx/work/WorkQuery;", "loadStatusFuture", ExifInterface.GPS_DIRECTION_TRUE, "block", "Lkotlin/Function1;", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "StatusRunnable")
/* loaded from: classes.dex */
public final class StatusRunnable {
    @NotNull
    public static final ListenableFuture<List<WorkInfo>> forStringIds(@NotNull WorkDatabase workDatabase, @NotNull TaskExecutor executor, @NotNull final List<String> ids) {
        Intrinsics.checkNotNullParameter(workDatabase, "<this>");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(ids, "ids");
        return loadStatusFuture(workDatabase, executor, new Function1<WorkDatabase, List<? extends WorkInfo>>() { // from class: androidx.work.impl.utils.StatusRunnable$forStringIds$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final List<WorkInfo> invoke(WorkDatabase db) {
                Intrinsics.checkNotNullParameter(db, "db");
                List<WorkInfo> apply = WorkSpec.WORK_INFO_MAPPER.apply(db.workSpecDao().getWorkStatusPojoForIds(ids));
                Intrinsics.checkNotNullExpressionValue(apply, "WORK_INFO_MAPPER.apply(d…orkStatusPojoForIds(ids))");
                return apply;
            }
        });
    }

    @NotNull
    public static final ListenableFuture<List<WorkInfo>> forTag(@NotNull WorkDatabase workDatabase, @NotNull TaskExecutor executor, @NotNull final String tag) {
        Intrinsics.checkNotNullParameter(workDatabase, "<this>");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(tag, "tag");
        return loadStatusFuture(workDatabase, executor, new Function1<WorkDatabase, List<? extends WorkInfo>>() { // from class: androidx.work.impl.utils.StatusRunnable$forTag$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final List<WorkInfo> invoke(WorkDatabase db) {
                Intrinsics.checkNotNullParameter(db, "db");
                List<WorkInfo> apply = WorkSpec.WORK_INFO_MAPPER.apply(db.workSpecDao().getWorkStatusPojoForTag(tag));
                Intrinsics.checkNotNullExpressionValue(apply, "WORK_INFO_MAPPER.apply(d…orkStatusPojoForTag(tag))");
                return apply;
            }
        });
    }

    @NotNull
    public static final ListenableFuture<WorkInfo> forUUID(@NotNull WorkDatabase workDatabase, @NotNull TaskExecutor executor, @NotNull final UUID id) {
        Intrinsics.checkNotNullParameter(workDatabase, "<this>");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(id, "id");
        return loadStatusFuture(workDatabase, executor, new Function1<WorkDatabase, WorkInfo>() { // from class: androidx.work.impl.utils.StatusRunnable$forUUID$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final WorkInfo invoke(WorkDatabase db) {
                Intrinsics.checkNotNullParameter(db, "db");
                WorkSpecDao workSpecDao = db.workSpecDao();
                String uuid = id.toString();
                Intrinsics.checkNotNullExpressionValue(uuid, "id.toString()");
                WorkSpec.WorkInfoPojo workStatusPojoForId = workSpecDao.getWorkStatusPojoForId(uuid);
                if (workStatusPojoForId != null) {
                    return workStatusPojoForId.toWorkInfo();
                }
                return null;
            }
        });
    }

    @NotNull
    public static final ListenableFuture<List<WorkInfo>> forUniqueWork(@NotNull WorkDatabase workDatabase, @NotNull TaskExecutor executor, @NotNull final String name) {
        Intrinsics.checkNotNullParameter(workDatabase, "<this>");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(name, "name");
        return loadStatusFuture(workDatabase, executor, new Function1<WorkDatabase, List<? extends WorkInfo>>() { // from class: androidx.work.impl.utils.StatusRunnable$forUniqueWork$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final List<WorkInfo> invoke(WorkDatabase db) {
                Intrinsics.checkNotNullParameter(db, "db");
                List<WorkInfo> apply = WorkSpec.WORK_INFO_MAPPER.apply(db.workSpecDao().getWorkStatusPojoForName(name));
                Intrinsics.checkNotNullExpressionValue(apply, "WORK_INFO_MAPPER.apply(d…kStatusPojoForName(name))");
                return apply;
            }
        });
    }

    @NotNull
    public static final ListenableFuture<List<WorkInfo>> forWorkQuerySpec(@NotNull WorkDatabase workDatabase, @NotNull TaskExecutor executor, @NotNull final WorkQuery querySpec) {
        Intrinsics.checkNotNullParameter(workDatabase, "<this>");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Intrinsics.checkNotNullParameter(querySpec, "querySpec");
        return loadStatusFuture(workDatabase, executor, new Function1<WorkDatabase, List<? extends WorkInfo>>() { // from class: androidx.work.impl.utils.StatusRunnable$forWorkQuerySpec$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final List<WorkInfo> invoke(WorkDatabase db) {
                Intrinsics.checkNotNullParameter(db, "db");
                List<WorkInfo> apply = WorkSpec.WORK_INFO_MAPPER.apply(db.rawWorkInfoDao().getWorkInfoPojos(RawQueries.toRawQuery(WorkQuery.this)));
                Intrinsics.checkNotNullExpressionValue(apply, "WORK_INFO_MAPPER.apply(d…(querySpec.toRawQuery()))");
                return apply;
            }
        });
    }

    private static final <T> ListenableFuture<T> loadStatusFuture(final WorkDatabase workDatabase, TaskExecutor taskExecutor, final Function1<? super WorkDatabase, ? extends T> function1) {
        SerialExecutor serialTaskExecutor = taskExecutor.getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "executor.serialTaskExecutor");
        return ListenableFutureKt.executeAsync(serialTaskExecutor, "loadStatusFuture", new Function0<T>() { // from class: androidx.work.impl.utils.StatusRunnable$loadStatusFuture$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final T invoke() {
                return function1.invoke(workDatabase);
            }
        });
    }
}
