package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* renamed from: 됐땬돳땩땔땪딐둥땪둬뒈뒹땨뒬딎뒼뒝땝뎸땃뒀땻땩돼돵땸뎸땝땡된땵듐듸땪뎸뒤뒛둡돷됩뒻땜딐땮돤딐딟뒷뒛뎨땹땵딐땡땝딃땧땲딌듻뒵뎽돴딠땝뒘됴뎡돴땤됴땸딹땪뎡뎸땬든딝뎬됴둣땹뒼됨뒨딀땵땧둣돠뒈듔될됩땮뒤든됴듟땦됩됩둑뎹딅뒨땠뒹돝땟땜딜뒀딀둣땪됫딝돳돼땀됨땲뎠둥뒉돸됴듽, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0542x251cf863 extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public /* synthetic */ Object f4107xfbe0c504;

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.coroutines.Continuation, kotlin.coroutines.jvm.internal.SuspendLambda, 됐땬돳땩땔땪딐둥땪둬뒈뒹땨뒬딎뒼뒝땝뎸땃뒀땻땩돼돵땸뎸땝땡된땵듐듸땪뎸뒤뒛둡돷됩뒻땜딐땮돤딐딟뒷뒛뎨땹땵딐땡땝딃땧땲딌듻뒵뎽돴딠땝뒘됴뎡돴땤됴땸딹땪뎡뎸땬든딝뎬됴둣땹뒼됨뒨딀땵땧둣돠뒈듔될됩땮뒤든됴듟땦됩됩둑뎹딅뒨땠뒹돝땟땜딜뒀딀둣땪됫딝돳돼땀됨땲뎠둥뒉돸됴듽] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ?? suspendLambda = new SuspendLambda(2, continuation);
        suspendLambda.f4107xfbe0c504 = obj;
        return suspendLambda;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0542x251cf863) create(obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        return this.f4107xfbe0c504;
    }
}
