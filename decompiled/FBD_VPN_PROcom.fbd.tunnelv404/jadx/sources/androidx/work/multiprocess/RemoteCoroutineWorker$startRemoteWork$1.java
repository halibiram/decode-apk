package androidx.work.multiprocess;

import androidx.work.ListenableWorker;
import defpackage.AbstractC0892xc141c517;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"}, d2 = {"<anonymous>", "Landroidx/work/ListenableWorker$Result;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.work.multiprocess.RemoteCoroutineWorker$startRemoteWork$1", f = "RemoteCoroutineWorker.kt", i = {}, l = {57}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class RemoteCoroutineWorker$startRemoteWork$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ListenableWorker.Result>, Object> {
    int label;
    final /* synthetic */ RemoteCoroutineWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RemoteCoroutineWorker$startRemoteWork$1(RemoteCoroutineWorker remoteCoroutineWorker, Continuation<? super RemoteCoroutineWorker$startRemoteWork$1> continuation) {
        super(2, continuation);
        this.this$0 = remoteCoroutineWorker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new RemoteCoroutineWorker$startRemoteWork$1(this.this$0, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
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
            RemoteCoroutineWorker remoteCoroutineWorker = this.this$0;
            this.label = 1;
            obj = remoteCoroutineWorker.doRemoteWork(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ListenableWorker.Result> continuation) {
        return ((RemoteCoroutineWorker$startRemoteWork$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
