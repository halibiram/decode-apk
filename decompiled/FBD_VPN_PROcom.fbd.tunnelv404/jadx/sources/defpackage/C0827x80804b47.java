package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* renamed from: 듟딝돰땭땲돛듬딤땟듽땮땵땨땳둔땟따됐딌땧딜땪딟돨땹딠듸듼되땯딟땨돨뎹땄땪디돛땬듸땪딀딝듽뎬땱돠땦드딜됨뎹딎땧땣돼뒷되돴땵땱둡땁딽땤땃땩딃딽딽땯뎡뒉뒛땫땸둣뒀딤뒵땸땪딄뎰뒵딜땫땭돛듽듼땝뒋땵딸뒋땫땧땣땧뒵돨둠뎽돶둬땪땡따듽돰두듽땫딐딎뎸들돸뒘딨딌듰딞딎땜둠딞뒝뒵, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0827x80804b47 implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Ref.ObjectRef f4902xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Function3 f4903x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ FlowCollector f4904x1378447b;

    public C0827x80804b47(Ref.ObjectRef objectRef, Function3 function3, FlowCollector flowCollector) {
        this.f4902xfbe0c504 = objectRef;
        this.f4903x3271d0aa = function3;
        this.f4904x1378447b = flowCollector;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0074 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(Object obj, Continuation continuation) {
        C0826xae886a72 c0826xae886a72;
        Object coroutine_suspended;
        int i;
        Ref.ObjectRef objectRef;
        C0827x80804b47 c0827x80804b47;
        Ref.ObjectRef objectRef2;
        T t;
        FlowCollector flowCollector;
        T t2;
        if (continuation instanceof C0826xae886a72) {
            c0826xae886a72 = (C0826xae886a72) continuation;
            int i2 = c0826xae886a72.f4901x9738a56c;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0826xae886a72.f4901x9738a56c = i2 - Integer.MIN_VALUE;
                Object obj2 = c0826xae886a72.f4899x1378447b;
                coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0826xae886a72.f4901x9738a56c;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            ResultKt.throwOnFailure(obj2);
                            return Unit.INSTANCE;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    objectRef2 = c0826xae886a72.f4898x3271d0aa;
                    c0827x80804b47 = c0826xae886a72.f4897xfbe0c504;
                    ResultKt.throwOnFailure(obj2);
                } else {
                    ResultKt.throwOnFailure(obj2);
                    objectRef = this.f4902xfbe0c504;
                    T t3 = objectRef.element;
                    if (t3 == NullSurrogateKt.NULL) {
                        c0827x80804b47 = this;
                        t = obj;
                        objectRef.element = t;
                        flowCollector = c0827x80804b47.f4904x1378447b;
                        t2 = c0827x80804b47.f4902xfbe0c504.element;
                        c0826xae886a72.f4897xfbe0c504 = null;
                        c0826xae886a72.f4898x3271d0aa = null;
                        c0826xae886a72.f4901x9738a56c = 2;
                        if (flowCollector.emit(t2, c0826xae886a72) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        return Unit.INSTANCE;
                    }
                    c0826xae886a72.f4897xfbe0c504 = this;
                    c0826xae886a72.f4898x3271d0aa = objectRef;
                    c0826xae886a72.f4901x9738a56c = 1;
                    Object invoke = this.f4903x3271d0aa.invoke(t3, obj, c0826xae886a72);
                    if (invoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    c0827x80804b47 = this;
                    obj2 = invoke;
                    objectRef2 = objectRef;
                }
                Object obj3 = obj2;
                objectRef = objectRef2;
                t = obj3;
                objectRef.element = t;
                flowCollector = c0827x80804b47.f4904x1378447b;
                t2 = c0827x80804b47.f4902xfbe0c504.element;
                c0826xae886a72.f4897xfbe0c504 = null;
                c0826xae886a72.f4898x3271d0aa = null;
                c0826xae886a72.f4901x9738a56c = 2;
                if (flowCollector.emit(t2, c0826xae886a72) == coroutine_suspended) {
                }
                return Unit.INSTANCE;
            }
        }
        c0826xae886a72 = new C0826xae886a72(this, continuation);
        Object obj22 = c0826xae886a72.f4899x1378447b;
        coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0826xae886a72.f4901x9738a56c;
        if (i == 0) {
        }
        Object obj32 = obj22;
        objectRef = objectRef2;
        t = obj32;
        objectRef.element = t;
        flowCollector = c0827x80804b47.f4904x1378447b;
        t2 = c0827x80804b47.f4902xfbe0c504.element;
        c0826xae886a72.f4897xfbe0c504 = null;
        c0826xae886a72.f4898x3271d0aa = null;
        c0826xae886a72.f4901x9738a56c = 2;
        if (flowCollector.emit(t2, c0826xae886a72) == coroutine_suspended) {
        }
        return Unit.INSTANCE;
    }
}
