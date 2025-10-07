package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.time.Duration;
import kotlinx.coroutines.TimeoutCancellationException;

/* renamed from: 뒻듽땜돰돳듨땝딀뒹뎸딃땔땵땸돴돠따땜뒝땠땠땟딎딀딠뒀돸뎸딞뒀딨뒋땳돴도딞땝돷둠딻드듐땸돳둣돼듬딟듨뎹돝돼딌됨돷딐뒹뒨딄둠뎰되땮딤뒼땸땤딞둑됫딠딀듰둘딁뒐뒻듐됐땧땧됩땝도됩땻됴땰따듟뒹딄뒈딀땡땃땝딤딄돠땯듟돴된됫돤땰딎땄돠뒛딀뒝돛뒐돵땅뒋딸뒉딄뎰들딎듽되땀딝뎨땱, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0771x9e2f1cd extends SuspendLambda implements Function1 {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ long f4735xfbe0c504;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0771x9e2f1cd(long j, Continuation continuation) {
        super(1, continuation);
        this.f4735xfbe0c504 = j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Continuation continuation) {
        return new C0771x9e2f1cd(this.f4735xfbe0c504, continuation);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        ((C0771x9e2f1cd) create((Continuation) obj)).invokeSuspend(Unit.INSTANCE);
        throw null;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        throw new TimeoutCancellationException("Timed out waiting for " + ((Object) Duration.m2124toStringimpl(this.f4735xfbe0c504)));
    }
}
