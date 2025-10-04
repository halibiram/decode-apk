package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* renamed from: 뒐됨듸듬뎡뒙듨뎰드돨뒐땬딌딀따땝땩뎡뎡둑땡뒻뒤땁둣됫뒝듼돼됐땝돵땋돳된땬딀둣땹땥듻딅땪땬땅땸돸둥뎡딽뒻땋뎠됐드딟뒋돰뒼뒷듰뎸딠뒵땥땭뒾땠땸뒋듐뒀땔땬됨땍됩딽땭딎땳딎둔뒬딝딐돷돤뒝뒉듟돛둡뒉뒘땸든뒛뎡돴뒵땻돶돰뒾들듌땦뒹땩둘돶뒝뒨땬돤땵됨듰뒘돵딝돤돴땹뎠두돰땭디, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0681x7f263f38 implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ C0682x8dd9c254 f4513xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ Ref.ObjectRef f4514x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ FlowCollector f4515x1378447b;

    public C0681x7f263f38(C0682x8dd9c254 c0682x8dd9c254, Ref.ObjectRef objectRef, FlowCollector flowCollector) {
        this.f4513xfbe0c504 = c0682x8dd9c254;
        this.f4514x3271d0aa = objectRef;
        this.f4515x1378447b = flowCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r2v2, types: [T, java.lang.Object] */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(Object obj, Continuation continuation) {
        C0680x7edea2eb c0680x7edea2eb;
        int i;
        if (continuation instanceof C0680x7edea2eb) {
            c0680x7edea2eb = (C0680x7edea2eb) continuation;
            int i2 = c0680x7edea2eb.f4512x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0680x7edea2eb.f4512x1378447b = i2 - Integer.MIN_VALUE;
                Object obj2 = c0680x7edea2eb.f4510xfbe0c504;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0680x7edea2eb.f4512x1378447b;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.throwOnFailure(obj2);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj2);
                    C0682x8dd9c254 c0682x8dd9c254 = this.f4513xfbe0c504;
                    ?? invoke = c0682x8dd9c254.f4517x3271d0aa.invoke(obj);
                    Ref.ObjectRef objectRef = this.f4514x3271d0aa;
                    T t = objectRef.element;
                    if (t != NullSurrogateKt.NULL && ((Boolean) c0682x8dd9c254.f4518x1378447b.invoke(t, invoke)).booleanValue()) {
                        return Unit.INSTANCE;
                    }
                    objectRef.element = invoke;
                    c0680x7edea2eb.f4512x1378447b = 1;
                    if (this.f4515x1378447b.emit(obj, c0680x7edea2eb) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            }
        }
        c0680x7edea2eb = new C0680x7edea2eb(this, continuation);
        Object obj22 = c0680x7edea2eb.f4510xfbe0c504;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0680x7edea2eb.f4512x1378447b;
        if (i == 0) {
        }
        return Unit.INSTANCE;
    }
}
