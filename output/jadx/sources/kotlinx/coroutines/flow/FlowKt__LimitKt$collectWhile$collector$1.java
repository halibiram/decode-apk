package kotlinx.coroutines.flow;

import defpackage.AbstractC0892xc141c517;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.flow.internal.AbortFlowException;

@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\u0018\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00028\u0000H\u0096@¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"kotlinx/coroutines/flow/FlowKt__LimitKt$collectWhile$collector$1", "Lkotlinx/coroutines/flow/FlowCollector;", "value", "", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 176)
/* loaded from: classes3.dex */
public final class FlowKt__LimitKt$collectWhile$collector$1 implements FlowCollector<Object> {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Function2 f2067xfbe0c504;

    public FlowKt__LimitKt$collectWhile$collector$1(Function2<Object, ? super Continuation<? super Boolean>, ? extends Object> function2) {
        this.f2067xfbe0c504 = function2;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object emit(Object obj, Continuation<? super Unit> continuation) {
        FlowKt__LimitKt$collectWhile$collector$1$emit$1 flowKt__LimitKt$collectWhile$collector$1$emit$1;
        Object obj2;
        int i;
        FlowKt__LimitKt$collectWhile$collector$1 flowKt__LimitKt$collectWhile$collector$1;
        if (continuation instanceof FlowKt__LimitKt$collectWhile$collector$1$emit$1) {
            flowKt__LimitKt$collectWhile$collector$1$emit$1 = (FlowKt__LimitKt$collectWhile$collector$1$emit$1) continuation;
            int i2 = flowKt__LimitKt$collectWhile$collector$1$emit$1.f2071x75d576dc;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flowKt__LimitKt$collectWhile$collector$1$emit$1.f2071x75d576dc = i2 - Integer.MIN_VALUE;
                obj2 = flowKt__LimitKt$collectWhile$collector$1$emit$1.f2069x3271d0aa;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = flowKt__LimitKt$collectWhile$collector$1$emit$1.f2071x75d576dc;
                if (i == 0) {
                    if (i == 1) {
                        flowKt__LimitKt$collectWhile$collector$1 = flowKt__LimitKt$collectWhile$collector$1$emit$1.f2068xfbe0c504;
                        ResultKt.throwOnFailure(obj2);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj2);
                    flowKt__LimitKt$collectWhile$collector$1$emit$1.f2068xfbe0c504 = this;
                    flowKt__LimitKt$collectWhile$collector$1$emit$1.f2071x75d576dc = 1;
                    obj2 = this.f2067xfbe0c504.invoke(obj, flowKt__LimitKt$collectWhile$collector$1$emit$1);
                    if (obj2 == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    flowKt__LimitKt$collectWhile$collector$1 = this;
                }
                if (!((Boolean) obj2).booleanValue()) {
                    return Unit.INSTANCE;
                }
                throw new AbortFlowException(flowKt__LimitKt$collectWhile$collector$1);
            }
        }
        flowKt__LimitKt$collectWhile$collector$1$emit$1 = new FlowKt__LimitKt$collectWhile$collector$1$emit$1(this, continuation);
        obj2 = flowKt__LimitKt$collectWhile$collector$1$emit$1.f2069x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = flowKt__LimitKt$collectWhile$collector$1$emit$1.f2071x75d576dc;
        if (i == 0) {
        }
        if (!((Boolean) obj2).booleanValue()) {
        }
    }

    public Object emit$$forInline(Object obj, Continuation<? super Unit> continuation) {
        InlineMarker.mark(4);
        new FlowKt__LimitKt$collectWhile$collector$1$emit$1(this, continuation);
        InlineMarker.mark(5);
        if (((Boolean) this.f2067xfbe0c504.invoke(obj, continuation)).booleanValue()) {
            return Unit.INSTANCE;
        }
        throw new AbortFlowException(this);
    }
}
