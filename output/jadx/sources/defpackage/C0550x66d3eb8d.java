package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* renamed from: 된땃땋둣땹땄뎸됩땠딅됫듸둡딄뎡땦뒛뎸땦땧땄듐뒀듼땵딜듨땅뒝땮뎡딅된땣듔듨든땍땻땅땸드땜땧뒼들땹돛딜땦뒷딀땭뒛땃딁딝딐돛됫딝땟땧딻땯뒐됩들돳듼뎸뒉땹딃뒼돴땐듽듨땭땩돳딞땣딸뒨딜듸딌두돨딜땹딐딁듐뎻뒝뎽뒝땵딹뒙듻뒹돸됫땸둠뒛딌딁딁딄둘듻땻될딽딄뎡땤뎡듸땭듟땰땩듸뎰, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0550x66d3eb8d extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public int f4152xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public /* synthetic */ Object f4153x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ Function2 f4154x1378447b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0550x66d3eb8d(Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.f4154x1378447b = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        C0550x66d3eb8d c0550x66d3eb8d = new C0550x66d3eb8d(this.f4154x1378447b, continuation);
        c0550x66d3eb8d.f4153x3271d0aa = obj;
        return c0550x66d3eb8d;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0550x66d3eb8d) create(obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.f4152xfbe0c504;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            Object obj2 = this.f4153x3271d0aa;
            this.f4152xfbe0c504 = 1;
            obj = this.f4154x1378447b.invoke(obj2, this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Boxing.boxBoolean(!((Boolean) obj).booleanValue());
    }
}
