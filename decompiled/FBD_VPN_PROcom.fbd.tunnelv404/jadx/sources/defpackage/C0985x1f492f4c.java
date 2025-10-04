package defpackage;

import kotlin.KotlinNothingValueException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.MainCoroutineDispatcher;
import kotlinx.coroutines.internal.MainDispatchersKt;

/* renamed from: 딟돸딨돨둣든뎻땵돨딞뒀뒐돨땡도들땩돶뒻땭땬뎸뎬돶둘딟뒬도뒬뎻뒘둔땔뒼딤땝땻땳땣돛돴딸뒷땦땋뎽듬돼땹될둥둔돵두뒀땹돤딀됴돵딤들뒙듐돼뒙돸따득돷됨돸들땠뒙뎹땪땦둡땱뒐뒘땹땠뒙딐땪땀둡땔듽딄둔땫뎠뎰딸둠뎹들돳득땧땐딌딞되돶땳땬되듽돤땲딅딅뒙듟뒷뒋뒛뎬뒬뒤딁뎹땔뒷딝땳, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0985x1f492f4c extends MainCoroutineDispatcher implements Delay {
    @Override // kotlinx.coroutines.Delay
    public final Object delay(long j, Continuation continuation) {
        return Delay.DefaultImpls.delay(this, j, continuation);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatch(CoroutineContext coroutineContext, Runnable runnable) {
        m3557xfbe0c504();
        throw null;
    }

    @Override // kotlinx.coroutines.Delay
    public final DisposableHandle invokeOnTimeout(long j, Runnable runnable, CoroutineContext coroutineContext) {
        m3557xfbe0c504();
        throw null;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final boolean isDispatchNeeded(CoroutineContext coroutineContext) {
        m3557xfbe0c504();
        throw null;
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher, kotlinx.coroutines.CoroutineDispatcher
    public final CoroutineDispatcher limitedParallelism(int i, String str) {
        m3557xfbe0c504();
        throw null;
    }

    @Override // kotlinx.coroutines.Delay
    public final void scheduleResumeAfterDelay(long j, CancellableContinuation cancellableContinuation) {
        m3557xfbe0c504();
        throw null;
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher, kotlinx.coroutines.CoroutineDispatcher
    public final String toString() {
        return "Dispatchers.Main[missing]";
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final void m3557xfbe0c504() {
        MainDispatchersKt.throwMissingMainDispatcherException();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.MainCoroutineDispatcher
    public final MainCoroutineDispatcher getImmediate() {
        return this;
    }
}
