package defpackage;

import coil3.request.ViewTargetRequestManager;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* renamed from: 땱땐되둑땵땤둑될뒐돸돴땟돷땔뒾됐뒤듌뒝뒙딻둥둡돰땳뎬드딻땯땻드돠둡뎹뎹땄둑디땫땵땟뒀돸듼듰땋뒵뎰땅딸두땥땥뒘뒵딌돼디뒙듰됫도뎸될돸뒋돝돝딐뒝듟땳땟뎠뎻딐땵땭듽땅땻든뎨땥딻됫딁땪듌딻뒐딞뒀됩든득뒀땸땐듼딁돤돼됩땅딅됫듽되땫둣둑땦뒋뒾땠뒨디돨땜땰듨뒼딄땀땄뒉땤돰돶, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1292xd188be85 extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ ViewTargetRequestManager f5706xfbe0c504;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1292xd188be85(ViewTargetRequestManager viewTargetRequestManager, Continuation continuation) {
        super(2, continuation);
        this.f5706xfbe0c504 = viewTargetRequestManager;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C1292xd188be85(this.f5706xfbe0c504, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C1292xd188be85) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        this.f5706xfbe0c504.setRequest(null);
        return Unit.INSTANCE;
    }
}
