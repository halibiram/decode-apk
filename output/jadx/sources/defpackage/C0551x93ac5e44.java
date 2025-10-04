package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* renamed from: 된땔땥들됫돨될듌땬땍됴듌듰뎬딹둡땔될땩뒝둬듰땅둣뒹뒤뒤뒛땰딅뒾됩듔딐뎽따듼둔될둣돵듬둑뎰땜땵땅딠땋땰땩땤뒻됫땠뒉딠딝딽돰듨땃됴땣땹뎽들뒨딨땍땹딎뒘땟땹땬딜든땮땃딻땟뎨뎠듟둬땃땠뒬뎬뒘땀듬뒵됐드듨땃땮뎨딠땬됐땄뒐땍둘뒾뒤땃돨돵뒘돼돴둣둘땁땟돴딌뎸뎹딀땵됐딐땜돴땩, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0551x93ac5e44 extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public /* synthetic */ Object f4155xfbe0c504;

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.coroutines.Continuation, kotlin.coroutines.jvm.internal.SuspendLambda, 된땔땥들됫돨될듌땬땍됴듌듰뎬딹둡땔될땩뒝둬듰땅둣뒹뒤뒤뒛땰딅뒾됩듔딐뎽따듼둔될둣돵듬둑뎰땜땵땅딠땋땰땩땤뒻됫땠뒉딠딝딽돰듨땃됴땣땹뎽들뒨딨땍땹딎뒘땟땹땬딜든땮땃딻땟뎨뎠듟둬땃땠뒬뎬뒘땀듬뒵됐드듨땃땮뎨딠땬됐땄뒐땍둘뒾뒤땃돨돵뒘돼돴둣둘땁땟돴딌뎸뎹딀땵됐딐땜돴땩] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ?? suspendLambda = new SuspendLambda(2, continuation);
        suspendLambda.f4155xfbe0c504 = obj;
        return suspendLambda;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0551x93ac5e44) create(obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        if (this.f4155xfbe0c504 != null) {
            z = true;
        } else {
            z = false;
        }
        return Boxing.boxBoolean(z);
    }
}
