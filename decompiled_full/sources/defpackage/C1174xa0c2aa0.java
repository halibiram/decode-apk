package defpackage;

import kotlin.KotlinNothingValueException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.StateFlow;

/* renamed from: 땣디딽듻됩딻딜됨돤땬땬딅둘딠뒾뒘딞뒵딁듰돸듐뒻땻뎰딞딻뒋뎬뎰딝둘땱뎬땱뒛돳뒻돨돸둥땳뎸딌뒻돤땡뎠돝들도돰땁듽듟뒼돨딄뒷뒋땱둘땰둥뎽둠도된둡뒀듨듽듐뒾딄땨딄듻돼득둡땄땸돳뎸딅뒤돳땫될딠땃뒹둘돝듐뎸돶뎨딻딽딠돤돰땳돶땝땃땤딤뒻뒤뒾둠뒙뒐딽둠딨딀땱딄듰뒤땄뎹뎽딅딄땳, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1174xa0c2aa0 extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public int f5546xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public /* synthetic */ Object f5547x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ StateFlow f5548x1378447b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1174xa0c2aa0(StateFlow stateFlow, Continuation continuation) {
        super(2, continuation);
        this.f5548x1378447b = stateFlow;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        C1174xa0c2aa0 c1174xa0c2aa0 = new C1174xa0c2aa0(this.f5548x1378447b, continuation);
        c1174xa0c2aa0.f5547x3271d0aa = obj;
        return c1174xa0c2aa0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C1174xa0c2aa0) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.f5546xfbe0c504;
        if (i != 0) {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        } else {
            ResultKt.throwOnFailure(obj);
            C1173xf57fc8d9 c1173xf57fc8d9 = new C1173xf57fc8d9(new Ref.BooleanRef(), (FlowCollector) this.f5547x3271d0aa);
            this.f5546xfbe0c504 = 1;
            if (this.f5548x1378447b.collect(c1173xf57fc8d9, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        throw new KotlinNothingValueException();
    }
}
