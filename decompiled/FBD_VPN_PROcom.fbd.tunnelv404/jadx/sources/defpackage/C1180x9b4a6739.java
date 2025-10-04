package defpackage;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowKt;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.internal.Concurrent_commonKt;
import kotlinx.coroutines.internal.Symbol;

/* renamed from: 땤둔딐딄땣뒝뒤된돰딸돰뒀딁땔뎽딨뎨듌딤땭딀땜됫딄됨딹땬돴땧뒝돝땫딁도둣둬딹돼드뒬땯돶뎹뒙둠뒻돷돷둠딠땧땵돰따돝됨둔땡듽땃땨뎠돶딞둘듐땝됴땻딁땬듬됫도뎸딠뎸뒉땰땭듻뎰듬돴뒷뒬둬딽뒤땰됴땻뒝땐땅땄됴딎딄뎨딝땥듨땭땝땩뒘땥땤뒘듰든듟딐뒉드뎸뒵땱땜뒐땄뎰돷뒐둑돤땁뒨따, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1180x9b4a6739 extends AbstractSharedFlowSlot {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final AtomicReference f5566xfbe0c504 = new AtomicReference(null);

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot
    public final boolean allocateLocked(Object obj) {
        Symbol symbol;
        AtomicReference atomicReference = this.f5566xfbe0c504;
        if (Concurrent_commonKt.getValue(atomicReference) == null) {
            symbol = StateFlowKt.f2347xfbe0c504;
            Concurrent_commonKt.setValue(atomicReference, symbol);
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot
    public final Continuation[] freeLocked(Object obj) {
        Concurrent_commonKt.setValue(this.f5566xfbe0c504, null);
        return AbstractSharedFlowKt.EMPTY_RESUMES;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Object m3929xfbe0c504(C1178x1aa54ec1 c1178x1aa54ec1) {
        Symbol symbol;
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(c1178x1aa54ec1), 1);
        cancellableContinuationImpl.initCancellability();
        AtomicReference atomicReference = this.f5566xfbe0c504;
        symbol = StateFlowKt.f2347xfbe0c504;
        while (true) {
            if (atomicReference.compareAndSet(symbol, cancellableContinuationImpl)) {
                break;
            }
            if (atomicReference.get() != symbol) {
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuationImpl.resumeWith(Result.m1764constructorimpl(Unit.INSTANCE));
                break;
            }
        }
        Object result = cancellableContinuationImpl.getResult();
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(c1178x1aa54ec1);
        }
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return result;
        }
        return Unit.INSTANCE;
    }
}
