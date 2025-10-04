package androidx.work.multiprocess;

import android.content.ComponentName;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkerWrapperKt;
import androidx.work.multiprocess.parcelable.ParcelConverters;
import androidx.work.multiprocess.parcelable.ParcelableRemoteWorkRequest;
import androidx.work.multiprocess.parcelable.ParcelableResult;
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
@DebugMetadata(c = "androidx.work.multiprocess.RemoteListenableDelegatingWorker$startWork$1", f = "RemoteListenableDelegatingWorker.kt", i = {}, l = {76}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class RemoteListenableDelegatingWorker$startWork$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ListenableWorker.Result>, Object> {
    int label;
    final /* synthetic */ RemoteListenableDelegatingWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteListenableDelegatingWorker$startWork$1(RemoteListenableDelegatingWorker remoteListenableDelegatingWorker, Continuation<? super RemoteListenableDelegatingWorker$startWork$1> continuation) {
        super(2, continuation);
        this.this$0 = remoteListenableDelegatingWorker;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$3(String str, RemoteListenableDelegatingWorker remoteListenableDelegatingWorker, IListenableWorkerImpl iListenableWorkerImpl, IWorkManagerImplCallback iWorkManagerImplCallback) {
        WorkerParameters workerParameters;
        workerParameters = remoteListenableDelegatingWorker.workerParameters;
        byte[] marshall = ParcelConverters.marshall(new ParcelableRemoteWorkRequest(str, workerParameters));
        Intrinsics.checkNotNullExpressionValue(marshall, "marshall(remoteWorkRequest)");
        iListenableWorkerImpl.startWork(marshall, iWorkManagerImplCallback);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RemoteListenableDelegatingWorker$startWork$1(this.this$0, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        ComponentName componentName;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            String string = this.this$0.getInputData().getString("androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_PACKAGE_NAME");
            String string2 = this.this$0.getInputData().getString("androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME");
            final String string3 = this.this$0.getInputData().getString("androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME");
            if (string != null) {
                if (string2 != null) {
                    if (string3 != null) {
                        this.this$0.componentName = new ComponentName(string, string2);
                        ListenableWorkerImplClient client = this.this$0.getClient();
                        componentName = this.this$0.componentName;
                        Intrinsics.checkNotNull(componentName);
                        final RemoteListenableDelegatingWorker remoteListenableDelegatingWorker = this.this$0;
                        ListenableFuture<byte[]> execute = client.execute(componentName, new RemoteDispatcher() { // from class: androidx.work.multiprocess.뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸
                            @Override // androidx.work.multiprocess.RemoteDispatcher
                            public final void execute(Object obj2, IWorkManagerImplCallback iWorkManagerImplCallback) {
                                RemoteListenableDelegatingWorker$startWork$1.invokeSuspend$lambda$3(string3, remoteListenableDelegatingWorker, (IListenableWorkerImpl) obj2, iWorkManagerImplCallback);
                            }
                        });
                        Intrinsics.checkNotNullExpressionValue(execute, "client\n                 …ck)\n                    }");
                        RemoteListenableDelegatingWorker remoteListenableDelegatingWorker2 = this.this$0;
                        this.label = 1;
                        obj = WorkerWrapperKt.awaitWithin(execute, remoteListenableDelegatingWorker2, this);
                        if (obj == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        throw new IllegalArgumentException("Need to specify a class name for the RemoteListenableWorker to delegate to.");
                    }
                } else {
                    throw new IllegalArgumentException("Need to specify a class name for the Remote Service.");
                }
            } else {
                throw new IllegalArgumentException("Need to specify a package name for the Remote Service.");
            }
        }
        Object unmarshall = ParcelConverters.unmarshall((byte[]) obj, ParcelableResult.CREATOR);
        Intrinsics.checkNotNullExpressionValue(unmarshall, "unmarshall(response, ParcelableResult.CREATOR)");
        Logger.get().debug("RemoteListenableDelegatingWorker", "Cleaning up");
        this.this$0.getClient().unbindService();
        ListenableWorker.Result result = ((ParcelableResult) unmarshall).getResult();
        Intrinsics.checkNotNullExpressionValue(result, "parcelableResult.result");
        return result;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ListenableWorker.Result> continuation) {
        return ((RemoteListenableDelegatingWorker$startWork$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
