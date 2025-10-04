package androidx.work.impl.workers;

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
@DebugMetadata(c = "androidx.work.impl.workers.ConstraintTrackingWorker$doWork$2", f = "ConstraintTrackingWorker.kt", i = {}, l = {58}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class ConstraintTrackingWorker$doWork$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ListenableWorker.Result>, Object> {
    int label;
    final /* synthetic */ ConstraintTrackingWorker this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintTrackingWorker$doWork$2(ConstraintTrackingWorker constraintTrackingWorker, Continuation<? super ConstraintTrackingWorker$doWork$2> continuation) {
        super(2, continuation);
        this.this$0 = constraintTrackingWorker;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ConstraintTrackingWorker$doWork$2(this.this$0, continuation);
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
            ConstraintTrackingWorker constraintTrackingWorker = this.this$0;
            this.label = 1;
            obj = constraintTrackingWorker.setupAndRunConstraintTrackingWork(this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return obj;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super ListenableWorker.Result> continuation) {
        return ((ConstraintTrackingWorker$doWork$2) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }
}
