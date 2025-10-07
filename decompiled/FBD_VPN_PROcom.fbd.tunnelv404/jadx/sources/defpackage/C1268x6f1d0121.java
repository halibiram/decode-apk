package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.selects.SelectOldKt;
import kotlinx.coroutines.selects.UnbiasedSelectBuilderImpl;

/* renamed from: 땯돴된딽땻둠뒘땱듬돤땳둑땄둔땀땠듽땤뒈땧돼돴뎬듸뒨뎸뒬땀돵땄딄뒬땟딽땜딤딃돛됐돰됐뎰뒉땝딨딸딟뎨드땡돵듟땁돳듼딝둥되돝듽돷딎땸딐듻디듽뎽뎨딌땸됩뒐돝딹뎨땨딀딁땔됨땲뒤딠땠돰된뒋된된드딝돤딠둡듰딻둣뒘땜뒋땐딟딄돛뒋딻됫뒬딄돤땁둑뒻딅듟둬딨땋뒾땧됴땧땍뒛땯됫돰땭뒀, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1268x6f1d0121 extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public int f5682xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ UnbiasedSelectBuilderImpl f5683x3271d0aa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1268x6f1d0121(UnbiasedSelectBuilderImpl unbiasedSelectBuilderImpl, Continuation continuation) {
        super(2, continuation);
        this.f5683x3271d0aa = unbiasedSelectBuilderImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C1268x6f1d0121(this.f5683x3271d0aa, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C1268x6f1d0121) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CancellableContinuationImpl cancellableContinuationImpl;
        CancellableContinuationImpl cancellableContinuationImpl2;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.f5682xfbe0c504;
        UnbiasedSelectBuilderImpl unbiasedSelectBuilderImpl = this.f5683x3271d0aa;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                this.f5682xfbe0c504 = 1;
                obj = unbiasedSelectBuilderImpl.doSelect(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            cancellableContinuationImpl2 = unbiasedSelectBuilderImpl.f2482x95f25580;
            SelectOldKt.access$resumeUndispatched(cancellableContinuationImpl2, obj);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            cancellableContinuationImpl = unbiasedSelectBuilderImpl.f2482x95f25580;
            SelectOldKt.access$resumeUndispatchedWithException(cancellableContinuationImpl, th);
            return Unit.INSTANCE;
        }
    }
}
