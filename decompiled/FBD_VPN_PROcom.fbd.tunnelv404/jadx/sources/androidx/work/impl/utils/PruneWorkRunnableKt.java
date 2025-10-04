package androidx.work.impl.utils;

import androidx.work.Configuration;
import androidx.work.Operation;
import androidx.work.OperationKt;
import androidx.work.Tracer;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0018\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0000¨\u0006\u0007"}, d2 = {"pruneWork", "Landroidx/work/Operation;", "Landroidx/work/impl/WorkDatabase;", "configuration", "Landroidx/work/Configuration;", "executor", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "work-runtime_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class PruneWorkRunnableKt {
    @NotNull
    public static final Operation pruneWork(@NotNull final WorkDatabase workDatabase, @NotNull Configuration configuration, @NotNull TaskExecutor executor) {
        Intrinsics.checkNotNullParameter(workDatabase, "<this>");
        Intrinsics.checkNotNullParameter(configuration, "configuration");
        Intrinsics.checkNotNullParameter(executor, "executor");
        Tracer tracer = configuration.getTracer();
        SerialExecutor serialTaskExecutor = executor.getSerialTaskExecutor();
        Intrinsics.checkNotNullExpressionValue(serialTaskExecutor, "executor.serialTaskExecutor");
        return OperationKt.launchOperation(tracer, "PruneWork", serialTaskExecutor, new Function0<Unit>() { // from class: androidx.work.impl.utils.PruneWorkRunnableKt$pruneWork$1
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
                WorkDatabase.this.workSpecDao().pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast();
            }
        });
    }
}
