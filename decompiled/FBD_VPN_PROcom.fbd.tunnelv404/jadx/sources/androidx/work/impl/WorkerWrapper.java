package androidx.work.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Consumer;
import androidx.work.Clock;
import androidx.work.Configuration;
import androidx.work.Data;
import androidx.work.ForegroundUpdater;
import androidx.work.InputMerger;
import androidx.work.ListenableFutureKt;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.WorkerExceptionInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.WorkForegroundUpdater;
import androidx.work.impl.utils.WorkProgressUpdater;
import androidx.work.impl.utils.WorkerExceptionUtilsKt;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0586x968d4673;
import defpackage.AbstractC0590xf7db57e6;
import defpackage.AbstractC0892xc141c517;
import defpackage.CallableC1309x16e61ab3;
import java.util.Collection;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0007\u0018\u00002\u00020\u0001:\u0002>?B\u000f\b\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010(\u001a\u00020\u00152\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014H\u0002J\u0012\u0010)\u001a\u00020*2\b\u0010+\u001a\u0004\u0018\u00010,H\u0002J\u0010\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u000200H\u0007J\u0010\u00101\u001a\u00020.2\u0006\u0010#\u001a\u00020\u0015H\u0002J\f\u00102\u001a\b\u0012\u0004\u0012\u00020*03J\u0010\u00104\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0002J\u0010\u00105\u001a\u00020*2\u0006\u0010/\u001a\u000200H\u0002J\b\u00106\u001a\u00020*H\u0002J\u0010\u00107\u001a\u00020*2\u0006\u0010/\u001a\u000200H\u0002J\u000e\u00108\u001a\u000209H\u0082@¢\u0006\u0002\u0010:J\u0010\u0010;\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0007J\u0010\u0010<\u001a\u00020*2\u0006\u0010+\u001a\u00020,H\u0002J\b\u0010=\u001a\u00020*H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00150\u0014X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0019\u001a\u00020\u001a8F¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001cR\u0011\u0010\u001d\u001a\u00020\u001e¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u000e\u0010!\u001a\u00020\"X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010#\u001a\u00020\u0015X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010&\u001a\u00020'X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006@"}, d2 = {"Landroidx/work/impl/WorkerWrapper;", "", "builder", "Landroidx/work/impl/WorkerWrapper$Builder;", "(Landroidx/work/impl/WorkerWrapper$Builder;)V", "appContext", "Landroid/content/Context;", "builderWorker", "Landroidx/work/ListenableWorker;", "clock", "Landroidx/work/Clock;", "configuration", "Landroidx/work/Configuration;", "dependencyDao", "Landroidx/work/impl/model/DependencyDao;", "foregroundProcessor", "Landroidx/work/impl/foreground/ForegroundProcessor;", "runtimeExtras", "Landroidx/work/WorkerParameters$RuntimeExtras;", "tags", "", "", "workDatabase", "Landroidx/work/impl/WorkDatabase;", "workDescription", "workGenerationalId", "Landroidx/work/impl/model/WorkGenerationalId;", "getWorkGenerationalId", "()Landroidx/work/impl/model/WorkGenerationalId;", "workSpec", "Landroidx/work/impl/model/WorkSpec;", "getWorkSpec", "()Landroidx/work/impl/model/WorkSpec;", "workSpecDao", "Landroidx/work/impl/model/WorkSpecDao;", "workSpecId", "workTaskExecutor", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "workerJob", "Lkotlinx/coroutines/CompletableJob;", "createWorkDescription", "handleResult", "", "result", "Landroidx/work/ListenableWorker$Result;", "interrupt", "", "stopReason", "", "iterativelyFailWorkAndDependents", "launch", "Lcom/google/common/util/concurrent/ListenableFuture;", "onWorkFinished", "reschedule", "resetPeriodic", "resetWorkerStatus", "runWorker", "Landroidx/work/impl/WorkerWrapper$Resolution;", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "setFailed", "setSucceeded", "trySetRunning", "Builder", "Resolution", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
@SourceDebugExtension({"SMAP\nWorkerWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkerWrapper.kt\nandroidx/work/impl/WorkerWrapper\n+ 2 LoggerExt.kt\nandroidx/work/LoggerExtKt\n*L\n1#1,607:1\n29#2:608\n29#2:609\n27#2:610\n32#2:611\n19#2:612\n19#2:613\n24#2:614\n24#2:615\n24#2:616\n24#2:617\n19#2:618\n*S KotlinDebug\n*F\n+ 1 WorkerWrapper.kt\nandroidx/work/impl/WorkerWrapper\n*L\n206#1:608\n240#1:609\n315#1:610\n318#1:611\n354#1:612\n367#1:613\n374#1:614\n381#1:615\n384#1:616\n477#1:617\n151#1:618\n*E\n"})
/* loaded from: classes.dex */
public final class WorkerWrapper {

    @NotNull
    private final Context appContext;

    @Nullable
    private final ListenableWorker builderWorker;

    @NotNull
    private final Clock clock;

    @NotNull
    private final Configuration configuration;

    @NotNull
    private final DependencyDao dependencyDao;

    @NotNull
    private final ForegroundProcessor foregroundProcessor;

    @NotNull
    private final WorkerParameters.RuntimeExtras runtimeExtras;

    @NotNull
    private final List<String> tags;

    @NotNull
    private final WorkDatabase workDatabase;

    @NotNull
    private final String workDescription;

    @NotNull
    private final WorkSpec workSpec;

    @NotNull
    private final WorkSpecDao workSpecDao;

    @NotNull
    private final String workSpecId;

    @NotNull
    private final TaskExecutor workTaskExecutor;

    @NotNull
    private final CompletableJob workerJob;

    @Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001BE\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\r\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f¢\u0006\u0002\u0010\u0011J\u0006\u0010-\u001a\u00020.J\u0010\u0010/\u001a\u00020\u00002\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aJ\u0010\u00100\u001a\u00020\u00002\u0006\u0010'\u001a\u00020(H\u0007R\u0011\u0010\u0012\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\"R\u0011\u0010\f\u001a\u00020\r¢\u0006\b\n\u0000\u001a\u0004\b#\u0010$R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b%\u0010&R\u001c\u0010'\u001a\u0004\u0018\u00010(X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b)\u0010*\"\u0004\b+\u0010,¨\u00061"}, d2 = {"Landroidx/work/impl/WorkerWrapper$Builder;", "", "context", "Landroid/content/Context;", "configuration", "Landroidx/work/Configuration;", "workTaskExecutor", "Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "foregroundProcessor", "Landroidx/work/impl/foreground/ForegroundProcessor;", "workDatabase", "Landroidx/work/impl/WorkDatabase;", "workSpec", "Landroidx/work/impl/model/WorkSpec;", "tags", "", "", "(Landroid/content/Context;Landroidx/work/Configuration;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/model/WorkSpec;Ljava/util/List;)V", "appContext", "getAppContext", "()Landroid/content/Context;", "getConfiguration", "()Landroidx/work/Configuration;", "getForegroundProcessor", "()Landroidx/work/impl/foreground/ForegroundProcessor;", "runtimeExtras", "Landroidx/work/WorkerParameters$RuntimeExtras;", "getRuntimeExtras", "()Landroidx/work/WorkerParameters$RuntimeExtras;", "setRuntimeExtras", "(Landroidx/work/WorkerParameters$RuntimeExtras;)V", "getTags", "()Ljava/util/List;", "getWorkDatabase", "()Landroidx/work/impl/WorkDatabase;", "getWorkSpec", "()Landroidx/work/impl/model/WorkSpec;", "getWorkTaskExecutor", "()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;", "worker", "Landroidx/work/ListenableWorker;", "getWorker", "()Landroidx/work/ListenableWorker;", "setWorker", "(Landroidx/work/ListenableWorker;)V", "build", "Landroidx/work/impl/WorkerWrapper;", "withRuntimeExtras", "withWorker", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* loaded from: classes.dex */
    public static final class Builder {

        @NotNull
        private final Context appContext;

        @NotNull
        private final Configuration configuration;

        @NotNull
        private final ForegroundProcessor foregroundProcessor;

        @NotNull
        private WorkerParameters.RuntimeExtras runtimeExtras;

        @NotNull
        private final List<String> tags;

        @NotNull
        private final WorkDatabase workDatabase;

        @NotNull
        private final WorkSpec workSpec;

        @NotNull
        private final TaskExecutor workTaskExecutor;

        @Nullable
        private ListenableWorker worker;

        @SuppressLint({"LambdaLast"})
        public Builder(@NotNull Context context, @NotNull Configuration configuration, @NotNull TaskExecutor workTaskExecutor, @NotNull ForegroundProcessor foregroundProcessor, @NotNull WorkDatabase workDatabase, @NotNull WorkSpec workSpec, @NotNull List<String> tags) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(configuration, "configuration");
            Intrinsics.checkNotNullParameter(workTaskExecutor, "workTaskExecutor");
            Intrinsics.checkNotNullParameter(foregroundProcessor, "foregroundProcessor");
            Intrinsics.checkNotNullParameter(workDatabase, "workDatabase");
            Intrinsics.checkNotNullParameter(workSpec, "workSpec");
            Intrinsics.checkNotNullParameter(tags, "tags");
            this.configuration = configuration;
            this.workTaskExecutor = workTaskExecutor;
            this.foregroundProcessor = foregroundProcessor;
            this.workDatabase = workDatabase;
            this.workSpec = workSpec;
            this.tags = tags;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "context.applicationContext");
            this.appContext = applicationContext;
            this.runtimeExtras = new WorkerParameters.RuntimeExtras();
        }

        @NotNull
        public final WorkerWrapper build() {
            return new WorkerWrapper(this);
        }

        @NotNull
        public final Context getAppContext() {
            return this.appContext;
        }

        @NotNull
        public final Configuration getConfiguration() {
            return this.configuration;
        }

        @NotNull
        public final ForegroundProcessor getForegroundProcessor() {
            return this.foregroundProcessor;
        }

        @NotNull
        public final WorkerParameters.RuntimeExtras getRuntimeExtras() {
            return this.runtimeExtras;
        }

        @NotNull
        public final List<String> getTags() {
            return this.tags;
        }

        @NotNull
        public final WorkDatabase getWorkDatabase() {
            return this.workDatabase;
        }

        @NotNull
        public final WorkSpec getWorkSpec() {
            return this.workSpec;
        }

        @NotNull
        public final TaskExecutor getWorkTaskExecutor() {
            return this.workTaskExecutor;
        }

        @Nullable
        public final ListenableWorker getWorker() {
            return this.worker;
        }

        public final void setRuntimeExtras(@NotNull WorkerParameters.RuntimeExtras runtimeExtras) {
            Intrinsics.checkNotNullParameter(runtimeExtras, "<set-?>");
            this.runtimeExtras = runtimeExtras;
        }

        public final void setWorker(@Nullable ListenableWorker listenableWorker) {
            this.worker = listenableWorker;
        }

        @NotNull
        public final Builder withRuntimeExtras(@Nullable WorkerParameters.RuntimeExtras runtimeExtras) {
            if (runtimeExtras != null) {
                this.runtimeExtras = runtimeExtras;
            }
            return this;
        }

        @VisibleForTesting
        @NotNull
        public final Builder withWorker(@NotNull ListenableWorker worker) {
            Intrinsics.checkNotNullParameter(worker, "worker");
            this.worker = worker;
            return this;
        }
    }

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b2\u0018\u00002\u00020\u0001:\u0003\u0003\u0004\u0005B\u0007\b\u0004¢\u0006\u0002\u0010\u0002\u0082\u0001\u0003\u0006\u0007\b¨\u0006\t"}, d2 = {"Landroidx/work/impl/WorkerWrapper$Resolution;", "", "()V", "Failed", "Finished", "ResetWorkerStatus", "Landroidx/work/impl/WorkerWrapper$Resolution$Failed;", "Landroidx/work/impl/WorkerWrapper$Resolution$Finished;", "Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static abstract class Resolution {

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/WorkerWrapper$Resolution$Failed;", "Landroidx/work/impl/WorkerWrapper$Resolution;", "result", "Landroidx/work/ListenableWorker$Result;", "(Landroidx/work/ListenableWorker$Result;)V", "getResult", "()Landroidx/work/ListenableWorker$Result;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Failed extends Resolution {

            @NotNull
            private final ListenableWorker.Result result;

            public Failed() {
                this(null, 1, null);
            }

            @NotNull
            public final ListenableWorker.Result getResult() {
                return this.result;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Failed(@NotNull ListenableWorker.Result result) {
                super(null);
                Intrinsics.checkNotNullParameter(result, "result");
                this.result = result;
            }

            public /* synthetic */ Failed(ListenableWorker.Result result, int i, DefaultConstructorMarker defaultConstructorMarker) {
                this((i & 1) != 0 ? new ListenableWorker.Result.Failure() : result);
            }
        }

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/WorkerWrapper$Resolution$Finished;", "Landroidx/work/impl/WorkerWrapper$Resolution;", "result", "Landroidx/work/ListenableWorker$Result;", "(Landroidx/work/ListenableWorker$Result;)V", "getResult", "()Landroidx/work/ListenableWorker$Result;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Finished extends Resolution {

            @NotNull
            private final ListenableWorker.Result result;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Finished(@NotNull ListenableWorker.Result result) {
                super(null);
                Intrinsics.checkNotNullParameter(result, "result");
                this.result = result;
            }

            @NotNull
            public final ListenableWorker.Result getResult() {
                return this.result;
            }
        }

        @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/work/impl/WorkerWrapper$Resolution$ResetWorkerStatus;", "Landroidx/work/impl/WorkerWrapper$Resolution;", "reason", "", "(I)V", "getReason", "()I", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final class ResetWorkerStatus extends Resolution {
            private final int reason;

            public ResetWorkerStatus() {
                this(0, 1, null);
            }

            public final int getReason() {
                return this.reason;
            }

            public ResetWorkerStatus(int i) {
                super(null);
                this.reason = i;
            }

            public /* synthetic */ ResetWorkerStatus(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
                this((i2 & 1) != 0 ? -256 : i);
            }
        }

        public /* synthetic */ Resolution(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Resolution() {
        }
    }

    public WorkerWrapper(@NotNull Builder builder) {
        Intrinsics.checkNotNullParameter(builder, "builder");
        WorkSpec workSpec = builder.getWorkSpec();
        this.workSpec = workSpec;
        this.appContext = builder.getAppContext();
        this.workSpecId = workSpec.id;
        this.runtimeExtras = builder.getRuntimeExtras();
        this.builderWorker = builder.getWorker();
        this.workTaskExecutor = builder.getWorkTaskExecutor();
        Configuration configuration = builder.getConfiguration();
        this.configuration = configuration;
        this.clock = configuration.getClock();
        this.foregroundProcessor = builder.getForegroundProcessor();
        WorkDatabase workDatabase = builder.getWorkDatabase();
        this.workDatabase = workDatabase;
        this.workSpecDao = workDatabase.workSpecDao();
        this.dependencyDao = workDatabase.dependencyDao();
        List<String> tags = builder.getTags();
        this.tags = tags;
        this.workDescription = createWorkDescription(tags);
        this.workerJob = JobKt.Job$default((Job) null, 1, (Object) null);
    }

    private final String createWorkDescription(List<String> tags) {
        StringBuilder sb = new StringBuilder("Work [ id=");
        sb.append(this.workSpecId);
        sb.append(", tags={ ");
        return AbstractC0362x4440ab85.m2936xd2bcb0cf(sb, CollectionsKt___CollectionsKt.joinToString$default(tags, ",", null, null, 0, null, null, 62, null), " } ]");
    }

    private final boolean handleResult(ListenableWorker.Result result) {
        String str;
        String str2;
        String str3;
        if (result instanceof ListenableWorker.Result.Success) {
            str3 = WorkerWrapperKt.TAG;
            Logger.get().info(str3, "Worker result SUCCESS for " + this.workDescription);
            if (this.workSpec.isPeriodic()) {
                return resetPeriodic();
            }
            return setSucceeded(result);
        }
        if (result instanceof ListenableWorker.Result.Retry) {
            str2 = WorkerWrapperKt.TAG;
            Logger.get().info(str2, "Worker result RETRY for " + this.workDescription);
            return reschedule(-256);
        }
        str = WorkerWrapperKt.TAG;
        Logger.get().info(str, "Worker result FAILURE for " + this.workDescription);
        if (this.workSpec.isPeriodic()) {
            return resetPeriodic();
        }
        if (result == null) {
            result = new ListenableWorker.Result.Failure();
        }
        return setFailed(result);
    }

    private final void iterativelyFailWorkAndDependents(String workSpecId) {
        List mutableListOf = CollectionsKt__CollectionsKt.mutableListOf(workSpecId);
        while (!mutableListOf.isEmpty()) {
            String str = (String) AbstractC0590xf7db57e6.removeLast(mutableListOf);
            if (this.workSpecDao.getState(str) != WorkInfo.State.CANCELLED) {
                this.workSpecDao.setState(WorkInfo.State.FAILED, str);
            }
            mutableListOf.addAll(this.dependencyDao.getDependentWorkIds(str));
        }
    }

    public final boolean onWorkFinished(ListenableWorker.Result result) {
        WorkInfo.State state = this.workSpecDao.getState(this.workSpecId);
        this.workDatabase.workProgressDao().delete(this.workSpecId);
        if (state == null) {
            return false;
        }
        if (state == WorkInfo.State.RUNNING) {
            return handleResult(result);
        }
        if (state.isFinished()) {
            return false;
        }
        return reschedule(WorkInfo.STOP_REASON_UNKNOWN);
    }

    private final boolean reschedule(int stopReason) {
        this.workSpecDao.setState(WorkInfo.State.ENQUEUED, this.workSpecId);
        this.workSpecDao.setLastEnqueueTime(this.workSpecId, this.clock.currentTimeMillis());
        this.workSpecDao.resetWorkSpecNextScheduleTimeOverride(this.workSpecId, this.workSpec.getNextScheduleTimeOverrideGeneration());
        this.workSpecDao.markWorkSpecScheduled(this.workSpecId, -1L);
        this.workSpecDao.setStopReason(this.workSpecId, stopReason);
        return true;
    }

    private final boolean resetPeriodic() {
        this.workSpecDao.setLastEnqueueTime(this.workSpecId, this.clock.currentTimeMillis());
        this.workSpecDao.setState(WorkInfo.State.ENQUEUED, this.workSpecId);
        this.workSpecDao.resetWorkSpecRunAttemptCount(this.workSpecId);
        this.workSpecDao.resetWorkSpecNextScheduleTimeOverride(this.workSpecId, this.workSpec.getNextScheduleTimeOverrideGeneration());
        this.workSpecDao.incrementPeriodCount(this.workSpecId);
        this.workSpecDao.markWorkSpecScheduled(this.workSpecId, -1L);
        return false;
    }

    public final boolean resetWorkerStatus(int stopReason) {
        String str;
        String str2;
        WorkInfo.State state = this.workSpecDao.getState(this.workSpecId);
        if (state == null || state.isFinished()) {
            str = WorkerWrapperKt.TAG;
            Logger.get().debug(str, "Status for " + this.workSpecId + " is " + state + " ; not doing any work");
            return false;
        }
        str2 = WorkerWrapperKt.TAG;
        Logger.get().debug(str2, "Status for " + this.workSpecId + " is " + state + "; not doing any work and rescheduling for later execution");
        this.workSpecDao.setState(WorkInfo.State.ENQUEUED, this.workSpecId);
        this.workSpecDao.setStopReason(this.workSpecId, stopReason);
        this.workSpecDao.markWorkSpecScheduled(this.workSpecId, -1L);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object runWorker(Continuation<? super Resolution> continuation) {
        WorkerWrapper$runWorker$1 workerWrapper$runWorker$1;
        int i;
        Data merge;
        String str;
        String str2;
        String str3;
        WorkerWrapper workerWrapper;
        WorkerParameters workerParameters;
        String str4;
        Consumer<WorkerExceptionInfo> workerExecutionExceptionHandler;
        String str5;
        String str6;
        if (continuation instanceof WorkerWrapper$runWorker$1) {
            workerWrapper$runWorker$1 = (WorkerWrapper$runWorker$1) continuation;
            int i2 = workerWrapper$runWorker$1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                workerWrapper$runWorker$1.label = i2 - Integer.MIN_VALUE;
                Object obj = workerWrapper$runWorker$1.result;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = workerWrapper$runWorker$1.label;
                if (i == 0) {
                    if (i == 1) {
                        workerParameters = (WorkerParameters) workerWrapper$runWorker$1.L$1;
                        workerWrapper = (WorkerWrapper) workerWrapper$runWorker$1.L$0;
                        try {
                            ResultKt.throwOnFailure(obj);
                        } catch (CancellationException e) {
                            e = e;
                            str6 = WorkerWrapperKt.TAG;
                            Logger.get().info(str6, AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder(), workerWrapper.workDescription, " was cancelled"), e);
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            str4 = WorkerWrapperKt.TAG;
                            Logger.get().error(str4, AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder(), workerWrapper.workDescription, " failed because it threw an exception/error"), th);
                            workerExecutionExceptionHandler = workerWrapper.configuration.getWorkerExecutionExceptionHandler();
                            if (workerExecutionExceptionHandler != null) {
                            }
                            return new Resolution.Failed(null, 1, null);
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    final boolean isEnabled = this.configuration.getTracer().isEnabled();
                    final String traceTag = this.workSpec.getTraceTag();
                    if (isEnabled && traceTag != null) {
                        this.configuration.getTracer().beginAsyncSection(traceTag, this.workSpec.hashCode());
                    }
                    Boolean shouldExit = (Boolean) this.workDatabase.runInTransaction(new CallableC1309x16e61ab3(this, 0));
                    Intrinsics.checkNotNullExpressionValue(shouldExit, "shouldExit");
                    if (shouldExit.booleanValue()) {
                        return new Resolution.ResetWorkerStatus(0, 1, null);
                    }
                    if (this.workSpec.isPeriodic()) {
                        merge = this.workSpec.input;
                    } else {
                        InputMerger createInputMergerWithDefaultFallback = this.configuration.getInputMergerFactory().createInputMergerWithDefaultFallback(this.workSpec.inputMergerClassName);
                        if (createInputMergerWithDefaultFallback == null) {
                            str = WorkerWrapperKt.TAG;
                            Logger.get().error(str, "Could not create Input Merger " + this.workSpec.inputMergerClassName);
                            return new Resolution.Failed(null, 1, null);
                        }
                        merge = createInputMergerWithDefaultFallback.merge(CollectionsKt___CollectionsKt.plus((Collection) AbstractC0586x968d4673.listOf(this.workSpec.input), (Iterable) this.workSpecDao.getInputsFromPrerequisites(this.workSpecId)));
                    }
                    Data data = merge;
                    UUID fromString = UUID.fromString(this.workSpecId);
                    List<String> list = this.tags;
                    WorkerParameters.RuntimeExtras runtimeExtras = this.runtimeExtras;
                    WorkSpec workSpec = this.workSpec;
                    WorkerParameters workerParameters2 = new WorkerParameters(fromString, data, list, runtimeExtras, workSpec.runAttemptCount, workSpec.getGeneration(), this.configuration.getExecutor(), this.configuration.getWorkerCoroutineContext(), this.workTaskExecutor, this.configuration.getWorkerFactory(), new WorkProgressUpdater(this.workDatabase, this.workTaskExecutor), new WorkForegroundUpdater(this.workDatabase, this.foregroundProcessor, this.workTaskExecutor));
                    final ListenableWorker listenableWorker = this.builderWorker;
                    if (listenableWorker == null) {
                        try {
                            listenableWorker = this.configuration.getWorkerFactory().createWorkerWithDefaultFallback(this.appContext, this.workSpec.workerClassName, workerParameters2);
                        } catch (Throwable th2) {
                            str2 = WorkerWrapperKt.TAG;
                            Logger.get().error(str2, "Could not create Worker " + this.workSpec.workerClassName);
                            Consumer<WorkerExceptionInfo> workerInitializationExceptionHandler = this.configuration.getWorkerInitializationExceptionHandler();
                            if (workerInitializationExceptionHandler != null) {
                                WorkerExceptionInfo workerExceptionInfo = new WorkerExceptionInfo(this.workSpec.workerClassName, workerParameters2, th2);
                                str3 = WorkerWrapperKt.TAG;
                                WorkerExceptionUtilsKt.safeAccept(workerInitializationExceptionHandler, workerExceptionInfo, str3);
                            }
                            return new Resolution.Failed(null, 1, null);
                        }
                    }
                    listenableWorker.setUsed();
                    CoroutineContext.Element element = workerWrapper$runWorker$1.getContext().get(Job.INSTANCE);
                    Intrinsics.checkNotNull(element);
                    Job job = (Job) element;
                    job.invokeOnCompletion(new Function1<Throwable, Unit>() { // from class: androidx.work.impl.WorkerWrapper$runWorker$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ Unit invoke(Throwable th3) {
                            invoke2(th3);
                            return Unit.INSTANCE;
                        }

                        /* renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(Throwable th3) {
                            Configuration configuration;
                            if (th3 instanceof WorkerStoppedException) {
                                ListenableWorker.this.stop(((WorkerStoppedException) th3).getReason());
                            }
                            if (!isEnabled || traceTag == null) {
                                return;
                            }
                            configuration = this.configuration;
                            configuration.getTracer().endAsyncSection(traceTag, this.getWorkSpec().hashCode());
                        }
                    });
                    if (!trySetRunning()) {
                        return new Resolution.ResetWorkerStatus(0, 1, null);
                    }
                    if (job.isCancelled()) {
                        return new Resolution.ResetWorkerStatus(0, 1, null);
                    }
                    ForegroundUpdater foregroundUpdater = workerParameters2.getForegroundUpdater();
                    Intrinsics.checkNotNullExpressionValue(foregroundUpdater, "params.foregroundUpdater");
                    Executor mainThreadExecutor = this.workTaskExecutor.getMainThreadExecutor();
                    Intrinsics.checkNotNullExpressionValue(mainThreadExecutor, "workTaskExecutor.getMainThreadExecutor()");
                    CoroutineDispatcher from = ExecutorsKt.from(mainThreadExecutor);
                    try {
                        WorkerWrapper$runWorker$result$1 workerWrapper$runWorker$result$1 = new WorkerWrapper$runWorker$result$1(this, listenableWorker, foregroundUpdater, null);
                        workerWrapper$runWorker$1.L$0 = this;
                        workerWrapper$runWorker$1.L$1 = workerParameters2;
                        workerWrapper$runWorker$1.label = 1;
                        obj = BuildersKt.withContext(from, workerWrapper$runWorker$result$1, workerWrapper$runWorker$1);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        workerWrapper = this;
                        workerParameters = workerParameters2;
                    } catch (CancellationException e2) {
                        e = e2;
                        workerWrapper = this;
                        str6 = WorkerWrapperKt.TAG;
                        Logger.get().info(str6, AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder(), workerWrapper.workDescription, " was cancelled"), e);
                        throw e;
                    } catch (Throwable th3) {
                        th = th3;
                        workerWrapper = this;
                        workerParameters = workerParameters2;
                        str4 = WorkerWrapperKt.TAG;
                        Logger.get().error(str4, AbstractC0362x4440ab85.m2936xd2bcb0cf(new StringBuilder(), workerWrapper.workDescription, " failed because it threw an exception/error"), th);
                        workerExecutionExceptionHandler = workerWrapper.configuration.getWorkerExecutionExceptionHandler();
                        if (workerExecutionExceptionHandler != null) {
                            WorkerExceptionInfo workerExceptionInfo2 = new WorkerExceptionInfo(workerWrapper.workSpec.workerClassName, workerParameters, th);
                            str5 = WorkerWrapperKt.TAG;
                            WorkerExceptionUtilsKt.safeAccept(workerExecutionExceptionHandler, workerExceptionInfo2, str5);
                        }
                        return new Resolution.Failed(null, 1, null);
                    }
                }
                ListenableWorker.Result result = (ListenableWorker.Result) obj;
                Intrinsics.checkNotNullExpressionValue(result, "result");
                return new Resolution.Finished(result);
            }
        }
        workerWrapper$runWorker$1 = new WorkerWrapper$runWorker$1(this, continuation);
        Object obj2 = workerWrapper$runWorker$1.result;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = workerWrapper$runWorker$1.label;
        if (i == 0) {
        }
        ListenableWorker.Result result2 = (ListenableWorker.Result) obj2;
        Intrinsics.checkNotNullExpressionValue(result2, "result");
        return new Resolution.Finished(result2);
    }

    public static final Boolean runWorker$lambda$1(WorkerWrapper workerWrapper) {
        String str;
        String str2;
        WorkSpec workSpec = workerWrapper.workSpec;
        if (workSpec.state != WorkInfo.State.ENQUEUED) {
            str2 = WorkerWrapperKt.TAG;
            Logger.get().debug(str2, workerWrapper.workSpec.workerClassName + " is not in ENQUEUED state. Nothing more to do");
            return Boolean.TRUE;
        }
        if ((workSpec.isPeriodic() || workerWrapper.workSpec.isBackedOff()) && workerWrapper.clock.currentTimeMillis() < workerWrapper.workSpec.calculateNextRunTime()) {
            Logger logger = Logger.get();
            str = WorkerWrapperKt.TAG;
            logger.debug(str, "Delaying execution for " + workerWrapper.workSpec.workerClassName + " because it is being executed before schedule.");
            return Boolean.TRUE;
        }
        return Boolean.FALSE;
    }

    private final boolean setSucceeded(ListenableWorker.Result result) {
        String str;
        this.workSpecDao.setState(WorkInfo.State.SUCCEEDED, this.workSpecId);
        Intrinsics.checkNotNull(result, "null cannot be cast to non-null type androidx.work.ListenableWorker.Result.Success");
        Data outputData = ((ListenableWorker.Result.Success) result).getOutputData();
        Intrinsics.checkNotNullExpressionValue(outputData, "success.outputData");
        this.workSpecDao.setOutput(this.workSpecId, outputData);
        long currentTimeMillis = this.clock.currentTimeMillis();
        for (String str2 : this.dependencyDao.getDependentWorkIds(this.workSpecId)) {
            if (this.workSpecDao.getState(str2) == WorkInfo.State.BLOCKED && this.dependencyDao.hasCompletedAllPrerequisites(str2)) {
                str = WorkerWrapperKt.TAG;
                Logger.get().info(str, "Setting status to enqueued for " + str2);
                this.workSpecDao.setState(WorkInfo.State.ENQUEUED, str2);
                this.workSpecDao.setLastEnqueueTime(str2, currentTimeMillis);
            }
        }
        return false;
    }

    private final boolean trySetRunning() {
        Object runInTransaction = this.workDatabase.runInTransaction(new CallableC1309x16e61ab3(this, 1));
        Intrinsics.checkNotNullExpressionValue(runInTransaction, "workDatabase.runInTransa…e\n            }\n        )");
        return ((Boolean) runInTransaction).booleanValue();
    }

    public static final Boolean trySetRunning$lambda$11(WorkerWrapper workerWrapper) {
        boolean z;
        if (workerWrapper.workSpecDao.getState(workerWrapper.workSpecId) == WorkInfo.State.ENQUEUED) {
            workerWrapper.workSpecDao.setState(WorkInfo.State.RUNNING, workerWrapper.workSpecId);
            workerWrapper.workSpecDao.incrementWorkSpecRunAttemptCount(workerWrapper.workSpecId);
            workerWrapper.workSpecDao.setStopReason(workerWrapper.workSpecId, -256);
            z = true;
        } else {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    @NotNull
    public final WorkGenerationalId getWorkGenerationalId() {
        return WorkSpecKt.generationalId(this.workSpec);
    }

    @NotNull
    public final WorkSpec getWorkSpec() {
        return this.workSpec;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public final void interrupt(int stopReason) {
        this.workerJob.cancel((CancellationException) new WorkerStoppedException(stopReason));
    }

    @NotNull
    public final ListenableFuture<Boolean> launch() {
        return ListenableFutureKt.launchFuture$default(this.workTaskExecutor.getTaskCoroutineDispatcher().plus(JobKt.Job$default((Job) null, 1, (Object) null)), null, new WorkerWrapper$launch$1(this, null), 2, null);
    }

    @VisibleForTesting
    public final boolean setFailed(@NotNull ListenableWorker.Result result) {
        Intrinsics.checkNotNullParameter(result, "result");
        iterativelyFailWorkAndDependents(this.workSpecId);
        Data outputData = ((ListenableWorker.Result.Failure) result).getOutputData();
        Intrinsics.checkNotNullExpressionValue(outputData, "failure.outputData");
        this.workSpecDao.resetWorkSpecNextScheduleTimeOverride(this.workSpecId, this.workSpec.getNextScheduleTimeOverrideGeneration());
        this.workSpecDao.setOutput(this.workSpecId, outputData);
        return false;
    }
}
