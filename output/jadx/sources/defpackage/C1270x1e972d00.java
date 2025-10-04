package defpackage;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.ChannelFlowKt;
import kotlinx.coroutines.internal.ThreadContextKt;

/* renamed from: 땯딐뒙듌둔땨땀됩뎠땠됫돠돷돝둣딨돤딸땍딠됨땁됩든돨듰땭듔돝듻땜뒛땐딝뒻땝뒨돛둑듔두듌뒉땸땅돛뎡돸딌듟땨도듸뒹돰뎠땡딎땤땣딞뎹딹듻디듽뒻딄둣뒹땁됩딐땵돝둔뒉땧딁듔돵돤둥뒾뒵땄땫되딜뎨뒨땹딞딟딅뒙돝듻뒀땋둘됫듼땡뎠땧두딀뎽땝땳돨돠둔돴땳뒛됨땧땵됫딸땐딠딎땲땝딅뎽뒬, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1270x1e972d00 implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final CoroutineContext f5687xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Object f5688x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final C1269x4f7893e f5689x1378447b;

    public C1270x1e972d00(FlowCollector flowCollector, CoroutineContext coroutineContext) {
        this.f5687xfbe0c504 = coroutineContext;
        this.f5688x3271d0aa = ThreadContextKt.threadContextElements(coroutineContext);
        this.f5689x1378447b = new C1269x4f7893e(flowCollector, null);
    }

    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        Object withContextUndispatched = ChannelFlowKt.withContextUndispatched(this.f5687xfbe0c504, obj, this.f5688x3271d0aa, this.f5689x1378447b, continuation);
        if (withContextUndispatched == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return withContextUndispatched;
        }
        return Unit.INSTANCE;
    }
}
