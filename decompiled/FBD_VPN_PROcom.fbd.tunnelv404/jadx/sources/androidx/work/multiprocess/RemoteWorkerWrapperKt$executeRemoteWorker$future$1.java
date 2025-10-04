package androidx.work.multiprocess;

import android.content.Context;
import androidx.core.util.Consumer;
import androidx.work.Configuration;
import androidx.work.ListenableWorker;
import androidx.work.WorkerExceptionInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkerWrapperKt;
import androidx.work.impl.utils.WorkerExceptionUtilsKt;
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
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Landroidx/work/ListenableWorker$Result;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.work.multiprocess.RemoteWorkerWrapperKt$executeRemoteWorker$future$1", f = "RemoteWorkerWrapper.kt", i = {}, l = {62, 64}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class RemoteWorkerWrapperKt$executeRemoteWorker$future$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ListenableWorker.Result>, Object> {
    final /* synthetic */ Configuration $configuration;
    final /* synthetic */ Context $context;
    final /* synthetic */ TaskExecutor $taskExecutor;
    final /* synthetic */ String $workerClassName;
    final /* synthetic */ WorkerParameters $workerParameters;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteWorkerWrapperKt$executeRemoteWorker$future$1(Configuration configuration, Context context, String str, WorkerParameters workerParameters, TaskExecutor taskExecutor, Continuation<? super RemoteWorkerWrapperKt$executeRemoteWorker$future$1> continuation) {
        super(2, continuation);
        this.$configuration = configuration;
        this.$context = context;
        this.$workerClassName = str;
        this.$workerParameters = workerParameters;
        this.$taskExecutor = taskExecutor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$1$lambda$0(Consumer consumer, String str, WorkerParameters workerParameters, Throwable th) {
        WorkerExceptionInfo workerExceptionInfo = new WorkerExceptionInfo(str, workerParameters, th);
        String TAG = ListenableWorkerImpl.TAG;
        Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
        WorkerExceptionUtilsKt.safeAccept(consumer, workerExceptionInfo, TAG);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RemoteWorkerWrapperKt$executeRemoteWorker$future$1(this.$configuration, this.$context, this.$workerClassName, this.$workerParameters, this.$taskExecutor, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ListenableWorker.Result result;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.throwOnFailure(obj);
                    result = (ListenableWorker.Result) obj;
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                result = (ListenableWorker.Result) obj;
            }
        } else {
            ResultKt.throwOnFailure(obj);
            try {
                ListenableWorker createWorkerWithDefaultFallback = this.$configuration.getWorkerFactory().createWorkerWithDefaultFallback(this.$context, this.$workerClassName, this.$workerParameters);
                if (createWorkerWithDefaultFallback instanceof RemoteListenableWorker) {
                    ListenableFuture<ListenableWorker.Result> startRemoteWork = ((RemoteListenableWorker) createWorkerWithDefaultFallback).startRemoteWork();
                    Intrinsics.checkNotNullExpressionValue(startRemoteWork, "worker.startRemoteWork()");
                    this.label = 1;
                    obj = WorkerWrapperKt.awaitWithin(startRemoteWork, createWorkerWithDefaultFallback, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    result = (ListenableWorker.Result) obj;
                } else {
                    ListenableFuture<ListenableWorker.Result> startWork = createWorkerWithDefaultFallback.startWork();
                    Intrinsics.checkNotNullExpressionValue(startWork, "worker.startWork()");
                    this.label = 2;
                    obj = WorkerWrapperKt.awaitWithin(startWork, createWorkerWithDefaultFallback, this);
                    if (obj == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    result = (ListenableWorker.Result) obj;
                }
            } catch (Throwable th) {
                final Consumer<WorkerExceptionInfo> workerInitializationExceptionHandler = this.$configuration.getWorkerInitializationExceptionHandler();
                if (workerInitializationExceptionHandler != null) {
                    TaskExecutor taskExecutor = this.$taskExecutor;
                    final String str = this.$workerClassName;
                    final WorkerParameters workerParameters = this.$workerParameters;
                    taskExecutor.executeOnTaskThread(new Runnable() { // from class: androidx.work.multiprocess.뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫
                        @Override // java.lang.Runnable
                        public final void run() {
                            RemoteWorkerWrapperKt$executeRemoteWorker$future$1.invokeSuspend$lambda$1$lambda$0(Consumer.this, str, workerParameters, th);
                        }
                    });
                }
                throw th;
            }
        }
        Intrinsics.checkNotNullExpressionValue(result, "when (worker) {\n        …ated worker\n            }");
        return result;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ListenableWorker.Result> continuation) {
        return ((RemoteWorkerWrapperKt$executeRemoteWorker$future$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
