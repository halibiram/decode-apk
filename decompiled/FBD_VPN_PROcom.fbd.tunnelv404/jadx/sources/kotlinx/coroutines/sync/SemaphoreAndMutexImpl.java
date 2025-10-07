package kotlinx.coroutines.sync;

import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0892xc141c517;
import defpackage.C0461xe717dee;
import defpackage.C1116xab206122;
import defpackage.C1117x70820ab4;
import defpackage.C1120xd5e67af4;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.Waiter;
import kotlinx.coroutines.internal.ConcurrentLinkedListKt;
import kotlinx.coroutines.internal.Segment;
import kotlinx.coroutines.internal.SegmentOrClosed;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectInstance;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0010\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\r\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nH\u0086@¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u000b\u001a\u00020\n2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\rH\u0005¢\u0006\u0004\b\u000b\u0010\u000fJ%\u0010\u0013\u001a\u00020\n2\n\u0010\u0011\u001a\u0006\u0012\u0002\b\u00030\u00102\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u0004¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\n¢\u0006\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0019\u001a\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8\u0002X\u0082\u0004R\u000b\u0010\u001e\u001a\u00020\u001d8\u0002X\u0082\u0004R\u0011\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001a8\u0002X\u0082\u0004R\u000b\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004R\u000b\u0010\"\u001a\u00020!8\u0002X\u0082\u0004¨\u0006#"}, d2 = {"Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;", "", "", "permits", "acquiredPermits", "<init>", "(II)V", "", "tryAcquire", "()Z", "", "acquire", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Lkotlinx/coroutines/CancellableContinuation;", "waiter", "(Lkotlinx/coroutines/CancellableContinuation;)V", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "ignoredParam", "onAcquireRegFunction", "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", "release", "()V", "getAvailablePermits", "()I", "availablePermits", "Lkotlinx/atomicfu/AtomicRef;", "L땔뎽뒵뎹뒨뒷딅땻땹뎠뒤뒙듻뒛뒛땹딌돝뒙땃돠뎻땳땝됴딃딜뒋딁될땁뒹든딟둠듟뒵뎻뎽듐땐땹될두둔뒈땐둔땣뒼듰뒘뒈듔듻땲듽땔돠땫둣돨딸땸땃뒙됩뒹뒉듟뒙뒵땦될땡땄뒾됴된땜딎땝뒛땥뒷땩땋돸뎨둡땝땸딝도듽뎨땄듽듌땰땭듌땳뒉뒐뒝됫딤땥뎠둠둠딄뒼뎰딨듰뒾딁뒀뒈땮듽땀땬듻딨땟뒝돵;", "head", "Lkotlinx/atomicfu/AtomicLong;", "deqIdx", "tail", "enqIdx", "Lkotlinx/atomicfu/AtomicInt;", "_availablePermits", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreAndMutexImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 5 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n1#1,396:1\n200#1,10:410\n200#1,10:420\n1#2:397\n444#3,12:398\n68#4,3:430\n42#4,8:433\n68#4,3:444\n42#4,8:447\n374#5:441\n374#5:442\n366#5:443\n377#5:455\n366#5:456\n374#5:457\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreAndMutexImpl\n*L\n192#1:410,10\n216#1:420,10\n182#1:398,12\n284#1:430,3\n284#1:433,8\n317#1:444,3\n317#1:447,8\n288#1:441\n294#1:442\n308#1:443\n323#1:455\n329#1:456\n332#1:457\n*E\n"})
/* loaded from: classes3.dex */
public class SemaphoreAndMutexImpl {

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f2491x1378447b = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "head$volatile");

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public static final /* synthetic */ AtomicLongFieldUpdater f2492x75d576dc = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "deqIdx$volatile");

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f2493x9738a56c = AtomicReferenceFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, Object.class, "tail$volatile");

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public static final /* synthetic */ AtomicLongFieldUpdater f2494x9e171bf9 = AtomicLongFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "enqIdx$volatile");

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f2495x34271fae = AtomicIntegerFieldUpdater.newUpdater(SemaphoreAndMutexImpl.class, "_availablePermits$volatile");
    private volatile /* synthetic */ int _availablePermits$volatile;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;
    private volatile /* synthetic */ Object head$volatile;
    private volatile /* synthetic */ Object tail$volatile;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final int f2496xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final C0461xe717dee f2497x3271d0aa;

    public SemaphoreAndMutexImpl(int i, int i2) {
        this.f2496xfbe0c504 = i;
        if (i > 0) {
            if (i2 >= 0 && i2 <= i) {
                C1120xd5e67af4 c1120xd5e67af4 = new C1120xd5e67af4(0L, null, 2);
                this.head$volatile = c1120xd5e67af4;
                this.tail$volatile = c1120xd5e67af4;
                this._availablePermits$volatile = i - i2;
                this.f2497x3271d0aa = new C0461xe717dee(this, 3);
                return;
            }
            throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "The number of acquired permits should be in 0..").toString());
        }
        throw new IllegalArgumentException(AbstractC0362x4440ab85.m2929x9738a56c(i, "Semaphore should have at least 1 permit, but had ").toString());
    }

    @Nullable
    public final Object acquire(@NotNull Continuation<? super Unit> continuation) {
        int andDecrement;
        do {
            andDecrement = f2495x34271fae.getAndDecrement(this);
        } while (andDecrement > this.f2496xfbe0c504);
        if (andDecrement > 0) {
            return Unit.INSTANCE;
        }
        Object m2380xfbe0c504 = m2380xfbe0c504(continuation);
        return m2380xfbe0c504 == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED() ? m2380xfbe0c504 : Unit.INSTANCE;
    }

    public final int getAvailablePermits() {
        return Math.max(f2495x34271fae.get(this), 0);
    }

    public final void onAcquireRegFunction(@NotNull SelectInstance<?> select, @Nullable Object ignoredParam) {
        while (true) {
            int andDecrement = f2495x34271fae.getAndDecrement(this);
            if (andDecrement <= this.f2496xfbe0c504) {
                if (andDecrement > 0) {
                    select.selectInRegistrationPhase(Unit.INSTANCE);
                    return;
                } else {
                    Intrinsics.checkNotNull(select, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
                    if (m2381x3271d0aa((Waiter) select)) {
                        return;
                    }
                }
            }
        }
    }

    public final void release() {
        int i;
        int i2;
        Object findSegmentInternal;
        boolean z;
        int i3;
        Symbol symbol;
        Symbol symbol2;
        int i4;
        Symbol symbol3;
        Symbol symbol4;
        Symbol symbol5;
        do {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f2495x34271fae;
            int andIncrement = atomicIntegerFieldUpdater.getAndIncrement(this);
            int i5 = this.f2496xfbe0c504;
            if (andIncrement < i5) {
                if (andIncrement >= 0) {
                    return;
                }
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2491x1378447b;
                C1120xd5e67af4 c1120xd5e67af4 = (C1120xd5e67af4) atomicReferenceFieldUpdater.get(this);
                long andIncrement2 = f2492x75d576dc.getAndIncrement(this);
                i2 = SemaphoreKt.f2503x9e171bf9;
                long j = andIncrement2 / i2;
                C1117x70820ab4 c1117x70820ab4 = C1117x70820ab4.f5423xfbe0c504;
                while (true) {
                    findSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(c1120xd5e67af4, j, c1117x70820ab4);
                    if (SegmentOrClosed.m2356isClosedimpl(findSegmentInternal)) {
                        break;
                    }
                    Segment m2354getSegmentimpl = SegmentOrClosed.m2354getSegmentimpl(findSegmentInternal);
                    while (true) {
                        Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                        if (segment.id >= m2354getSegmentimpl.id) {
                            break;
                        }
                        if (!m2354getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                            break;
                        }
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, segment, m2354getSegmentimpl)) {
                            if (atomicReferenceFieldUpdater.get(this) != segment) {
                                if (m2354getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                                    m2354getSegmentimpl.remove();
                                }
                            }
                        }
                        if (segment.decPointers$kotlinx_coroutines_core()) {
                            segment.remove();
                        }
                    }
                }
                C1120xd5e67af4 c1120xd5e67af42 = (C1120xd5e67af4) SegmentOrClosed.m2354getSegmentimpl(findSegmentInternal);
                c1120xd5e67af42.cleanPrev();
                z = false;
                if (c1120xd5e67af42.id <= j) {
                    i3 = SemaphoreKt.f2503x9e171bf9;
                    int i6 = (int) (andIncrement2 % i3);
                    symbol = SemaphoreKt.f2499x3271d0aa;
                    AtomicReferenceArray atomicReferenceArray = c1120xd5e67af42.f5428x75d576dc;
                    Object andSet = atomicReferenceArray.getAndSet(i6, symbol);
                    if (andSet == null) {
                        i4 = SemaphoreKt.f2498xfbe0c504;
                        for (int i7 = 0; i7 < i4; i7++) {
                            Object obj = atomicReferenceArray.get(i6);
                            symbol5 = SemaphoreKt.f2500x1378447b;
                            if (obj == symbol5) {
                                z = true;
                                break;
                            }
                        }
                        symbol3 = SemaphoreKt.f2499x3271d0aa;
                        symbol4 = SemaphoreKt.f2501x75d576dc;
                        while (true) {
                            if (atomicReferenceArray.compareAndSet(i6, symbol3, symbol4)) {
                                z = true;
                                break;
                            } else if (atomicReferenceArray.get(i6) != symbol3) {
                                break;
                            }
                        }
                        z = !z;
                    } else {
                        symbol2 = SemaphoreKt.f2502x9738a56c;
                        if (andSet != symbol2) {
                            if (andSet instanceof CancellableContinuation) {
                                Intrinsics.checkNotNull(andSet, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
                                CancellableContinuation cancellableContinuation = (CancellableContinuation) andSet;
                                Object tryResume = cancellableContinuation.tryResume(Unit.INSTANCE, null, this.f2497x3271d0aa);
                                if (tryResume != null) {
                                    cancellableContinuation.completeResume(tryResume);
                                    z = true;
                                    break;
                                    break;
                                }
                            } else if (andSet instanceof SelectInstance) {
                                z = ((SelectInstance) andSet).trySelect(this, Unit.INSTANCE);
                            } else {
                                throw new IllegalStateException(("unexpected: " + andSet).toString());
                            }
                        }
                    }
                }
            } else {
                do {
                    i = atomicIntegerFieldUpdater.get(this);
                    if (i <= i5) {
                        break;
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i5));
                throw new IllegalStateException(("The number of released permits cannot be greater than " + i5).toString());
            }
        } while (!z);
    }

    public final boolean tryAcquire() {
        int i;
        while (true) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f2495x34271fae;
            int i2 = atomicIntegerFieldUpdater.get(this);
            int i3 = this.f2496xfbe0c504;
            if (i2 > i3) {
                do {
                    i = atomicIntegerFieldUpdater.get(this);
                    if (i > i3) {
                    }
                } while (!atomicIntegerFieldUpdater.compareAndSet(this, i, i3));
            } else {
                if (i2 <= 0) {
                    return false;
                }
                if (atomicIntegerFieldUpdater.compareAndSet(this, i2, i2 - 1)) {
                    return true;
                }
            }
        }
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Object m2380xfbe0c504(Continuation continuation) {
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
        try {
            if (!m2381x3271d0aa(orCreateCancellableContinuation)) {
                acquire((CancellableContinuation<? super Unit>) orCreateCancellableContinuation);
            }
            Object result = orCreateCancellableContinuation.getResult();
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                return result;
            }
            return Unit.INSTANCE;
        } catch (Throwable th) {
            orCreateCancellableContinuation.releaseClaimedReusableContinuation$kotlinx_coroutines_core();
            throw th;
        }
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final boolean m2381x3271d0aa(Waiter waiter) {
        int i;
        Object findSegmentInternal;
        int i2;
        Symbol symbol;
        Symbol symbol2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2493x9738a56c;
        C1120xd5e67af4 c1120xd5e67af4 = (C1120xd5e67af4) atomicReferenceFieldUpdater.get(this);
        long andIncrement = f2494x9e171bf9.getAndIncrement(this);
        C1116xab206122 c1116xab206122 = C1116xab206122.f5422xfbe0c504;
        i = SemaphoreKt.f2503x9e171bf9;
        long j = andIncrement / i;
        loop0: while (true) {
            findSegmentInternal = ConcurrentLinkedListKt.findSegmentInternal(c1120xd5e67af4, j, c1116xab206122);
            if (!SegmentOrClosed.m2356isClosedimpl(findSegmentInternal)) {
                Segment m2354getSegmentimpl = SegmentOrClosed.m2354getSegmentimpl(findSegmentInternal);
                while (true) {
                    Segment segment = (Segment) atomicReferenceFieldUpdater.get(this);
                    if (segment.id >= m2354getSegmentimpl.id) {
                        break loop0;
                    }
                    if (!m2354getSegmentimpl.tryIncPointers$kotlinx_coroutines_core()) {
                        break;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(this, segment, m2354getSegmentimpl)) {
                        if (atomicReferenceFieldUpdater.get(this) != segment) {
                            if (m2354getSegmentimpl.decPointers$kotlinx_coroutines_core()) {
                                m2354getSegmentimpl.remove();
                            }
                        }
                    }
                    if (segment.decPointers$kotlinx_coroutines_core()) {
                        segment.remove();
                    }
                }
            } else {
                break;
            }
        }
        C1120xd5e67af4 c1120xd5e67af42 = (C1120xd5e67af4) SegmentOrClosed.m2354getSegmentimpl(findSegmentInternal);
        i2 = SemaphoreKt.f2503x9e171bf9;
        int i3 = (int) (andIncrement % i2);
        AtomicReferenceArray atomicReferenceArray = c1120xd5e67af42.f5428x75d576dc;
        while (!atomicReferenceArray.compareAndSet(i3, null, waiter)) {
            if (atomicReferenceArray.get(i3) != null) {
                symbol = SemaphoreKt.f2499x3271d0aa;
                symbol2 = SemaphoreKt.f2500x1378447b;
                AtomicReferenceArray atomicReferenceArray2 = c1120xd5e67af42.f5428x75d576dc;
                while (!atomicReferenceArray2.compareAndSet(i3, symbol, symbol2)) {
                    if (atomicReferenceArray2.get(i3) != symbol) {
                        return false;
                    }
                }
                if (waiter instanceof CancellableContinuation) {
                    Intrinsics.checkNotNull(waiter, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
                    ((CancellableContinuation) waiter).resume((CancellableContinuation) Unit.INSTANCE, (Function3<? super Throwable, ? super CancellableContinuation, ? super CoroutineContext, Unit>) this.f2497x3271d0aa);
                } else if (waiter instanceof SelectInstance) {
                    ((SelectInstance) waiter).selectInRegistrationPhase(Unit.INSTANCE);
                } else {
                    throw new IllegalStateException(("unexpected: " + waiter).toString());
                }
                return true;
            }
        }
        waiter.invokeOnCancellation(c1120xd5e67af42, i3);
        return true;
    }

    public final void acquire(@NotNull CancellableContinuation<? super Unit> waiter) {
        while (true) {
            int andDecrement = f2495x34271fae.getAndDecrement(this);
            if (andDecrement <= this.f2496xfbe0c504) {
                if (andDecrement > 0) {
                    waiter.resume((CancellableContinuation<? super Unit>) Unit.INSTANCE, (Function3<? super Throwable, ? super CancellableContinuation<? super Unit>, ? super CoroutineContext, Unit>) this.f2497x3271d0aa);
                    return;
                } else {
                    Intrinsics.checkNotNull(waiter, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
                    if (m2381x3271d0aa((Waiter) waiter)) {
                        return;
                    }
                }
            }
        }
    }
}
