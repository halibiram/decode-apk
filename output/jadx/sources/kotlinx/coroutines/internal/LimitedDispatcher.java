package kotlinx.coroutines.internal;

import defpackage.AbstractC0362x4440ab85;
import defpackage.RunnableC0925xa2ee6943;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.DefaultExecutorKt;
import kotlinx.coroutines.Delay;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u00012\u00020\u0002:\u0001%B!\u0012\u0006\u0010\u0003\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\b\u0010\tJ!\u0010\n\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\n\u0010\u000bJ#\u0010\u0012\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\f2\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000fH\u0016¢\u0006\u0004\b\u0012\u0010\u0013J#\u0010\u0014\u001a\u00020\u00112\u0006\u0010\r\u001a\u00020\f2\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000fH\u0017¢\u0006\u0004\b\u0014\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0019\u001a\u00020\u00112\u0006\u0010\u0018\u001a\u00020\u0017H\u0097A¢\u0006\u0004\b\u0019\u0010\u001aJ&\u0010\u001e\u001a\u00020\u00112\u0006\u0010\u001b\u001a\u00020\u00172\f\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00110\u001cH\u0096\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ,\u0010!\u001a\u00020 2\u0006\u0010\u001b\u001a\u00020\u00172\n\u0010\u0010\u001a\u00060\u000ej\u0002`\u000f2\u0006\u0010\r\u001a\u00020\fH\u0096\u0001¢\u0006\u0004\b!\u0010\"R\u000b\u0010$\u001a\u00020#8\u0002X\u0082\u0004¨\u0006&"}, d2 = {"Lkotlinx/coroutines/internal/LimitedDispatcher;", "Lkotlinx/coroutines/CoroutineDispatcher;", "Lkotlinx/coroutines/Delay;", "dispatcher", "", "parallelism", "", "name", "<init>", "(Lkotlinx/coroutines/CoroutineDispatcher;ILjava/lang/String;)V", "limitedParallelism", "(ILjava/lang/String;)Lkotlinx/coroutines/CoroutineDispatcher;", "Lkotlin/coroutines/CoroutineContext;", "context", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "block", "", "dispatch", "(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V", "dispatchYield", "toString", "()Ljava/lang/String;", "", "time", "delay", "(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "timeMillis", "Lkotlinx/coroutines/CancellableContinuation;", "continuation", "scheduleResumeAfterDelay", "(JLkotlinx/coroutines/CancellableContinuation;)V", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnTimeout", "(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;", "Lkotlinx/atomicfu/AtomicInt;", "runningWorkers", "딄딄뒘뒐땍들돸뒈땟뒻땱뎬땋딀됫뒛뎽딎뒵땤딟딄땟땦땃땤뒷된드도딻따땃딄듬딜디돝뎬뎻듬뒼땟돤땦듔돶땫뒝땧땠뎻뎠땔돤뒻됨도됐딞딸땮둣듰뎸땝뒼듌듐뒀듼됨뒹돳딁듬뎨듔딎딝디뒾딽둔딄뎽땟됩땱딎듨뒙돤뒼딎땀땱뒘딸땹뎠뎻듐땻딜땃득땟딸딤땮둘뒻땹땬땋뒻땟뒝땐땋뒋돝뎸딞될딐딄뎽뒙", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nLimitedDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,154:1\n62#1,18:155\n62#1,18:173\n29#2:191\n29#2:193\n16#3:192\n16#3:194\n*S KotlinDebug\n*F\n+ 1 LimitedDispatcher.kt\nkotlinx/coroutines/internal/LimitedDispatcher\n*L\n44#1:155,18\n51#1:173,18\n85#1:191\n98#1:193\n85#1:192\n98#1:194\n*E\n"})
/* loaded from: classes3.dex */
public final class LimitedDispatcher extends CoroutineDispatcher implements Delay {

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f2392x34271fae = AtomicIntegerFieldUpdater.newUpdater(LimitedDispatcher.class, "runningWorkers$volatile");
    private volatile /* synthetic */ int runningWorkers$volatile;

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final /* synthetic */ Delay f2393xfbe0c504;

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final CoroutineDispatcher f2394x3271d0aa;

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final int f2395x1378447b;

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final String f2396x75d576dc;

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public final LockFreeTaskQueue f2397x9738a56c;

    /* renamed from: 뎡딞득땤뒀땝딹땮뒀딝땰듼뎽뒤뎽듸딃됴땰딌돼뒷딠듰뎰딀둬듔뒤둣땭땥딻둘뎨땯딽뒻딀뒋뎰땔득뒀둣땳땹뒼땄땠득딜돴땄뒬땟뒻돶땮뒉딌뒬뒙듼따딅듽뒤돸듌땨땯디뎽될딁돳둥돨딐둣둘돴뒨듽딹도땐땐뎡딽땟듸돝뎽따땯둣되땄뒉뒉딄듼딁도뎹돤뒼뒉땬땄딸뒵든뒉땨땃땄딨됩도딐득둑듔딽땵뒛돤, reason: contains not printable characters */
    public final Object f2398x9e171bf9;

    /* JADX WARN: Multi-variable type inference failed */
    public LimitedDispatcher(@NotNull CoroutineDispatcher coroutineDispatcher, int i, @Nullable String str) {
        Delay delay;
        if (coroutineDispatcher instanceof Delay) {
            delay = (Delay) coroutineDispatcher;
        } else {
            delay = null;
        }
        this.f2393xfbe0c504 = delay == null ? DefaultExecutorKt.getDefaultDelay() : delay;
        this.f2394x3271d0aa = coroutineDispatcher;
        this.f2395x1378447b = i;
        this.f2396x75d576dc = str;
        this.f2397x9738a56c = new LockFreeTaskQueue(false);
        this.f2398x9e171bf9 = new Object();
    }

    @Override // kotlinx.coroutines.Delay
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @Nullable
    public Object delay(long j, @NotNull Continuation<? super Unit> continuation) {
        return this.f2393xfbe0c504.delay(j, continuation);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatch(@NotNull CoroutineContext context, @NotNull Runnable block) {
        Runnable m2345xfbe0c504;
        this.f2397x9738a56c.addLast(block);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f2392x34271fae;
        if (atomicIntegerFieldUpdater.get(this) < this.f2395x1378447b && m2346x3271d0aa() && (m2345xfbe0c504 = m2345xfbe0c504()) != null) {
            try {
                DispatchedContinuationKt.safeDispatch(this.f2394x3271d0aa, this, new RunnableC0925xa2ee6943(this, m2345xfbe0c504));
            } catch (Throwable th) {
                atomicIntegerFieldUpdater.decrementAndGet(this);
                throw th;
            }
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @InternalCoroutinesApi
    public void dispatchYield(@NotNull CoroutineContext context, @NotNull Runnable block) {
        Runnable m2345xfbe0c504;
        this.f2397x9738a56c.addLast(block);
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f2392x34271fae;
        if (atomicIntegerFieldUpdater.get(this) < this.f2395x1378447b && m2346x3271d0aa() && (m2345xfbe0c504 = m2345xfbe0c504()) != null) {
            try {
                this.f2394x3271d0aa.dispatchYield(this, new RunnableC0925xa2ee6943(this, m2345xfbe0c504));
            } catch (Throwable th) {
                atomicIntegerFieldUpdater.decrementAndGet(this);
                throw th;
            }
        }
    }

    @Override // kotlinx.coroutines.Delay
    @NotNull
    public DisposableHandle invokeOnTimeout(long timeMillis, @NotNull Runnable block, @NotNull CoroutineContext context) {
        return this.f2393xfbe0c504.invokeOnTimeout(timeMillis, block, context);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public CoroutineDispatcher limitedParallelism(int parallelism, @Nullable String name) {
        LimitedDispatcherKt.checkParallelism(parallelism);
        if (parallelism >= this.f2395x1378447b) {
            return LimitedDispatcherKt.namedOrThis(this, name);
        }
        return super.limitedParallelism(parallelism, name);
    }

    @Override // kotlinx.coroutines.Delay
    public void scheduleResumeAfterDelay(long timeMillis, @NotNull CancellableContinuation<? super Unit> continuation) {
        this.f2393xfbe0c504.scheduleResumeAfterDelay(timeMillis, continuation);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    /* renamed from: toString */
    public String getF2411x1378447b() {
        String str = this.f2396x75d576dc;
        if (str == null) {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f2394x3271d0aa);
            sb.append(".limitedParallelism(");
            return AbstractC0362x4440ab85.m2934x9d12c1f4(sb, this.f2395x1378447b, ')');
        }
        return str;
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸, reason: contains not printable characters */
    public final Runnable m2345xfbe0c504() {
        while (true) {
            Runnable runnable = (Runnable) this.f2397x9738a56c.removeFirstOrNull();
            if (runnable == null) {
                synchronized (this.f2398x9e171bf9) {
                    AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f2392x34271fae;
                    atomicIntegerFieldUpdater.decrementAndGet(this);
                    if (this.f2397x9738a56c.getSize() == 0) {
                        return null;
                    }
                    atomicIntegerFieldUpdater.incrementAndGet(this);
                }
            } else {
                return runnable;
            }
        }
    }

    /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
    public final boolean m2346x3271d0aa() {
        synchronized (this.f2398x9e171bf9) {
            AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f2392x34271fae;
            if (atomicIntegerFieldUpdater.get(this) >= this.f2395x1378447b) {
                return false;
            }
            atomicIntegerFieldUpdater.incrementAndGet(this);
            return true;
        }
    }
}
