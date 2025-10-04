package kotlinx.coroutines.flow;

import defpackage.AbstractC0892xc141c517;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.InlineMarker;

@Metadata(k = 3, mv = {2, 1, 0}, xi = 176)
/* loaded from: classes3.dex */
public final class FlowKt__EmittersKt$unsafeTransform$1$1<T> implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Function3 f2017xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ FlowCollector f2018x3271d0aa;

    public FlowKt__EmittersKt$unsafeTransform$1$1(Function3<? super FlowCollector<Object>, ? super T, ? super Continuation<? super Unit>, ? extends Object> function3, FlowCollector<Object> flowCollector) {
        this.f2017xfbe0c504 = function3;
        this.f2018x3271d0aa = flowCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(T t, Continuation<? super Unit> continuation) {
        FlowKt__EmittersKt$unsafeTransform$1$1$emit$1 flowKt__EmittersKt$unsafeTransform$1$1$emit$1;
        int i;
        if (continuation instanceof FlowKt__EmittersKt$unsafeTransform$1$1$emit$1) {
            flowKt__EmittersKt$unsafeTransform$1$1$emit$1 = (FlowKt__EmittersKt$unsafeTransform$1$1$emit$1) continuation;
            int i2 = flowKt__EmittersKt$unsafeTransform$1$1$emit$1.f2021x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                flowKt__EmittersKt$unsafeTransform$1$1$emit$1.f2021x1378447b = i2 - Integer.MIN_VALUE;
                Object obj = flowKt__EmittersKt$unsafeTransform$1$1$emit$1.f2019xfbe0c504;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = flowKt__EmittersKt$unsafeTransform$1$1$emit$1.f2021x1378447b;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    flowKt__EmittersKt$unsafeTransform$1$1$emit$1.f2021x1378447b = 1;
                    if (this.f2017xfbe0c504.invoke(this.f2018x3271d0aa, t, flowKt__EmittersKt$unsafeTransform$1$1$emit$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            }
        }
        flowKt__EmittersKt$unsafeTransform$1$1$emit$1 = new FlowKt__EmittersKt$unsafeTransform$1$1$emit$1(this, continuation);
        Object obj2 = flowKt__EmittersKt$unsafeTransform$1$1$emit$1.f2019xfbe0c504;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = flowKt__EmittersKt$unsafeTransform$1$1$emit$1.f2021x1378447b;
        if (i == 0) {
        }
        return Unit.INSTANCE;
    }

    public final Object emit$$forInline(T t, Continuation<? super Unit> continuation) {
        InlineMarker.mark(4);
        new FlowKt__EmittersKt$unsafeTransform$1$1$emit$1(this, continuation);
        InlineMarker.mark(5);
        this.f2017xfbe0c504.invoke(this.f2018x3271d0aa, t, continuation);
        return Unit.INSTANCE;
    }
}
