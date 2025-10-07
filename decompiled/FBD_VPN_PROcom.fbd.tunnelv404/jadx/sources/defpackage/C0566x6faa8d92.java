package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.channels.ReceiveChannel;

/* renamed from: 됨됩돸땟돛땄돝딐딐딅땣듸딀땜듐듽뒘딜득딤딨땰듬디딃땹딎땔듼뒘돸뒛뎻땹딀땋땩둘둣땵뒻든뎡돴디듻딸딽둣땝딸돠땪땬뒉뒝듌듔딝뒝돨땧땲땃뒙딠뒾땧땄둡돶땔됴뎽뒼땲듻땐뎸땬땪돰땄뎡뎠뒛땨땋듰된땸땸뒹땹땃땡딌듰됴땫돸디땠딠돸땥딌된딐됴뎬듌뎬딞땫땧뎨땱땧돝땟딌땄땍뎸됩딹땡땀뒵, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0566x6faa8d92 extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public /* synthetic */ Object f4232xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ ReceiveChannel f4233x3271d0aa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0566x6faa8d92(ReceiveChannel receiveChannel, Continuation continuation) {
        super(2, continuation);
        this.f4233x3271d0aa = receiveChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        C0566x6faa8d92 c0566x6faa8d92 = new C0566x6faa8d92(this.f4233x3271d0aa, continuation);
        c0566x6faa8d92.f4232xfbe0c504 = obj;
        return c0566x6faa8d92;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0566x6faa8d92) create(obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        Object obj2 = this.f4232xfbe0c504;
        if (obj2 != null) {
            return obj2;
        }
        throw new IllegalArgumentException("null element found in " + this.f4233x3271d0aa + '.');
    }
}
