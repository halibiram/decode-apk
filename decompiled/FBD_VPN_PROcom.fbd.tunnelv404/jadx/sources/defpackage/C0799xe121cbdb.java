package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.FlowCollector;

/* renamed from: 듐돰땅됫드땨땝딄둠딹땀땡듻딌뎠땐듟뒈땸뒻뒘딤됐땁땐딄둑뒼뒵돠땱돵딁둣땝돷딝땜득뒾땜땣뒷뒀됴땥땰디땀뎡땱딁뒝뎠듬딝딃뒀뎽뒤뒷딄땭둑딸둬듸뒬딃딨뎻따돠둬돵돛뒛뎸딟뒛뎹뒻땪돶딃땵딽땄땃뒤뒐딞땀돷땐뎠땄돰뒵뎨땋뒙딝딝땣듻뎸둣땪뎹딹뒀땭땔듐듔땤둬딹뎽듟뒵딄땜듰뎰딀딸땥땭, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0799xe121cbdb extends SuspendLambda implements Function2 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public int f4816xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final /* synthetic */ long f4817x3271d0aa;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0799xe121cbdb(long j, Continuation continuation) {
        super(2, continuation);
        this.f4817x3271d0aa = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new C0799xe121cbdb(this.f4817x3271d0aa, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0799xe121cbdb) create((FlowCollector) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        int i = this.f4816xfbe0c504;
        if (i != 0) {
            if (i == 1) {
                ResultKt.throwOnFailure(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
        } else {
            ResultKt.throwOnFailure(obj);
            this.f4816xfbe0c504 = 1;
            if (DelayKt.delay(this.f4817x3271d0aa, this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        }
        return Unit.INSTANCE;
    }
}
