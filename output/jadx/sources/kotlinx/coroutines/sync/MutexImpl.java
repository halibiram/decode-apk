package kotlinx.coroutines.sync;

import defpackage.AbstractC0892xc141c517;
import defpackage.C0461xe717dee;
import defpackage.C0991x18f9c879;
import defpackage.C0992x9681ccaa;
import defpackage.C0993xbc48de48;
import defpackage.C0994x48d06409;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CancellableContinuationKt;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.selects.SelectClause2;
import kotlinx.coroutines.selects.SelectClause2Impl;
import kotlinx.coroutines.selects.SelectInstance;
import kotlinx.coroutines.selects.SelectInstanceInternal;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0010\u0018\u00002\u00020\u00012\u00020\u0002:\u0002$%B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001a\u0010\f\u001a\u00020\u000b2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0096@¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000e\u001a\u00020\u00032\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000e\u0010\nJ\u0019\u0010\u000f\u001a\u00020\u000b2\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J%\u0010\u0013\u001a\u00020\u000b2\n\u0010\u0012\u001a\u0006\u0012\u0002\b\u00030\u00112\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J%\u0010\u0016\u001a\u0004\u0018\u00010\u00072\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\u0015\u001a\u0004\u0018\u00010\u0007H\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR(\u0010 \u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0007\u0012\u0004\u0012\u00020\u00020\u001b8VX\u0096\u0004¢\u0006\f\u0012\u0004\b\u001e\u0010\u001f\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010!\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b!\u0010\"R\u0013\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00070#8\u0002X\u0082\u0004¨\u0006&"}, d2 = {"Lkotlinx/coroutines/sync/MutexImpl;", "Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;", "Lkotlinx/coroutines/sync/Mutex;", "", "locked", "<init>", "(Z)V", "", "owner", "holdsLock", "(Ljava/lang/Object;)Z", "", "lock", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "tryLock", "unlock", "(Ljava/lang/Object;)V", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "onLockRegFunction", "(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", "result", "onLockProcessResult", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "", "toString", "()Ljava/lang/String;", "Lkotlinx/coroutines/selects/SelectClause2;", "getOnLock", "()Lkotlinx/coroutines/selects/SelectClause2;", "getOnLock$annotations", "()V", "onLock", "isLocked", "()Z", "Lkotlinx/atomicfu/AtomicRef;", "딟땩듽땮뒨듻둥땩뒾돶돶돳딃땃듼뒝디땍뒀땪듬땁땦땻땝뒙둑땋땩뒤뒻땯듌들뒤땍들딐돠든돼됴됐됫둘땧딻땐듐딃돸두둣뒾돨딤듟뒘둬딨뒻뎬디딜땭둔땳땃땥뒋도듼뒻되디땍땻듼듬땍뒨땨돝돳뎨땠뒉뒤뒹땳땨돨돳될뒉듸드땪두땤땁듌딜딅딜땭둡돼뒀땪돛돝돷뎸딨듟딟돝될딨땵뒐딀딸땜뒾됐땜땮둠", "딟땻됴돼뎸딟딐됩뒀뎽뒛뎠돷땡돸땳뒻뒋땀돴뎡땔땄돼됐듻뒋땤둬땪듌딌됐땬땸땩돤땹땝땬득딞뒨된땟두딞땝딌듻딞듼드뒝땨땵돴돝뎠도땦디듼땬돸듨듔뎹땀땯뎻뒋됩돷뒵땠되돸뒻돷땅뒉땸땲됴되땍땪듸둔뎽됐딜돸땥들둑땧딹땄둣둔땤땰되뒻땬둡돝땮뒋디둬땁뒈땨뒀득딻딠돨둔딟땰돵땲딽땬뎠땐", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMutex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,314:1\n444#2,12:315\n1#3:327\n*S KotlinDebug\n*F\n+ 1 Mutex.kt\nkotlinx/coroutines/sync/MutexImpl\n*L\n171#1:315,12\n*E\n"})
/* loaded from: classes3.dex */
public class MutexImpl extends SemaphoreAndMutexImpl implements Mutex {

    /* renamed from: 뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f2487x3db60231 = AtomicReferenceFieldUpdater.newUpdater(MutexImpl.class, Object.class, "owner$volatile");
    private volatile /* synthetic */ Object owner$volatile;

    /* renamed from: 뎡땣땮땻둔땀딨뎸됴뎨땮듽뒼따땠듬돰듟뒉돤뒹딄딟땠돶딜딤듔드돵땃뎹듽딅둔땹듔딽듟뒛듌뎰돛든돼뎨딝돝되딠듟된돶뒋뎸뒉둔되뎬됨뒾될땩딐땀됐듼돛뒛땹딜딄뎨딹듰딜뎨듻땍딠뎸딤뒨땝듰따듐딄딤땯땮딹됨땨땧뒹땧됩땻땬듟뒹뒷돼될땐뎸도돰딨돵듟득뎽뒨듸뒘따뒛뒝뒙땐뎬돵뎰디딜땝됨두, reason: contains not printable characters */
    public final C0461xe717dee f2488x95f25580;

    public MutexImpl(boolean z) {
        super(1, z ? 1 : 0);
        Symbol access$getNO_OWNER$p;
        if (z) {
            access$getNO_OWNER$p = null;
        } else {
            access$getNO_OWNER$p = MutexKt.access$getNO_OWNER$p();
        }
        this.owner$volatile = access$getNO_OWNER$p;
        this.f2488x95f25580 = new C0461xe717dee(this, 2);
    }

    public static /* synthetic */ void getOnLock$annotations() {
    }

    @Override // kotlinx.coroutines.sync.Mutex
    @NotNull
    public SelectClause2<Object, Mutex> getOnLock() {
        C0993xbc48de48 c0993xbc48de48 = C0993xbc48de48.f5173xfbe0c504;
        Intrinsics.checkNotNull(c0993xbc48de48, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"select\")] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \"param\")] kotlin.Any?, kotlin.Unit>");
        Function3 function3 = (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(c0993xbc48de48, 3);
        C0994x48d06409 c0994x48d06409 = C0994x48d06409.f5174xfbe0c504;
        Intrinsics.checkNotNull(c0994x48d06409, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \"clauseObject\")] kotlin.Any, @[ParameterName(name = \"param\")] kotlin.Any?, @[ParameterName(name = \"clauseResult\")] kotlin.Any?, kotlin.Any?>");
        return new SelectClause2Impl(this, function3, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(c0994x48d06409, 3), this.f2488x95f25580);
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public boolean holdsLock(@NotNull Object owner) {
        char c;
        while (true) {
            if (!isLocked()) {
                c = 0;
                break;
            }
            Object obj = f2487x3db60231.get(this);
            if (obj != MutexKt.access$getNO_OWNER$p()) {
                if (obj == owner) {
                    c = 1;
                } else {
                    c = 2;
                }
            }
        }
        if (c == 1) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public boolean isLocked() {
        if (getAvailablePermits() == 0) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.sync.Mutex
    @Nullable
    public Object lock(@Nullable Object obj, @NotNull Continuation<? super Unit> continuation) {
        if (tryLock(obj)) {
            return Unit.INSTANCE;
        }
        Object m2379x1378447b = m2379x1378447b(obj, continuation);
        if (m2379x1378447b != AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return Unit.INSTANCE;
        }
        return m2379x1378447b;
    }

    @Nullable
    public Object onLockProcessResult(@Nullable Object owner, @Nullable Object result) {
        if (!Intrinsics.areEqual(result, MutexKt.access$getON_LOCK_ALREADY_LOCKED_BY_OWNER$p())) {
            return this;
        }
        throw new IllegalStateException(("This mutex is already locked by the specified owner: " + owner).toString());
    }

    public void onLockRegFunction(@NotNull SelectInstance<?> select, @Nullable Object owner) {
        if (owner != null && holdsLock(owner)) {
            select.selectInRegistrationPhase(MutexKt.access$getON_LOCK_ALREADY_LOCKED_BY_OWNER$p());
        } else {
            Intrinsics.checkNotNull(select, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectInstanceInternal<*>");
            onAcquireRegFunction(new C0992x9681ccaa(this, (SelectInstanceInternal) select, owner), owner);
        }
    }

    @NotNull
    public String toString() {
        return "Mutex@" + DebugStringsKt.getHexAddress(this) + "[isLocked=" + isLocked() + ",owner=" + f2487x3db60231.get(this) + ']';
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public boolean tryLock(@Nullable Object owner) {
        char c;
        char c2;
        do {
            boolean tryAcquire = tryAcquire();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2487x3db60231;
            if (tryAcquire) {
                atomicReferenceFieldUpdater.set(this, owner);
                c = 0;
                break;
            }
            if (owner == null) {
                break;
            }
            while (true) {
                if (!isLocked()) {
                    c2 = 0;
                    break;
                }
                Object obj = atomicReferenceFieldUpdater.get(this);
                if (obj != MutexKt.access$getNO_OWNER$p()) {
                    if (obj == owner) {
                        c2 = 1;
                    } else {
                        c2 = 2;
                    }
                }
            }
            if (c2 == 1) {
                c = 2;
                break;
            }
        } while (c2 != 2);
        c = 1;
        if (c == 0) {
            return true;
        }
        if (c != 1) {
            if (c != 2) {
                throw new IllegalStateException("unexpected");
            }
            throw new IllegalStateException(("This mutex is already locked by the specified owner: " + owner).toString());
        }
        return false;
    }

    @Override // kotlinx.coroutines.sync.Mutex
    public void unlock(@Nullable Object owner) {
        while (isLocked()) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f2487x3db60231;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj != MutexKt.access$getNO_OWNER$p()) {
                if (obj != owner && owner != null) {
                    throw new IllegalStateException(("This mutex is locked by " + obj + ", but " + owner + " is expected").toString());
                }
                Symbol access$getNO_OWNER$p = MutexKt.access$getNO_OWNER$p();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, access$getNO_OWNER$p)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                release();
                return;
            }
        }
        throw new IllegalStateException("This mutex is not locked");
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final Object m2379x1378447b(Object obj, Continuation continuation) {
        CancellableContinuationImpl orCreateCancellableContinuation = CancellableContinuationKt.getOrCreateCancellableContinuation(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
        try {
            acquire((CancellableContinuation<? super Unit>) new C0991x18f9c879(this, orCreateCancellableContinuation, obj));
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
}
