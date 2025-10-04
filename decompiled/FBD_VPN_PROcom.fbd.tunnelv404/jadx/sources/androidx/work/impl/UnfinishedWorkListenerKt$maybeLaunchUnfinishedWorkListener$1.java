package androidx.work.impl;

import androidx.work.Logger;
import defpackage.AbstractC0892xc141c517;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.FlowCollector;

@Metadata(d1 = {"\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\t\u0010\u0000\u001a\u00020\u0001*\b\u0012\u0004\u0012\u00020\u00010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u008a@"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/flow/FlowCollector;", "throwable", "", "attempt", ""}, k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.work.impl.UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1", f = "UnfinishedWorkListener.kt", i = {}, l = {59}, m = "invokeSuspend", n = {}, s = {})
/* loaded from: classes.dex */
public final class UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1 extends SuspendLambda implements Function4<FlowCollector<? super Boolean>, Throwable, Long, Continuation<? super Boolean>, Object> {
    /* synthetic */ long J$0;
    /* synthetic */ Object L$0;
    int label;

    public UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1(Continuation<? super UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1> continuation) {
        super(4, continuation);
    }

    @Override // kotlin.jvm.functions.Function4
    public /* bridge */ /* synthetic */ Object invoke(FlowCollector<? super Boolean> flowCollector, Throwable th, Long l, Continuation<? super Boolean> continuation) {
        return invoke(flowCollector, th, l.longValue(), continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String str;
        long j;
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
            Throwable th = (Throwable) this.L$0;
            long j2 = this.J$0;
            Logger logger = Logger.get();
            str = UnfinishedWorkListenerKt.TAG;
            logger.error(str, "Cannot check for unfinished work", th);
            j = UnfinishedWorkListenerKt.MAX_DELAY_MS;
            long min = Math.min(j2 * 30000, j);
            this.label = 1;
            if (DelayKt.delay(min, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Boxing.boxBoolean(true);
    }

    public final Object invoke(FlowCollector<? super Boolean> flowCollector, Throwable th, long j, Continuation<? super Boolean> continuation) {
        UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1 unfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1 = new UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1(continuation);
        unfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1.L$0 = th;
        unfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1.J$0 = j;
        return unfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1.invokeSuspend(Unit.INSTANCE);
    }
}
