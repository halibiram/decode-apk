package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.FlowCollector;

/* renamed from: 뒼뎻듸뎠뎡땤돳돼듨땥됨되뒤땔딐땱딤뒘듬돵되둠딌들뒐둥딝땫딐돴됨딤되두돛뒋돴뎠땩돤뎸딞둡딹딄땧땯땅돴딹딄땠뒋따땐듌딠돼따돶둠땍땱땩따돠땬돰땜땪뎸두됨땁뒬돤딅뎡딄둔딄뒈땐둑둘두뒛땤땨될뎹뎻되땣땃딐돸둣뒐딨따딤듼도뒾뒈뒐땐땍땯뒨디뎰됴땣듽땯땐뒉딅딠듸뎹듽돰딹땪듌뒈된, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0775x5eb84ebc implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Ref.BooleanRef f4748xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ FlowCollector f4749x3271d0aa;

    public C0775x5eb84ebc(Ref.BooleanRef booleanRef, FlowCollector flowCollector) {
        this.f4748xfbe0c504 = booleanRef;
        this.f4749x3271d0aa = flowCollector;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // kotlinx.coroutines.flow.FlowCollector
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object emit(Object obj, Continuation continuation) {
        C0774x82634c1a c0774x82634c1a;
        int i;
        if (continuation instanceof C0774x82634c1a) {
            c0774x82634c1a = (C0774x82634c1a) continuation;
            int i2 = c0774x82634c1a.f4747x1378447b;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                c0774x82634c1a.f4747x1378447b = i2 - Integer.MIN_VALUE;
                Object obj2 = c0774x82634c1a.f4745xfbe0c504;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = c0774x82634c1a.f4747x1378447b;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.throwOnFailure(obj2);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj2);
                    this.f4748xfbe0c504.element = false;
                    c0774x82634c1a.f4747x1378447b = 1;
                    if (this.f4749x3271d0aa.emit(obj, c0774x82634c1a) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            }
        }
        c0774x82634c1a = new C0774x82634c1a(this, continuation);
        Object obj22 = c0774x82634c1a.f4745xfbe0c504;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c0774x82634c1a.f4747x1378447b;
        if (i == 0) {
        }
        return Unit.INSTANCE;
    }
}
