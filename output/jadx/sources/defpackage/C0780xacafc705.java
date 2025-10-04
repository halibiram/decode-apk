package defpackage;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* renamed from: 뒼딐땋땳뒋딜듸땸돴뎰돤됐된됐돳땦딃듻뒹둥둔뒝둥땫딨땥뒀뎠딝뎽딤땫드돼뎹듸됨됐돠땔됐디땁땹땠땯딄듽뎰듐뒤뎡땬도딞딽뒈돨뎹뎠돠뒀돴듨뎬땸됴딁듐듨되땋듨땥됐돨둡돤딄뎰딌돼땣딜듼듌딄따땻돵돨뒐딐득딞딨땄둔딎딟득땜땳땵둣땠돠땱뒀둥딸듐뒵뎡딽둑땄땣땭딎드땳딝뒙듟뒨땱둑땨딽, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0780xacafc705 extends SuspendLambda implements Function2 {
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        return new SuspendLambda(2, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0780xacafc705) create((Throwable) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        return Boxing.boxBoolean(true);
    }
}
