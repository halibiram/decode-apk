package defpackage;

import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt__ReduceKt$fold$2;

/* renamed from: 드됩딽도땪돤뒀돛들디땤된뒤땭되딝뎨딄뒼딐뒵땯땮둘됨땱땵땄돵딜든두딞뎰돼뒬듐땨뎬뎬둥땍땐두땩땜땹땫돰뎽딄땪뒀뒹땍딐땫됩땲둡딨뒵들듐됩돰뒾드됩땡땻땤뎽뒷뒘둔딞둠돰뒝듨땲땔뒷땻듟될땀뒋딌듌돛땦듻드뎡땥됨딐뒨뒛뒘뎹듐둔딽돝듸둡딄듨딨땣뒐돴돨돷돼땬듼듬돳됨듻듰뒵듽땟돵됫, reason: contains not printable characters */
/* loaded from: classes3.dex */
public abstract /* synthetic */ class AbstractC0816x552ab527 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object m3354xfbe0c504(Flow flow, Object obj, Function3 function3, Continuation continuation) {
        C0805xce03f11a c0805xce03f11a;
        int i;
        Ref.ObjectRef objectRef;
        if (continuation instanceof C0805xce03f11a) {
            C0805xce03f11a c0805xce03f11a2 = (C0805xce03f11a) continuation;
            int i2 = c0805xce03f11a2.f4841x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0805xce03f11a2.f4841x1378447b = i2 - Integer.MIN_VALUE;
                c0805xce03f11a = c0805xce03f11a2;
                Object obj2 = c0805xce03f11a.f4840x3271d0aa;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0805xce03f11a.f4841x1378447b;
                if (i == 0) {
                    if (i == 1) {
                        objectRef = c0805xce03f11a.f4839xfbe0c504;
                        ResultKt.throwOnFailure(obj2);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj2);
                    Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                    objectRef2.element = obj;
                    FlowKt__ReduceKt$fold$2 flowKt__ReduceKt$fold$2 = new FlowKt__ReduceKt$fold$2(objectRef2, function3);
                    c0805xce03f11a.f4839xfbe0c504 = objectRef2;
                    c0805xce03f11a.f4841x1378447b = 1;
                    if (flow.collect(flowKt__ReduceKt$fold$2, c0805xce03f11a) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    objectRef = objectRef2;
                }
                return objectRef.element;
            }
        }
        c0805xce03f11a = new ContinuationImpl(continuation);
        Object obj22 = c0805xce03f11a.f4840x3271d0aa;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0805xce03f11a.f4841x1378447b;
        if (i == 0) {
        }
        return objectRef.element;
    }
}
