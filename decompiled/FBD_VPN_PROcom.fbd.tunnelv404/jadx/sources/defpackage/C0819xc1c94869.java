package defpackage;

import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* renamed from: 드딠돵도땜뒙땭듸땔뒹땤둘땐딎됐땸뒵땅딻딃땦뒙딠뒾뒛땔둣됨땯딽뒵땦돠땮땻땵땥든땵땨둑두도뒤땄땫땥딎땯딐딃들땤땪뎡딻땫뎨땻뒘드듟됐딤뎡땐땃땦땦땹뒾딝뒋땻땯듼뒋뎬딜땄뒤땲둔듰딀땭뒬뒹듸딸돼뒋뒙땁됨돝땡돝둔땅땔뒹됴됨뒬뎹뒉돶돨땃듸뎹땮뒀뎨딜뎨땄돵돳딤뎹둔따딻땋든땯땸딃, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0819xc1c94869 implements FlowCollector {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Ref.ObjectRef f4873xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ CoroutineScope f4874x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ CompletableDeferred f4875x1378447b;

    public C0819xc1c94869(Ref.ObjectRef objectRef, CoroutineScope coroutineScope, CompletableDeferred completableDeferred) {
        this.f4873xfbe0c504 = objectRef;
        this.f4874x3271d0aa = coroutineScope;
        this.f4875x1378447b = completableDeferred;
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [T, kotlinx.coroutines.flow.MutableStateFlow] */
    @Override // kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        Ref.ObjectRef objectRef = this.f4873xfbe0c504;
        MutableStateFlow mutableStateFlow = (MutableStateFlow) objectRef.element;
        if (mutableStateFlow != null) {
            mutableStateFlow.setValue(obj);
        } else {
            ?? MutableStateFlow = StateFlowKt.MutableStateFlow(obj);
            Result.Companion companion = Result.INSTANCE;
            this.f4875x1378447b.complete(Result.m1763boximpl(Result.m1764constructorimpl(new C1066xeb0e2234(MutableStateFlow, JobKt.getJob(this.f4874x3271d0aa.getCoroutineContext())))));
            objectRef.element = MutableStateFlow;
        }
        return Unit.INSTANCE;
    }
}
