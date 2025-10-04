package defpackage;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;

/* renamed from: 뒐둔딎땧땩둠뒬딝득득둣뎨듐딅땨뒉땥땤둔돳땤땮뒉듌뒛뎨듼땩딜뒛뒤땱됫땻됴땻득드땟뒐듽딁뒷땸듔땦땀듸땲딹땣둘뒨듬돶둑딹돷딤돛땤돤땍된뒋딜딁땐듼돼뒨뒋됴듨땱땐딤뎻땧딤돠뎸듼돸딨딎돷땠땔땐뒋둔땪디득둑듨땱된든땰딹듰뒻딃뎨둠돶둥돛둬들땫딤뒘딞듔땬땠땮뒈땃땬뒻따딸땨뎡듽딁, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0682x8dd9c254 implements Flow {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Flow f4516xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Function1 f4517x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Function2 f4518x1378447b;

    public C0682x8dd9c254(Flow flow, Function1 function1, Function2 function2) {
        this.f4516xfbe0c504 = flow;
        this.f4517x3271d0aa = function1;
        this.f4518x1378447b = function2;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [kotlinx.coroutines.internal.Symbol, T] */
    @Override // kotlinx.coroutines.flow.Flow
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = NullSurrogateKt.NULL;
        Object collect = this.f4516xfbe0c504.collect(new C0681x7f263f38(this, objectRef, flowCollector), continuation);
        if (collect == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return collect;
        }
        return Unit.INSTANCE;
    }
}
