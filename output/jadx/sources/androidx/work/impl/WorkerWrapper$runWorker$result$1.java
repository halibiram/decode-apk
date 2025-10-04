package androidx.work.impl;

import android.content.Context;
import androidx.work.ForegroundUpdater;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.WorkForegroundKt;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0892xc141c517;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001*\u00020\u0003H\u008a@"}, d2 = {"<anonymous>", "Landroidx/work/ListenableWorker$Result;", "kotlin.jvm.PlatformType", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.work.impl.WorkerWrapper$runWorker$result$1", f = "WorkerWrapper.kt", i = {}, l = {300, 311}, m = "invokeSuspend", n = {}, s = {})
@SourceDebugExtension({"SMAP\nWorkerWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WorkerWrapper.kt\nandroidx/work/impl/WorkerWrapper$runWorker$result$1\n+ 2 LoggerExt.kt\nandroidx/work/LoggerExtKt\n*L\n1#1,607:1\n19#2:608\n*S KotlinDebug\n*F\n+ 1 WorkerWrapper.kt\nandroidx/work/impl/WorkerWrapper$runWorker$result$1\n*L\n307#1:608\n*E\n"})
/* loaded from: classes.dex */
public final class WorkerWrapper$runWorker$result$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ListenableWorker.Result>, Object> {
    final /* synthetic */ ForegroundUpdater $foregroundUpdater;
    final /* synthetic */ ListenableWorker $worker;
    int label;
    final /* synthetic */ WorkerWrapper this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WorkerWrapper$runWorker$result$1(WorkerWrapper workerWrapper, ListenableWorker listenableWorker, ForegroundUpdater foregroundUpdater, Continuation<? super WorkerWrapper$runWorker$result$1> continuation) {
        super(2, continuation);
        this.this$0 = workerWrapper;
        this.$worker = listenableWorker;
        this.$foregroundUpdater = foregroundUpdater;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new WorkerWrapper$runWorker$result$1(this.this$0, this.$worker, this.$foregroundUpdater, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Context context;
        TaskExecutor taskExecutor;
        String str;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.throwOnFailure(obj);
                    return obj;
                }
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        } else {
            ResultKt.throwOnFailure(obj);
            context = this.this$0.appContext;
            WorkSpec workSpec = this.this$0.getWorkSpec();
            ListenableWorker listenableWorker = this.$worker;
            ForegroundUpdater foregroundUpdater = this.$foregroundUpdater;
            taskExecutor = this.this$0.workTaskExecutor;
            this.label = 1;
            if (WorkForegroundKt.workForeground(context, workSpec, listenableWorker, foregroundUpdater, taskExecutor, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        str = WorkerWrapperKt.TAG;
        WorkerWrapper workerWrapper = this.this$0;
        Logger.get().debug(str, "Starting work for " + workerWrapper.getWorkSpec().workerClassName);
        ListenableFuture<ListenableWorker.Result> startWork = this.$worker.startWork();
        Intrinsics.checkNotNullExpressionValue(startWork, "worker.startWork()");
        ListenableWorker listenableWorker2 = this.$worker;
        this.label = 2;
        obj = WorkerWrapperKt.awaitWithin(startWork, listenableWorker2, this);
        if (obj == coroutine_suspended) {
            return coroutine_suspended;
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ListenableWorker.Result> continuation) {
        return ((WorkerWrapper$runWorker$result$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
