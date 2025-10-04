package defpackage;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineExceptionHandlerKt;
import kotlinx.coroutines.ExecutorCoroutineDispatcherImpl;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import kotlinx.coroutines.internal.LimitedDispatcher;

/* renamed from: 딄딄뒘뒐땍들돸뒈땟뒻땱뎬땋딀됫뒛뎽딎뒵땤딟딄땟땦땃땤뒷된드도딻따땃딄듬딜디돝뎬뎻듬뒼땟돤땦듔돶땫뒝땧땠뎻뎠땔돤뒻됨도됐딞딸땮둣듰뎸땝뒼듌듐뒀듼됨뒹돳딁듬뎨듔딎딝디뒾딽둔딄뎽땟됩땱딎듨뒙돤뒼딎땀땱뒘딸땹뎠뎻듐땻딜땃득땟딸딤땮둘뒻땹땬땋뒻땟뒝땐땋뒋돝뎸딞될딐딄뎽뒙, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class RunnableC0925xa2ee6943 implements Runnable {

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ int f5068xfbe0c504 = 1;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public Object f5069x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Object f5070x1378447b;

    public RunnableC0925xa2ee6943(LimitedDispatcher limitedDispatcher, Runnable runnable) {
        this.f5070x1378447b = limitedDispatcher;
        this.f5069x3271d0aa = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater;
        Runnable m2345xfbe0c504;
        CoroutineDispatcher coroutineDispatcher;
        CoroutineDispatcher coroutineDispatcher2;
        switch (this.f5068xfbe0c504) {
            case 0:
                int i = 0;
                while (true) {
                    try {
                        ((Runnable) this.f5069x3271d0aa).run();
                    } catch (Throwable th) {
                        try {
                            CoroutineExceptionHandlerKt.handleCoroutineException(EmptyCoroutineContext.INSTANCE, th);
                        } catch (Throwable th2) {
                            obj = ((LimitedDispatcher) this.f5070x1378447b).f2398x9e171bf9;
                            LimitedDispatcher limitedDispatcher = (LimitedDispatcher) this.f5070x1378447b;
                            synchronized (obj) {
                                atomicIntegerFieldUpdater = LimitedDispatcher.f2392x34271fae;
                                atomicIntegerFieldUpdater.decrementAndGet(limitedDispatcher);
                                throw th2;
                            }
                        }
                    }
                    m2345xfbe0c504 = ((LimitedDispatcher) this.f5070x1378447b).m2345xfbe0c504();
                    if (m2345xfbe0c504 != null) {
                        this.f5069x3271d0aa = m2345xfbe0c504;
                        i++;
                        if (i >= 16) {
                            coroutineDispatcher = ((LimitedDispatcher) this.f5070x1378447b).f2394x3271d0aa;
                            if (DispatchedContinuationKt.safeIsDispatchNeeded(coroutineDispatcher, (LimitedDispatcher) this.f5070x1378447b)) {
                                coroutineDispatcher2 = ((LimitedDispatcher) this.f5070x1378447b).f2394x3271d0aa;
                                DispatchedContinuationKt.safeDispatch(coroutineDispatcher2, (LimitedDispatcher) this.f5070x1378447b, this);
                                return;
                            }
                        }
                    } else {
                        return;
                    }
                }
            default:
                ((CancellableContinuation) this.f5070x1378447b).resumeUndispatched((ExecutorCoroutineDispatcherImpl) this.f5069x3271d0aa, Unit.INSTANCE);
                return;
        }
    }

    public RunnableC0925xa2ee6943(ExecutorCoroutineDispatcherImpl executorCoroutineDispatcherImpl, CancellableContinuation cancellableContinuation) {
        this.f5069x3271d0aa = executorCoroutineDispatcherImpl;
        this.f5070x1378447b = cancellableContinuation;
    }
}
