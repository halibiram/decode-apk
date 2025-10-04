package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.SharingCommand;

/* renamed from: 땣땠뎹뎹든뒷뒉돨딻딀딽뎨딸딅뒤돴땣따딐돶뒉들드돵둥듟땧둘땤듌돛뒛땬뒾뒋듰듻땭될땃땁딎듨뒋돶딸듨듻땰듻듼땹됴땃딁돳딠뒙땨둘뒻땹땰뎠들딠땄땬딃땔땫땝듟땮듼뒾돠둥듸뒈뒵땦딃땃뎸딅듨딠땋땲땟뒻듨돸딝따듐돤뎡둡땭땭돷뎬딐됨뒐뒘돼딐둠돼뎠땯됐딃딽딞땀딅땭둣뒛땯땳땔땅듻뒘돷, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1176x28a1eb75 extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public /* synthetic */ Object f5553xfbe0c504;

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.coroutines.Continuation, 땣땠뎹뎹든뒷뒉돨딻딀딽뎨딸딅뒤돴땣따딐돶뒉들드돵둥듟땧둘땤듌돛뒛땬뒾뒋듰듻땭될땃땁딎듨뒋돶딸듨듻땰듻듼땹됴땃딁돳딠뒙땨둘뒻땹땰뎠들딠땄땬딃땔땫땝듟땮듼뒾돠둥듸뒈뒵땦딃땃뎸딅듨딠땋땲땟뒻듨돸딝따듐돤뎡둡땭땭돷뎬딐됨뒐뒘돼딐둠돼뎠땯됐딃딽딞땀딅땭둣뒛땯땳땔땅듻뒘돷, kotlin.coroutines.jvm.internal.SuspendLambda] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ?? suspendLambda = new SuspendLambda(2, continuation);
        suspendLambda.f5553xfbe0c504 = obj;
        return suspendLambda;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C1176x28a1eb75) create((SharingCommand) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        if (((SharingCommand) this.f5553xfbe0c504) != SharingCommand.START) {
            z = true;
        } else {
            z = false;
        }
        return Boxing.boxBoolean(z);
    }
}
