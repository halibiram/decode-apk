package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* renamed from: 드뒈둣뒈돛땧돨둘뒐딝땸뒾됫듌둬듼뎽돴뎠땝땭땄돶땩땄뎨돸뎡땩땮딌땋땬듰듰딜땮둥땮뒵딜뎸딽딹뎡뒉듟듰딁땧뒀듰돨둠땝땍딞딠땻땸듻된땩돵둬뒬땪되딟듸듐돠들됴뎸듬뒹뎡땻듌딞뒀뎬땭따딨뒤득돷땤땠둥돳돵뒐땄돨득땵든뎹돵딀뒀둣둔땝뒼돰뒻두둣땵딄땨둔딁뒻땥땦딟땤돝듨돴뒈뒋뒉땡땃, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0817x48fe0edd extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public /* synthetic */ int f4867xfbe0c504;

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.coroutines.Continuation, 드뒈둣뒈돛땧돨둘뒐딝땸뒾됫듌둬듼뎽돴뎠땝땭땄돶땩땄뎨돸뎡땩땮딌땋땬듰듰딜땮둥땮뒵딜뎸딽딹뎡뒉듟듰딁땧뒀듰돨둠땝땍딞딠땻땸듻된땩돵둬뒬땪되딟듸듐돠들됴뎸듬뒹뎡땻듌딞뒀뎬땭따딨뒤득돷땤땠둥돳돵뒐땄돨득땵든뎹돵딀뒀둣둔땝뒼돰뒻두둣땵딄땨둔딁뒻땥땦딟땤돝듨돴뒈뒋뒉땡땃, kotlin.coroutines.jvm.internal.SuspendLambda] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        ?? suspendLambda = new SuspendLambda(2, continuation);
        suspendLambda.f4867xfbe0c504 = ((Number) obj).intValue();
        return suspendLambda;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0817x48fe0edd) create(Integer.valueOf(((Number) obj).intValue()), (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean z;
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        if (this.f4867xfbe0c504 > 0) {
            z = true;
        } else {
            z = false;
        }
        return Boxing.boxBoolean(z);
    }
}
