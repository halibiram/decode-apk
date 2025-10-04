package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.FlowCollector;

/* renamed from: 뒾들뎸됴됨딨딄따땁땝땁돴뒻됴듨뒛땰돠딄돠둥둔딃딄따돰땻딐딄뒛듸돷돤됨뎬땅땔뒋딀들땯땣땹뎽땯땪돴뎻딎땻땸도땭땦뒘뎡뒻딞뒈딠딝땯땮둔됐됐뎻뎻듟둔둘딁땦듟딐뎡돶돶득뒬되둡땁땔땰땐둬돳땜땍뎨뒨둠돵뎬딃딠땭땰뒨돠땱뒉된둬뒬돴득딅땩듸땅듸돛둘딞뒨돨뒀땭땣땸딝듰둔둑돤딅땮듽, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0784x65b05495 implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Ref.IntRef f4770xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ int f4771x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ FlowCollector f4772x1378447b;

    public C0784x65b05495(Ref.IntRef intRef, int i, FlowCollector flowCollector) {
        this.f4770xfbe0c504 = intRef;
        this.f4771x3271d0aa = i;
        this.f4772x1378447b = flowCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(Object obj, Continuation continuation) {
        C0783x99451246 c0783x99451246;
        int i;
        if (continuation instanceof C0783x99451246) {
            c0783x99451246 = (C0783x99451246) continuation;
            int i2 = c0783x99451246.f4769x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0783x99451246.f4769x1378447b = i2 - Integer.MIN_VALUE;
                Object obj2 = c0783x99451246.f4767xfbe0c504;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0783x99451246.f4769x1378447b;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.throwOnFailure(obj2);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj2);
                    Ref.IntRef intRef = this.f4770xfbe0c504;
                    int i3 = intRef.element;
                    if (i3 >= this.f4771x3271d0aa) {
                        c0783x99451246.f4769x1378447b = 1;
                        if (this.f4772x1378447b.emit(obj, c0783x99451246) == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                    } else {
                        intRef.element = i3 + 1;
                        return Unit.INSTANCE;
                    }
                }
                return Unit.INSTANCE;
            }
        }
        c0783x99451246 = new C0783x99451246(this, continuation);
        Object obj22 = c0783x99451246.f4767xfbe0c504;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0783x99451246.f4769x1378447b;
        if (i == 0) {
        }
        return Unit.INSTANCE;
    }
}
