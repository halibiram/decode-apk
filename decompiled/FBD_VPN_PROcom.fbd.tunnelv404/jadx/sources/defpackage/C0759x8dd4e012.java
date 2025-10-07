package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.Symbol;

/* renamed from: 뒷듨뒈땍땪딅둘땦딨땔둡땝땻땹땡뎽땔뎽뒉둘둘듸땅땥땃딃들뒙딟땅됩딜딞땐듼땰듔됐뎡땡둔두둣딸둑드딝듨돷됩땨땋땵땲땰둣뒐땝둡뎠듨따딄딻땍땲땪딠땣딌뒤땲땮돨들들뒐땅땮돨득딄딐돛듐땩둑두땳듟될땪딅딃뒤땝땅돨땫둣땟땔뒵땥둡땝듌땭땻땲뒻뎬땐된득딤둥땯돤돸땵뎽돶땃둬땄듌드듐뎽, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0759x8dd4e012 extends SuspendLambda implements Function1 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public int f4689xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ FlowCollector f4690x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Ref.ObjectRef f4691x1378447b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0759x8dd4e012(Continuation continuation, Ref.ObjectRef objectRef, FlowCollector flowCollector) {
        super(1, continuation);
        this.f4690x3271d0aa = flowCollector;
        this.f4691x1378447b = objectRef;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new C0759x8dd4e012(continuation, this.f4691x1378447b, this.f4690x3271d0aa);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        return ((C0759x8dd4e012) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.f4689xfbe0c504;
        Ref.ObjectRef objectRef = this.f4691x1378447b;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            Symbol symbol = NullSurrogateKt.NULL;
            Object obj2 = objectRef.element;
            if (obj2 == symbol) {
                obj2 = null;
            }
            this.f4689xfbe0c504 = 1;
            if (this.f4690x3271d0aa.emit(obj2, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        objectRef.element = null;
        return Unit.INSTANCE;
    }
}
