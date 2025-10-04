package kotlinx.coroutines;

import defpackage.AbstractC0892xc141c517;
import defpackage.C0449x4a89f611;
import defpackage.C0918x95ffe659;
import defpackage.C0921xdba6f326;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.ScopeCoroutine;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.intrinsics.CancellableKt;
import kotlinx.coroutines.intrinsics.UndispatchedKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {}, d2 = {}, k = 4, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class BuildersKt {
    @NotNull
    public static final <T> Deferred<T> async(@NotNull CoroutineScope coroutineScope, @NotNull CoroutineContext coroutineContext, @NotNull CoroutineStart coroutineStart, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2) {
        C0918x95ffe659 c0918x95ffe659;
        CoroutineContext newCoroutineContext = CoroutineContextKt.newCoroutineContext(coroutineScope, coroutineContext);
        if (coroutineStart.isLazy()) {
            c0918x95ffe659 = new C0918x95ffe659(newCoroutineContext, function2);
        } else {
            c0918x95ffe659 = (Deferred<T>) new AbstractCoroutine(newCoroutineContext, true, true);
        }
        ((AbstractCoroutine) c0918x95ffe659).start(coroutineStart, c0918x95ffe659, function2);
        return (Deferred<T>) c0918x95ffe659;
    }

    public static /* synthetic */ Deferred async$default(CoroutineScope coroutineScope, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return async(coroutineScope, coroutineContext, coroutineStart, function2);
    }

    @Nullable
    public static final <T> Object invoke(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return withContext(coroutineDispatcher, function2, continuation);
    }

    @NotNull
    public static final Job launch(@NotNull CoroutineScope coroutineScope, @NotNull CoroutineContext coroutineContext, @NotNull CoroutineStart coroutineStart, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super Unit>, ? extends Object> function2) {
        AbstractCoroutine abstractCoroutine;
        CoroutineContext newCoroutineContext = CoroutineContextKt.newCoroutineContext(coroutineScope, coroutineContext);
        if (coroutineStart.isLazy()) {
            abstractCoroutine = new C0921xdba6f326(newCoroutineContext, function2);
        } else {
            abstractCoroutine = new AbstractCoroutine(newCoroutineContext, true, true);
        }
        abstractCoroutine.start(coroutineStart, abstractCoroutine, function2);
        return abstractCoroutine;
    }

    public static /* synthetic */ Job launch$default(CoroutineScope coroutineScope, CoroutineContext coroutineContext, CoroutineStart coroutineStart, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i & 2) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        return launch(coroutineScope, coroutineContext, coroutineStart, function2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x0032, code lost:
    
        if (r1 == null) goto L84;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final <T> T runBlocking(@NotNull CoroutineContext coroutineContext, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2) {
        EventLoop eventLoop;
        CoroutineContext newCoroutineContext;
        AbstractTimeSource abstractTimeSource;
        long processNextEvent;
        AbstractTimeSource abstractTimeSource2;
        AbstractTimeSource abstractTimeSource3;
        Thread currentThread = Thread.currentThread();
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) coroutineContext.get(ContinuationInterceptor.INSTANCE);
        CompletedExceptionally completedExceptionally = null;
        if (continuationInterceptor == null) {
            eventLoop = ThreadLocalEventLoop.INSTANCE.getEventLoop$kotlinx_coroutines_core();
            newCoroutineContext = CoroutineContextKt.newCoroutineContext(GlobalScope.INSTANCE, coroutineContext.plus(eventLoop));
        } else {
            if (continuationInterceptor instanceof EventLoop) {
                eventLoop = (EventLoop) continuationInterceptor;
            } else {
                eventLoop = null;
            }
            if (eventLoop != null) {
                if (!eventLoop.shouldBeProcessedFromContext()) {
                    eventLoop = null;
                }
            }
            eventLoop = ThreadLocalEventLoop.INSTANCE.currentOrNull$kotlinx_coroutines_core();
            newCoroutineContext = CoroutineContextKt.newCoroutineContext(GlobalScope.INSTANCE, coroutineContext);
        }
        C0449x4a89f611 c0449x4a89f611 = new C0449x4a89f611(newCoroutineContext, currentThread, eventLoop);
        c0449x4a89f611.start(CoroutineStart.DEFAULT, c0449x4a89f611, function2);
        abstractTimeSource = AbstractTimeSourceKt.f1751xfbe0c504;
        if (abstractTimeSource != null) {
            abstractTimeSource.registerTimeLoopThread();
        }
        EventLoop eventLoop2 = c0449x4a89f611.f3905x9738a56c;
        if (eventLoop2 != null) {
            try {
                EventLoop.incrementUseCount$default(eventLoop2, false, 1, null);
            } finally {
                abstractTimeSource3 = AbstractTimeSourceKt.f1751xfbe0c504;
                if (abstractTimeSource3 != null) {
                    abstractTimeSource3.unregisterTimeLoopThread();
                }
            }
        }
        while (true) {
            if (eventLoop2 != null) {
                try {
                    processNextEvent = eventLoop2.processNextEvent();
                } catch (Throwable th) {
                    if (eventLoop2 != null) {
                        EventLoop.decrementUseCount$default(eventLoop2, false, 1, null);
                    }
                    throw th;
                }
            } else {
                processNextEvent = Long.MAX_VALUE;
            }
            if (c0449x4a89f611.isCompleted()) {
                break;
            }
            abstractTimeSource2 = AbstractTimeSourceKt.f1751xfbe0c504;
            if (abstractTimeSource2 != null) {
                abstractTimeSource2.parkNanos(c0449x4a89f611, processNextEvent);
            } else {
                LockSupport.parkNanos(c0449x4a89f611, processNextEvent);
            }
            if (Thread.interrupted()) {
                c0449x4a89f611.cancelCoroutine(new InterruptedException());
            }
        }
        if (eventLoop2 != null) {
            EventLoop.decrementUseCount$default(eventLoop2, false, 1, null);
        }
        T t = (T) JobSupportKt.unboxState(c0449x4a89f611.getState$kotlinx_coroutines_core());
        if (t instanceof CompletedExceptionally) {
            completedExceptionally = (CompletedExceptionally) t;
        }
        if (completedExceptionally == null) {
            return t;
        }
        throw completedExceptionally.cause;
    }

    public static /* synthetic */ Object runBlocking$default(CoroutineContext coroutineContext, Function2 function2, int i, Object obj) {
        if ((i & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return runBlocking(coroutineContext, function2);
    }

    @Nullable
    public static final <T> Object withContext(@NotNull CoroutineContext coroutineContext, @NotNull Function2<? super CoroutineScope, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        Object result$kotlinx_coroutines_core;
        CoroutineContext context = continuation.getContext();
        CoroutineContext newCoroutineContext = CoroutineContextKt.newCoroutineContext(context, coroutineContext);
        JobKt.ensureActive(newCoroutineContext);
        if (newCoroutineContext == context) {
            ScopeCoroutine scopeCoroutine = new ScopeCoroutine(newCoroutineContext, continuation);
            result$kotlinx_coroutines_core = UndispatchedKt.startUndispatchedOrReturn(scopeCoroutine, scopeCoroutine, function2);
        } else {
            ContinuationInterceptor.Companion companion = ContinuationInterceptor.INSTANCE;
            if (Intrinsics.areEqual(newCoroutineContext.get(companion), context.get(companion))) {
                UndispatchedCoroutine undispatchedCoroutine = new UndispatchedCoroutine(newCoroutineContext, continuation);
                CoroutineContext context2 = undispatchedCoroutine.getContext();
                Object updateThreadContext = ThreadContextKt.updateThreadContext(context2, null);
                try {
                    Object startUndispatchedOrReturn = UndispatchedKt.startUndispatchedOrReturn(undispatchedCoroutine, undispatchedCoroutine, function2);
                    ThreadContextKt.restoreThreadContext(context2, updateThreadContext);
                    result$kotlinx_coroutines_core = startUndispatchedOrReturn;
                } catch (Throwable th) {
                    ThreadContextKt.restoreThreadContext(context2, updateThreadContext);
                    throw th;
                }
            } else {
                DispatchedCoroutine dispatchedCoroutine = new DispatchedCoroutine(newCoroutineContext, continuation);
                CancellableKt.startCoroutineCancellable(function2, dispatchedCoroutine, dispatchedCoroutine);
                result$kotlinx_coroutines_core = dispatchedCoroutine.getResult$kotlinx_coroutines_core();
            }
        }
        if (result$kotlinx_coroutines_core == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result$kotlinx_coroutines_core;
    }
}
