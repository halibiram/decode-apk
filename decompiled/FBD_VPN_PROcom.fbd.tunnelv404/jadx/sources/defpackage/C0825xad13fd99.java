package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.FlowCollector;

/* renamed from: 듟들딻땋뎹딤듼뎰땹딽뎬땮두딎딅뎨땭딠딤땰돶땨딽땄땫둣뒵땃뒋땭뒘딞땜뎬뎰뎨딅듨딻됩듽듐딎딜뒻땧돳됫딟돨뎸땥딌땍둘땃땱둡땦뎬땹땟뒙든뎠뒼뒐득땱땥딄돼듟땟땦둥땃드땸돠든뒼되땤땵돨듬될둔땻땳땩땪디땹돵딀딽뒘땯땣돛둘둡뒼땦딃뒀돝땯돝땥땫둔뒘뎡땫될뒈돤땹뒐뒛뒝돤돳뒤돼듌뎡, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0825xad13fd99 implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Ref.ObjectRef f4894xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Function3 f4895x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ FlowCollector f4896x1378447b;

    public C0825xad13fd99(Ref.ObjectRef objectRef, Function3 function3, FlowCollector flowCollector) {
        this.f4894xfbe0c504 = objectRef;
        this.f4895x3271d0aa = function3;
        this.f4896x1378447b = flowCollector;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(Object obj, Continuation continuation) {
        C0824x588c0e74 c0824x588c0e74;
        Object coroutine_suspended;
        int i;
        C0825xad13fd99 c0825xad13fd99;
        T t;
        Ref.ObjectRef objectRef;
        FlowCollector flowCollector;
        T t2;
        if (continuation instanceof C0824x588c0e74) {
            c0824x588c0e74 = (C0824x588c0e74) continuation;
            int i2 = c0824x588c0e74.f4893x9738a56c;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0824x588c0e74.f4893x9738a56c = i2 - Integer.MIN_VALUE;
                Object obj2 = c0824x588c0e74.f4891x1378447b;
                coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0824x588c0e74.f4893x9738a56c;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            ResultKt.throwOnFailure(obj2);
                            return Unit.INSTANCE;
                        }
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    objectRef = c0824x588c0e74.f4890x3271d0aa;
                    c0825xad13fd99 = c0824x588c0e74.f4889xfbe0c504;
                    ResultKt.throwOnFailure(obj2);
                    t = obj2;
                } else {
                    ResultKt.throwOnFailure(obj2);
                    Ref.ObjectRef objectRef2 = this.f4894xfbe0c504;
                    T t3 = objectRef2.element;
                    c0824x588c0e74.f4889xfbe0c504 = this;
                    c0824x588c0e74.f4890x3271d0aa = objectRef2;
                    c0824x588c0e74.f4893x9738a56c = 1;
                    Object invoke = this.f4895x3271d0aa.invoke(t3, obj, c0824x588c0e74);
                    if (invoke == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    c0825xad13fd99 = this;
                    t = invoke;
                    objectRef = objectRef2;
                }
                objectRef.element = t;
                flowCollector = c0825xad13fd99.f4896x1378447b;
                t2 = c0825xad13fd99.f4894xfbe0c504.element;
                c0824x588c0e74.f4889xfbe0c504 = null;
                c0824x588c0e74.f4890x3271d0aa = null;
                c0824x588c0e74.f4893x9738a56c = 2;
                if (flowCollector.emit(t2, c0824x588c0e74) == coroutine_suspended) {
                    return coroutine_suspended;
                }
                return Unit.INSTANCE;
            }
        }
        c0824x588c0e74 = new C0824x588c0e74(this, continuation);
        Object obj22 = c0824x588c0e74.f4891x1378447b;
        coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0824x588c0e74.f4893x9738a56c;
        if (i == 0) {
        }
        objectRef.element = t;
        flowCollector = c0825xad13fd99.f4896x1378447b;
        t2 = c0825xad13fd99.f4894xfbe0c504.element;
        c0824x588c0e74.f4889xfbe0c504 = null;
        c0824x588c0e74.f4890x3271d0aa = null;
        c0824x588c0e74.f4893x9738a56c = 2;
        if (flowCollector.emit(t2, c0824x588c0e74) == coroutine_suspended) {
        }
        return Unit.INSTANCE;
    }
}
