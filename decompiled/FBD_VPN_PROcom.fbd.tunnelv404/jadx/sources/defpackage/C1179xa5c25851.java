package defpackage;

import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.flow.CancellableFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;
import kotlinx.coroutines.flow.SubscribedFlowCollector;
import kotlinx.coroutines.flow.internal.AbstractSharedFlow;
import kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot;
import kotlinx.coroutines.flow.internal.FusibleFlow;
import kotlinx.coroutines.flow.internal.NullSurrogateKt;
import kotlinx.coroutines.internal.Concurrent_commonKt;
import kotlinx.coroutines.internal.Symbol;

/* renamed from: 땤됴돝됐딽듐딹듻돳딃돵도든땩땫뒉딌따듬뒤땔듌도땋땀듨둔땝땟땫땨듔됨땥듨돸땀돵따뎹돴뒝땦듻딜될뒉뒹둬땟뒋땠돸듐땫들돸듼뒈뒻땜뒋땰되듻돸드뒹뒤둔둡듸듌땨듟둣딐둔됫돳땠디뒷딄땐딹됐땬딅땨된듬둬뒤뎡땣땹뎹든딸뒝듻땱뒛땁돷둣땧땨돼뒀뒛듔듬딅딝둡돰뒵돵땐딠딻돼땻듨듟될딨뎬, reason: contains not printable characters */
/* loaded from: classes3.dex */
public final class C1179xa5c25851 extends AbstractSharedFlow implements MutableStateFlow, CancellableFlow, FusibleFlow {

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f5564x9e171bf9 = AtomicReferenceFieldUpdater.newUpdater(C1179xa5c25851.class, Object.class, "_state$volatile");
    private volatile /* synthetic */ Object _state$volatile;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public int f5565x9738a56c;

    public C1179xa5c25851(Object obj) {
        this._state$volatile = obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00a4, code lost:
    
        if (kotlin.jvm.internal.Intrinsics.areEqual(r11, r12) == false) goto L42;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x009b A[Catch: all -> 0x003a, TryCatch #0 {all -> 0x003a, blocks: (B:13:0x0036, B:14:0x0093, B:16:0x009b, B:18:0x00a0, B:20:0x00c1, B:23:0x00d5, B:27:0x00a6, B:30:0x00ad, B:39:0x004f, B:41:0x005a, B:42:0x0084), top: B:7:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00a0 A[Catch: all -> 0x003a, TryCatch #0 {all -> 0x003a, blocks: (B:13:0x0036, B:14:0x0093, B:16:0x009b, B:18:0x00a0, B:20:0x00c1, B:23:0x00d5, B:27:0x00a6, B:30:0x00ad, B:39:0x004f, B:41:0x005a, B:42:0x0084), top: B:7:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00d5 A[Catch: all -> 0x003a, TRY_LEAVE, TryCatch #0 {all -> 0x003a, blocks: (B:13:0x0036, B:14:0x0093, B:16:0x009b, B:18:0x00a0, B:20:0x00c1, B:23:0x00d5, B:27:0x00a6, B:30:0x00ad, B:39:0x004f, B:41:0x005a, B:42:0x0084), top: B:7:0x0024 }] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00bf A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0026  */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v11 */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v13 */
    /* JADX WARN: Type inference failed for: r6v14 */
    /* JADX WARN: Type inference failed for: r6v2, types: [kotlinx.coroutines.flow.internal.AbstractSharedFlowSlot] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v7, types: [땤둔딐딄땣뒝뒤된돰딸돰뒀딁땔뎽딨뎨듌딤땭딀땜됫딄됨딹땬돴땧뒝돝땫딁도둣둬딹돼드뒬땯돶뎹뒙둠뒻돷돷둠딠땧땵돰따돝됨둔땡듽땃땨뎠돶딞둘듐땝됴땻딁땬듬됫도뎸딠뎸뒉땰땭듻뎰듬돴뒷뒬둬딽뒤땰됴땻뒝땐땅땄됴딎딄뎨딝땥듨땭땝땩뒘땥땤뒘듰든듟딐뒉드뎸뒵땱땜뒐땄뎰돷뒐둑돤땁뒨따] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x00d4 -> B:14:0x0093). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00e5 -> B:14:0x0093). Please report as a decompilation issue!!! */
    @Override // kotlinx.coroutines.flow.SharedFlow, kotlinx.coroutines.flow.Flow
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object collect(FlowCollector flowCollector, Continuation continuation) {
        C1178x1aa54ec1 c1178x1aa54ec1;
        Object coroutine_suspended;
        int i;
        C1179xa5c25851 c1179xa5c25851;
        C1180x9b4a6739 c1180x9b4a6739;
        FlowCollector flowCollector2;
        Job job;
        Object obj;
        C1180x9b4a6739 c1180x9b4a67392;
        Symbol symbol;
        Object andSet;
        Symbol symbol2;
        Object obj2;
        Object obj3;
        try {
            if (continuation instanceof C1178x1aa54ec1) {
                c1178x1aa54ec1 = (C1178x1aa54ec1) continuation;
                int i2 = c1178x1aa54ec1.f5563x95f25580;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    c1178x1aa54ec1.f5563x95f25580 = i2 - Integer.MIN_VALUE;
                    Object obj4 = c1178x1aa54ec1.f5561x9e171bf9;
                    coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i = c1178x1aa54ec1.f5563x95f25580;
                    ?? r6 = 1;
                    if (i == 0) {
                        if (i != 1) {
                            if (i != 2) {
                                if (i == 3) {
                                    obj = c1178x1aa54ec1.f5560x9738a56c;
                                    job = c1178x1aa54ec1.f5559x75d576dc;
                                    C1180x9b4a6739 c1180x9b4a67393 = c1178x1aa54ec1.f5558x1378447b;
                                    flowCollector2 = c1178x1aa54ec1.f5557x3271d0aa;
                                    c1179xa5c25851 = c1178x1aa54ec1.f5556xfbe0c504;
                                    ResultKt.throwOnFailure(obj4);
                                    r6 = c1180x9b4a67393;
                                    obj2 = f5564x9e171bf9.get(c1179xa5c25851);
                                    if (job != null) {
                                        JobKt.ensureActive(job);
                                    }
                                    if (obj != null) {
                                        c1180x9b4a67392 = r6;
                                    }
                                    if (obj2 == NullSurrogateKt.NULL) {
                                        obj3 = null;
                                    } else {
                                        obj3 = obj2;
                                    }
                                    c1178x1aa54ec1.f5556xfbe0c504 = c1179xa5c25851;
                                    c1178x1aa54ec1.f5557x3271d0aa = flowCollector2;
                                    c1178x1aa54ec1.f5558x1378447b = r6;
                                    c1178x1aa54ec1.f5559x75d576dc = job;
                                    c1178x1aa54ec1.f5560x9738a56c = obj2;
                                    c1178x1aa54ec1.f5563x95f25580 = 2;
                                    if (flowCollector2.emit(obj3, c1178x1aa54ec1) == coroutine_suspended) {
                                        return coroutine_suspended;
                                    }
                                    obj = obj2;
                                    c1180x9b4a67392 = r6;
                                    AtomicReference atomicReference = c1180x9b4a67392.f5566xfbe0c504;
                                    symbol = StateFlowKt.f2347xfbe0c504;
                                    andSet = atomicReference.getAndSet(symbol);
                                    Intrinsics.checkNotNull(andSet);
                                    symbol2 = StateFlowKt.f2348x3271d0aa;
                                    if (andSet != symbol2) {
                                        r6 = c1180x9b4a67392;
                                    } else {
                                        c1178x1aa54ec1.f5556xfbe0c504 = c1179xa5c25851;
                                        c1178x1aa54ec1.f5557x3271d0aa = flowCollector2;
                                        c1178x1aa54ec1.f5558x1378447b = c1180x9b4a67392;
                                        c1178x1aa54ec1.f5559x75d576dc = job;
                                        c1178x1aa54ec1.f5560x9738a56c = obj;
                                        c1178x1aa54ec1.f5563x95f25580 = 3;
                                        Object m3929xfbe0c504 = c1180x9b4a67392.m3929xfbe0c504(c1178x1aa54ec1);
                                        r6 = c1180x9b4a67392;
                                        if (m3929xfbe0c504 == coroutine_suspended) {
                                            return coroutine_suspended;
                                        }
                                    }
                                    obj2 = f5564x9e171bf9.get(c1179xa5c25851);
                                    if (job != null) {
                                    }
                                    if (obj != null) {
                                    }
                                    if (obj2 == NullSurrogateKt.NULL) {
                                    }
                                    c1178x1aa54ec1.f5556xfbe0c504 = c1179xa5c25851;
                                    c1178x1aa54ec1.f5557x3271d0aa = flowCollector2;
                                    c1178x1aa54ec1.f5558x1378447b = r6;
                                    c1178x1aa54ec1.f5559x75d576dc = job;
                                    c1178x1aa54ec1.f5560x9738a56c = obj2;
                                    c1178x1aa54ec1.f5563x95f25580 = 2;
                                    if (flowCollector2.emit(obj3, c1178x1aa54ec1) == coroutine_suspended) {
                                    }
                                } else {
                                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                                }
                            } else {
                                obj = c1178x1aa54ec1.f5560x9738a56c;
                                job = c1178x1aa54ec1.f5559x75d576dc;
                                C1180x9b4a6739 c1180x9b4a67394 = c1178x1aa54ec1.f5558x1378447b;
                                flowCollector2 = c1178x1aa54ec1.f5557x3271d0aa;
                                c1179xa5c25851 = c1178x1aa54ec1.f5556xfbe0c504;
                                ResultKt.throwOnFailure(obj4);
                                c1180x9b4a67392 = c1180x9b4a67394;
                                AtomicReference atomicReference2 = c1180x9b4a67392.f5566xfbe0c504;
                                symbol = StateFlowKt.f2347xfbe0c504;
                                andSet = atomicReference2.getAndSet(symbol);
                                Intrinsics.checkNotNull(andSet);
                                symbol2 = StateFlowKt.f2348x3271d0aa;
                                if (andSet != symbol2) {
                                }
                                obj2 = f5564x9e171bf9.get(c1179xa5c25851);
                                if (job != null) {
                                }
                                if (obj != null) {
                                }
                                if (obj2 == NullSurrogateKt.NULL) {
                                }
                                c1178x1aa54ec1.f5556xfbe0c504 = c1179xa5c25851;
                                c1178x1aa54ec1.f5557x3271d0aa = flowCollector2;
                                c1178x1aa54ec1.f5558x1378447b = r6;
                                c1178x1aa54ec1.f5559x75d576dc = job;
                                c1178x1aa54ec1.f5560x9738a56c = obj2;
                                c1178x1aa54ec1.f5563x95f25580 = 2;
                                if (flowCollector2.emit(obj3, c1178x1aa54ec1) == coroutine_suspended) {
                                }
                            }
                        } else {
                            C1180x9b4a6739 c1180x9b4a67395 = c1178x1aa54ec1.f5558x1378447b;
                            flowCollector = c1178x1aa54ec1.f5557x3271d0aa;
                            c1179xa5c25851 = c1178x1aa54ec1.f5556xfbe0c504;
                            ResultKt.throwOnFailure(obj4);
                            c1180x9b4a6739 = c1180x9b4a67395;
                        }
                    } else {
                        ResultKt.throwOnFailure(obj4);
                        C1180x9b4a6739 c1180x9b4a67396 = (C1180x9b4a6739) allocateSlot();
                        try {
                            if (flowCollector instanceof SubscribedFlowCollector) {
                                c1178x1aa54ec1.f5556xfbe0c504 = this;
                                c1178x1aa54ec1.f5557x3271d0aa = flowCollector;
                                c1178x1aa54ec1.f5558x1378447b = c1180x9b4a67396;
                                c1178x1aa54ec1.f5563x95f25580 = 1;
                                if (((SubscribedFlowCollector) flowCollector).onSubscription(c1178x1aa54ec1) == coroutine_suspended) {
                                    return coroutine_suspended;
                                }
                            }
                            c1179xa5c25851 = this;
                            c1180x9b4a6739 = c1180x9b4a67396;
                        } catch (Throwable th) {
                            th = th;
                            c1179xa5c25851 = this;
                            r6 = c1180x9b4a67396;
                            c1179xa5c25851.freeSlot(r6);
                            throw th;
                        }
                    }
                    flowCollector2 = flowCollector;
                    job = (Job) c1178x1aa54ec1.getContext().get(Job.INSTANCE);
                    obj = null;
                    r6 = c1180x9b4a6739;
                    obj2 = f5564x9e171bf9.get(c1179xa5c25851);
                    if (job != null) {
                    }
                    if (obj != null) {
                    }
                    if (obj2 == NullSurrogateKt.NULL) {
                    }
                    c1178x1aa54ec1.f5556xfbe0c504 = c1179xa5c25851;
                    c1178x1aa54ec1.f5557x3271d0aa = flowCollector2;
                    c1178x1aa54ec1.f5558x1378447b = r6;
                    c1178x1aa54ec1.f5559x75d576dc = job;
                    c1178x1aa54ec1.f5560x9738a56c = obj2;
                    c1178x1aa54ec1.f5563x95f25580 = 2;
                    if (flowCollector2.emit(obj3, c1178x1aa54ec1) == coroutine_suspended) {
                    }
                }
            }
            if (i == 0) {
            }
            flowCollector2 = flowCollector;
            job = (Job) c1178x1aa54ec1.getContext().get(Job.INSTANCE);
            obj = null;
            r6 = c1180x9b4a6739;
            obj2 = f5564x9e171bf9.get(c1179xa5c25851);
            if (job != null) {
            }
            if (obj != null) {
            }
            if (obj2 == NullSurrogateKt.NULL) {
            }
            c1178x1aa54ec1.f5556xfbe0c504 = c1179xa5c25851;
            c1178x1aa54ec1.f5557x3271d0aa = flowCollector2;
            c1178x1aa54ec1.f5558x1378447b = r6;
            c1178x1aa54ec1.f5559x75d576dc = job;
            c1178x1aa54ec1.f5560x9738a56c = obj2;
            c1178x1aa54ec1.f5563x95f25580 = 2;
            if (flowCollector2.emit(obj3, c1178x1aa54ec1) == coroutine_suspended) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
        c1178x1aa54ec1 = new C1178x1aa54ec1(this, continuation);
        Object obj42 = c1178x1aa54ec1.f5561x9e171bf9;
        coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = c1178x1aa54ec1.f5563x95f25580;
        ?? r62 = 1;
    }

    @Override // kotlinx.coroutines.flow.MutableStateFlow
    public final boolean compareAndSet(Object obj, Object obj2) {
        if (obj == null) {
            obj = NullSurrogateKt.NULL;
        }
        if (obj2 == null) {
            obj2 = NullSurrogateKt.NULL;
        }
        return m3928xfbe0c504(obj, obj2);
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot createSlot() {
        return new C1180x9b4a6739();
    }

    @Override // kotlinx.coroutines.flow.internal.AbstractSharedFlow
    public final AbstractSharedFlowSlot[] createSlotArray(int i) {
        return new C1180x9b4a6739[i];
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow, kotlinx.coroutines.flow.FlowCollector
    public final Object emit(Object obj, Continuation continuation) {
        setValue(obj);
        return Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.internal.FusibleFlow
    public final Flow fuse(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        return StateFlowKt.fuseStateFlow(this, coroutineContext, i, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.SharedFlow
    public final List getReplayCache() {
        return AbstractC0586x968d4673.listOf(getValue());
    }

    @Override // kotlinx.coroutines.flow.MutableStateFlow, kotlinx.coroutines.flow.StateFlow
    public final Object getValue() {
        Symbol symbol = NullSurrogateKt.NULL;
        Object obj = f5564x9e171bf9.get(this);
        if (obj == symbol) {
            return null;
        }
        return obj;
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public final void resetReplayCache() {
        throw new UnsupportedOperationException("MutableStateFlow.resetReplayCache is not supported");
    }

    @Override // kotlinx.coroutines.flow.MutableStateFlow
    public final void setValue(Object obj) {
        if (obj == null) {
            obj = NullSurrogateKt.NULL;
        }
        m3928xfbe0c504(null, obj);
    }

    @Override // kotlinx.coroutines.flow.MutableSharedFlow
    public final boolean tryEmit(Object obj) {
        setValue(obj);
        return true;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final boolean m3928xfbe0c504(Object obj, Object obj2) {
        int i;
        AbstractSharedFlowSlot[] slots;
        Symbol symbol;
        Symbol symbol2;
        Symbol symbol3;
        Symbol symbol4;
        synchronized (this) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f5564x9e171bf9;
            Object obj3 = atomicReferenceFieldUpdater.get(this);
            if (obj != null && !Intrinsics.areEqual(obj3, obj)) {
                return false;
            }
            if (Intrinsics.areEqual(obj3, obj2)) {
                return true;
            }
            atomicReferenceFieldUpdater.set(this, obj2);
            int i2 = this.f5565x9738a56c;
            if ((i2 & 1) == 0) {
                int i3 = i2 + 1;
                this.f5565x9738a56c = i3;
                AbstractSharedFlowSlot[] slots2 = getSlots();
                while (true) {
                    C1180x9b4a6739[] c1180x9b4a6739Arr = (C1180x9b4a6739[]) slots2;
                    if (c1180x9b4a6739Arr != null) {
                        for (C1180x9b4a6739 c1180x9b4a6739 : c1180x9b4a6739Arr) {
                            if (c1180x9b4a6739 != null) {
                                AtomicReference atomicReference = c1180x9b4a6739.f5566xfbe0c504;
                                while (true) {
                                    Object value = Concurrent_commonKt.getValue(atomicReference);
                                    if (value == null) {
                                        break;
                                    }
                                    symbol = StateFlowKt.f2348x3271d0aa;
                                    if (value == symbol) {
                                        break;
                                    }
                                    symbol2 = StateFlowKt.f2347xfbe0c504;
                                    if (value == symbol2) {
                                        symbol3 = StateFlowKt.f2348x3271d0aa;
                                        while (!atomicReference.compareAndSet(value, symbol3)) {
                                            if (atomicReference.get() != value) {
                                                break;
                                            }
                                        }
                                    } else {
                                        symbol4 = StateFlowKt.f2347xfbe0c504;
                                        while (!atomicReference.compareAndSet(value, symbol4)) {
                                            if (atomicReference.get() != value) {
                                                break;
                                            }
                                        }
                                        Result.Companion companion = Result.INSTANCE;
                                        ((CancellableContinuationImpl) value).resumeWith(Result.m1764constructorimpl(Unit.INSTANCE));
                                        break;
                                    }
                                }
                            }
                        }
                    }
                    synchronized (this) {
                        i = this.f5565x9738a56c;
                        if (i == i3) {
                            this.f5565x9738a56c = i3 + 1;
                            return true;
                        }
                        slots = getSlots();
                    }
                    slots2 = slots;
                    i3 = i;
                }
            } else {
                this.f5565x9738a56c = i2 + 2;
                return true;
            }
        }
    }
}
