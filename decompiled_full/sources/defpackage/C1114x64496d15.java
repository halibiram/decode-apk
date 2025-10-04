package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.selects.SelectBuilderImpl;
import kotlinx.coroutines.selects.SelectOldKt;

/* renamed from: 땐됴듬땻뒝둔딨돶따듬딄뒘땱들뒘뒾득땹듸땔딨됴땍딸딞뒼딎되듼땦땧땟땯돶딁듬땲땋두뎠뒛땹돳듽뒀땸뎸딐딅땡듸됫땥뎰듼됫땁딌딜돷드딽돠뒾뒉땡땤딀땩둔땜들딸뒹땬돴뎹듟뎹땜드득될된딨듬듽뒛드둣뒤돛되듨뒬뒤돨땟땻뎰딞듨듌득뎬뎡딜둣돷딽딽딄딐땪뒻땄땲딁땡뒙땠든돸땅딜땤뎠듬땟땀, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1114x64496d15 extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public int f5416xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ SelectBuilderImpl f5417x3271d0aa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1114x64496d15(SelectBuilderImpl selectBuilderImpl, Continuation continuation) {
        super(2, continuation);
        this.f5417x3271d0aa = selectBuilderImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C1114x64496d15(this.f5417x3271d0aa, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C1114x64496d15) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        CancellableContinuationImpl cancellableContinuationImpl;
        CancellableContinuationImpl cancellableContinuationImpl2;
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.f5416xfbe0c504;
        SelectBuilderImpl selectBuilderImpl = this.f5417x3271d0aa;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.throwOnFailure(obj);
                } else {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
            } else {
                ResultKt.throwOnFailure(obj);
                this.f5416xfbe0c504 = 1;
                obj = selectBuilderImpl.doSelect(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            }
            cancellableContinuationImpl2 = selectBuilderImpl.f2451x34271fae;
            SelectOldKt.access$resumeUndispatched(cancellableContinuationImpl2, obj);
            return Unit.INSTANCE;
        } catch (Throwable th) {
            cancellableContinuationImpl = selectBuilderImpl.f2451x34271fae;
            SelectOldKt.access$resumeUndispatchedWithException(cancellableContinuationImpl, th);
            return Unit.INSTANCE;
        }
    }
}
