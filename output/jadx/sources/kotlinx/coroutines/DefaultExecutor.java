package kotlinx.coroutines;

import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.AbstractC0296x1378447b;
import kotlinx.coroutines.EventLoopImplBase;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0004\bÀ\u0002\u0018\u00002\u00020\u00012\u00060\u0002j\u0002`\u0003J\u001b\u0010\u0006\u001a\u00020\u00052\n\u0010\u0004\u001a\u00060\u0002j\u0002`\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J\u001f\u0010\f\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\nH\u0014¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ+\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\b2\n\u0010\u0011\u001a\u00060\u0002j\u0002`\u00032\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0017\u0010\u000fJ\u000f\u0010\u0019\u001a\u00020\u0005H\u0000¢\u0006\u0004\b\u0018\u0010\u000fJ\u0015\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\b¢\u0006\u0004\b\u001b\u0010\u001cJ\u000f\u0010\u001e\u001a\u00020\u001dH\u0016¢\u0006\u0004\b\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\u001d8\u0006X\u0086T¢\u0006\u0006\n\u0004\b \u0010!R\u001e\u0010#\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\f\n\u0004\b#\u0010$\u0012\u0004\b%\u0010\u000fR\u0016\u0010'\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0014\u0010+\u001a\u00020\"8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*R\u0014\u0010/\u001a\u00020,8@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b-\u0010.¨\u00060"}, d2 = {"Lkotlinx/coroutines/DefaultExecutor;", "Lkotlinx/coroutines/EventLoopImplBase;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "task", "", "enqueue", "(Ljava/lang/Runnable;)V", "", "now", "Lkotlinx/coroutines/EventLoopImplBase$DelayedTask;", "delayedTask", "reschedule", "(JLkotlinx/coroutines/EventLoopImplBase$DelayedTask;)V", "shutdown", "()V", "timeMillis", "block", "Lkotlin/coroutines/CoroutineContext;", "context", "Lkotlinx/coroutines/DisposableHandle;", "invokeOnTimeout", "(JLjava/lang/Runnable;Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/DisposableHandle;", "run", "ensureStarted$kotlinx_coroutines_core", "ensureStarted", "timeout", "shutdownForTests", "(J)V", "", "toString", "()Ljava/lang/String;", "THREAD_NAME", "Ljava/lang/String;", "Ljava/lang/Thread;", "_thread", "Ljava/lang/Thread;", "get_thread$annotations", "", "debugStatus", "I", "getThread", "()Ljava/lang/Thread;", "thread", "", "isThreadPresent$kotlinx_coroutines_core", "()Z", "isThreadPresent", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDefaultExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultExecutor.kt\nkotlinx/coroutines/DefaultExecutor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,195:1\n1#2:196\n*E\n"})
/* loaded from: classes3.dex */
public final class DefaultExecutor extends EventLoopImplBase implements Runnable {

    @NotNull
    public static final DefaultExecutor INSTANCE;

    @NotNull
    public static final String THREAD_NAME = "kotlinx.coroutines.DefaultExecutor";

    @Nullable
    private static volatile Thread _thread;
    private static volatile int debugStatus;

    /* renamed from: 뎡땝뒻땥되딤돳뎽딀딅돼땫돛듼뎽뒝됩뒨땣땬뒤땦땜둠딞돰뒘뎸땰될땦듬땭땬두딄딹뎡돠뒝드된땵땱땡딹딸뒛듔뒹디둡딄돸딨돳뒾뒉뎬듸돼돰뒐듬돼둡됐돳둑뒉땟뒀됨뒾땀땥땥돼듬땃된딟딝돵땜딄뒼딞될땄딄딟따땀땄돝될돷딻든땝디땅딹듻돴딐돝둘땄듟도땠딸돤돠땸돳듌뒘뒨든딎딝뒷땧됨딹땣땋, reason: contains not printable characters */
    public static final long f1770x34271fae;

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlinx.coroutines.DefaultExecutor, kotlinx.coroutines.EventLoopImplBase, kotlinx.coroutines.EventLoop] */
    static {
        Long l;
        ?? eventLoopImplBase = new EventLoopImplBase();
        INSTANCE = eventLoopImplBase;
        EventLoop.incrementUseCount$default(eventLoopImplBase, false, 1, null);
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        try {
            l = Long.getLong("kotlinx.coroutines.DefaultExecutor.keepAlive", 1000L);
        } catch (SecurityException unused) {
            l = 1000L;
        }
        f1770x34271fae = timeUnit.toNanos(l.longValue());
    }

    /* renamed from: 뎡디돳듬딁됫땥뒾땥딌딨따땍뒛땐든딜뒋돵돷땹뒘땦됐땔딄둘땯땧두땔땭된돵뒾뒹땟딠땪뒹도뒐돤돵듌땦둠돵돴땫둥듔듻딄딽뎠뎸땀땱득땯뎰두뒹디땅들뒀뒙딽뎡됫딞뒻듟딠뒾뒛딟듬득땬딌돨땳뒼딅뒷듰듽돶두뎨돰뎬돨딞뒐뒹딃드딁듌땫뒝땹땧됩땜딻됨땡드딐딨돤딌땨뒈뒼따딽뒹뎰딐뒷뒝딟땲뒨, reason: contains not printable characters */
    public static boolean m2221x9738a56c() {
        int i = debugStatus;
        if (i != 2 && i != 3) {
            return false;
        }
        return true;
    }

    @Override // kotlinx.coroutines.EventLoopImplBase
    public void enqueue(@NotNull Runnable task) {
        if (debugStatus != 4) {
            super.enqueue(task);
            return;
        }
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    public final synchronized void ensureStarted$kotlinx_coroutines_core() {
        debugStatus = 0;
        m2223x75d576dc();
        while (debugStatus == 0) {
            Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
            wait();
        }
    }

    @Override // kotlinx.coroutines.EventLoopImplPlatform
    @NotNull
    public Thread getThread() {
        Thread thread = _thread;
        if (thread == null) {
            return m2223x75d576dc();
        }
        return thread;
    }

    @Override // kotlinx.coroutines.EventLoopImplBase, kotlinx.coroutines.Delay
    @NotNull
    public DisposableHandle invokeOnTimeout(long timeMillis, @NotNull Runnable block, @NotNull CoroutineContext context) {
        return scheduleInvokeOnTimeout(timeMillis, block);
    }

    public final boolean isThreadPresent$kotlinx_coroutines_core() {
        if (_thread != null) {
            return true;
        }
        return false;
    }

    @Override // kotlinx.coroutines.EventLoopImplPlatform
    public void reschedule(long now, @NotNull EventLoopImplBase.DelayedTask delayedTask) {
        throw new RejectedExecutionException("DefaultExecutor was shut down. This error indicates that Dispatchers.shutdown() was invoked prior to completion of exiting coroutines, leaving coroutines in incomplete state. Please refer to Dispatchers.shutdown documentation for more details");
    }

    @Override // java.lang.Runnable
    public void run() {
        AbstractTimeSource abstractTimeSource;
        AbstractTimeSource abstractTimeSource2;
        AbstractTimeSource abstractTimeSource3;
        AbstractTimeSource abstractTimeSource4;
        AbstractTimeSource abstractTimeSource5;
        long nanoTime;
        AbstractTimeSource abstractTimeSource6;
        AbstractTimeSource abstractTimeSource7;
        ThreadLocalEventLoop.INSTANCE.setEventLoop$kotlinx_coroutines_core(this);
        abstractTimeSource = AbstractTimeSourceKt.f1751xfbe0c504;
        if (abstractTimeSource != null) {
            abstractTimeSource.registerTimeLoopThread();
        }
        try {
            synchronized (this) {
                if (m2221x9738a56c()) {
                    _thread = null;
                    m2222x1378447b();
                    abstractTimeSource7 = AbstractTimeSourceKt.f1751xfbe0c504;
                    if (abstractTimeSource7 != null) {
                        abstractTimeSource7.unregisterTimeLoopThread();
                    }
                    if (!isEmpty()) {
                        getThread();
                        return;
                    }
                    return;
                }
                debugStatus = 1;
                Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
                notifyAll();
                long j = Long.MAX_VALUE;
                while (true) {
                    Thread.interrupted();
                    long processNextEvent = processNextEvent();
                    if (processNextEvent == Long.MAX_VALUE) {
                        abstractTimeSource5 = AbstractTimeSourceKt.f1751xfbe0c504;
                        if (abstractTimeSource5 != null) {
                            nanoTime = abstractTimeSource5.nanoTime();
                        } else {
                            nanoTime = System.nanoTime();
                        }
                        if (j == Long.MAX_VALUE) {
                            j = f1770x34271fae + nanoTime;
                        }
                        long j2 = j - nanoTime;
                        if (j2 <= 0) {
                            _thread = null;
                            m2222x1378447b();
                            abstractTimeSource6 = AbstractTimeSourceKt.f1751xfbe0c504;
                            if (abstractTimeSource6 != null) {
                                abstractTimeSource6.unregisterTimeLoopThread();
                            }
                            if (!isEmpty()) {
                                getThread();
                                return;
                            }
                            return;
                        }
                        processNextEvent = AbstractC0296x1378447b.coerceAtMost(processNextEvent, j2);
                    } else {
                        j = Long.MAX_VALUE;
                    }
                    if (processNextEvent > 0) {
                        if (!m2221x9738a56c()) {
                            abstractTimeSource4 = AbstractTimeSourceKt.f1751xfbe0c504;
                            if (abstractTimeSource4 != null) {
                                abstractTimeSource4.parkNanos(this, processNextEvent);
                            } else {
                                LockSupport.parkNanos(this, processNextEvent);
                            }
                        } else {
                            _thread = null;
                            m2222x1378447b();
                            abstractTimeSource3 = AbstractTimeSourceKt.f1751xfbe0c504;
                            if (abstractTimeSource3 != null) {
                                abstractTimeSource3.unregisterTimeLoopThread();
                            }
                            if (!isEmpty()) {
                                getThread();
                                return;
                            }
                            return;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            _thread = null;
            m2222x1378447b();
            abstractTimeSource2 = AbstractTimeSourceKt.f1751xfbe0c504;
            if (abstractTimeSource2 != null) {
                abstractTimeSource2.unregisterTimeLoopThread();
            }
            if (!isEmpty()) {
                getThread();
            }
            throw th;
        }
    }

    @Override // kotlinx.coroutines.EventLoopImplBase, kotlinx.coroutines.EventLoop
    public void shutdown() {
        debugStatus = 4;
        super.shutdown();
    }

    public final synchronized void shutdownForTests(long timeout) {
        AbstractTimeSource abstractTimeSource;
        try {
            long currentTimeMillis = System.currentTimeMillis() + timeout;
            if (!m2221x9738a56c()) {
                debugStatus = 2;
            }
            while (debugStatus != 3 && _thread != null) {
                Thread thread = _thread;
                if (thread != null) {
                    abstractTimeSource = AbstractTimeSourceKt.f1751xfbe0c504;
                    if (abstractTimeSource != null) {
                        abstractTimeSource.unpark(thread);
                    } else {
                        LockSupport.unpark(thread);
                    }
                }
                if (currentTimeMillis - System.currentTimeMillis() <= 0) {
                    break;
                }
                Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
                wait(timeout);
            }
            debugStatus = 0;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    /* renamed from: toString */
    public String getF2411x1378447b() {
        return "DefaultExecutor";
    }

    /* renamed from: 뎠땄뒐돸듌돛뒐뒀듸딐딃땁듔뎡듌딀둬뒀되땳땳뒤뒼둠땮땄땤두땍뎻땧딻도듼뒬땡뒀듻딠돷뎸둑돵둬딹땐됫땅뎡딟될땯땔땋딟땳딃돳뒝디뒨듟돶딜땳딟땄뒀돝땮도도딄땯듰땮뎡뎡듟듻땄뒀뒻땭둑듨들들땸듟되둬뒝돰듔됩딨듌딜듻돝드뒾둑뎡듰땅딃딤땅뒨뒈뒹될듸돵둘뒐땭땁듸땮뒉땪딟든땻땱듻뒉, reason: contains not printable characters */
    public final synchronized void m2222x1378447b() {
        if (!m2221x9738a56c()) {
            return;
        }
        debugStatus = 3;
        resetAll();
        Intrinsics.checkNotNull(this, "null cannot be cast to non-null type java.lang.Object");
        notifyAll();
    }

    /* renamed from: 뎠땻땝뎹딽두딽둠땅땫땵뒈뒾땍뒤되뒵둠땯됫둡땁도뎹뎠땦뎽듽뒛땄땤딃돶땩딝딎듸딅뎬둑땀땝딻두뒘뒛돵땋듼둘듼땄딄돛딎딄돴딐뒐딝돠뎰땃뒘돸딨땟딐됨뒬둔땬따땹뎹뎽딽돼딤땠땣뒤됴됨든땵땻뒀뒝돰돸듬땮뎠뒀돷돵땍듐디듐듻땩득듻돴딜땋뒛땸돸딁딁땜땰땨땫뒼땔뒼둬됴땸뒋둬땥딠뒾땪됨, reason: contains not printable characters */
    public final synchronized Thread m2223x75d576dc() {
        Thread thread;
        thread = _thread;
        if (thread == null) {
            thread = new Thread(this, THREAD_NAME);
            _thread = thread;
            thread.setContextClassLoader(INSTANCE.getClass().getClassLoader());
            thread.setDaemon(true);
            thread.start();
        }
        return thread;
    }
}
