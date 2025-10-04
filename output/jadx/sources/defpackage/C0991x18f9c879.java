package defpackage;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.sync.MutexImpl;

/* renamed from: 딟땩듽땮뒨듻둥땩뒾돶돶돳딃땃듼뒝디땍뒀땪듬땁땦땻땝뒙둑땋땩뒤뒻땯듌들뒤땍들딐돠든돼됴됐됫둘땧딻땐듐딃돸두둣뒾돨딤듟뒘둬딨뒻뎬디딜땭둔땳땃땥뒋도듼뒻되디땍땻듼듬땍뒨땨돝돳뎨땠뒉뒤뒹땳땨돨돳될뒉듸드땪두땤땁듌딜딅딜땭둡돼뒀땪돛돝돷뎸딨듟딟돝될딨땵뒐딀딸땜뒾됐땜땮둠, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C0991x18f9c879 implements CancellableContinuation, Waiter {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final CancellableContinuationImpl f5167xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final Object f5168x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final /* synthetic */ MutexImpl f5169x1378447b;

    public C0991x18f9c879(MutexImpl mutexImpl, CancellableContinuationImpl cancellableContinuationImpl, Object obj) {
        this.f5169x1378447b = mutexImpl;
        this.f5167xfbe0c504 = cancellableContinuationImpl;
        this.f5168x3271d0aa = obj;
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final boolean cancel(Throwable th) {
        return this.f5167xfbe0c504.cancel(th);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final void completeResume(Object obj) {
        this.f5167xfbe0c504.completeResume(obj);
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext getContext() {
        return this.f5167xfbe0c504.getContext();
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final void initCancellability() {
        this.f5167xfbe0c504.initCancellability();
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final void invokeOnCancellation(Function1 function1) {
        this.f5167xfbe0c504.invokeOnCancellation(function1);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final boolean isActive() {
        return this.f5167xfbe0c504.isActive();
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final boolean isCancelled() {
        return this.f5167xfbe0c504.isCancelled();
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final boolean isCompleted() {
        return this.f5167xfbe0c504.isCompleted();
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final void resume(Object obj, Function1 function1) {
        this.f5167xfbe0c504.resume((CancellableContinuationImpl) obj, (Function1<? super Throwable, Unit>) function1);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final void resumeUndispatched(CoroutineDispatcher coroutineDispatcher, Object obj) {
        this.f5167xfbe0c504.resumeUndispatched(coroutineDispatcher, (Unit) obj);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final void resumeUndispatchedWithException(CoroutineDispatcher coroutineDispatcher, Throwable th) {
        this.f5167xfbe0c504.resumeUndispatchedWithException(coroutineDispatcher, th);
    }

    @Override // kotlin.coroutines.Continuation
    public final void resumeWith(Object obj) {
        this.f5167xfbe0c504.resumeWith(obj);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final Object tryResume(Object obj, Object obj2) {
        return this.f5167xfbe0c504.tryResume((Unit) obj, obj2);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final Object tryResumeWithException(Throwable th) {
        return this.f5167xfbe0c504.tryResumeWithException(th);
    }

    @Override // kotlinx.coroutines.Waiter
    public final void invokeOnCancellation(Segment segment, int i) {
        this.f5167xfbe0c504.invokeOnCancellation(segment, i);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final void resume(Object obj, Function3 function3) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        atomicReferenceFieldUpdater = MutexImpl.f2487x3db60231;
        Object obj2 = this.f5168x3271d0aa;
        MutexImpl mutexImpl = this.f5169x1378447b;
        atomicReferenceFieldUpdater.set(mutexImpl, obj2);
        C0836x3e38e592 c0836x3e38e592 = new C0836x3e38e592(mutexImpl, this, 2);
        this.f5167xfbe0c504.resume((CancellableContinuationImpl) obj, (Function1<? super Throwable, Unit>) c0836x3e38e592);
    }

    @Override // kotlinx.coroutines.CancellableContinuation
    public final Object tryResume(Object obj, Object obj2, Function3 function3) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        MutexImpl mutexImpl = this.f5169x1378447b;
        C0462x3c05abf3 c0462x3c05abf3 = new C0462x3c05abf3(mutexImpl, this, 2);
        Object tryResume = this.f5167xfbe0c504.tryResume((Unit) obj, obj2, c0462x3c05abf3);
        if (tryResume != null) {
            atomicReferenceFieldUpdater = MutexImpl.f2487x3db60231;
            atomicReferenceFieldUpdater.set(mutexImpl, this.f5168x3271d0aa);
        }
        return tryResume;
    }
}
