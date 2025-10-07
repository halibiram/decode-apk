package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.scheduling.Task;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0003\n\u0002\b\f\b \u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00002\u00060\u0002j\u0002`\u0003B\u0011\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\f\u001a\u0004\u0018\u00010\rH ¢\u0006\u0002\b\u000eJ\u001f\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\r2\u0006\u0010\u0012\u001a\u00020\u0013H\u0010¢\u0006\u0002\b\u0014J\u001f\u0010\u0015\u001a\u0002H\u0001\"\u0004\b\u0001\u0010\u00012\b\u0010\u0016\u001a\u0004\u0018\u00010\rH\u0010¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u0019\u001a\u0004\u0018\u00010\u00132\b\u0010\u0016\u001a\u0004\u0018\u00010\rH\u0010¢\u0006\u0002\b\u001aJ\u0006\u0010\u001b\u001a\u00020\u0010J\u0015\u0010\u001c\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u0013H\u0000¢\u0006\u0002\b\u001eR\u0012\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0002\n\u0000R\u0018\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\tX \u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u001f"}, d2 = {"Lkotlinx/coroutines/DispatchedTask;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/scheduling/Task;", "Lkotlinx/coroutines/SchedulerTask;", "resumeMode", "", "<init>", "(I)V", "delegate", "Lkotlin/coroutines/Continuation;", "getDelegate$kotlinx_coroutines_core", "()Lkotlin/coroutines/Continuation;", "takeState", "", "takeState$kotlinx_coroutines_core", "cancelCompletedResult", "", "takenState", "cause", "", "cancelCompletedResult$kotlinx_coroutines_core", "getSuccessfulResult", "state", "getSuccessfulResult$kotlinx_coroutines_core", "(Ljava/lang/Object;)Ljava/lang/Object;", "getExceptionalResult", "getExceptionalResult$kotlinx_coroutines_core", "run", "handleFatalException", "exception", "handleFatalException$kotlinx_coroutines_core", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDispatchedTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,220:1\n1#2:221\n103#3,10:222\n114#3,2:236\n204#4:232\n205#4:235\n57#5,2:233\n*S KotlinDebug\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n*L\n82#1:222,10\n82#1:236,2\n95#1:232\n95#1:235\n95#1:233,2\n*E\n"})
/* loaded from: classes3.dex */
public abstract class DispatchedTask<T> extends Task {

    @JvmField
    public int resumeMode;

    public DispatchedTask(int i) {
        this.resumeMode = i;
    }

    public void cancelCompletedResult$kotlinx_coroutines_core(@Nullable Object takenState, @NotNull Throwable cause) {
    }

    @NotNull
    public abstract Continuation<T> getDelegate$kotlinx_coroutines_core();

    @Nullable
    public Throwable getExceptionalResult$kotlinx_coroutines_core(@Nullable Object state) {
        CompletedExceptionally completedExceptionally;
        if (state instanceof CompletedExceptionally) {
            completedExceptionally = (CompletedExceptionally) state;
        } else {
            completedExceptionally = null;
        }
        if (completedExceptionally == null) {
            return null;
        }
        return completedExceptionally.cause;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T getSuccessfulResult$kotlinx_coroutines_core(@Nullable Object state) {
        return state;
    }

    public final void handleFatalException$kotlinx_coroutines_core(@NotNull Throwable exception) {
        CoroutineExceptionHandlerKt.handleCoroutineException(getDelegate$kotlinx_coroutines_core().getContext(), new CoroutinesInternalError("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", exception));
    }

    @Override // java.lang.Runnable
    public final void run() {
        UndispatchedCoroutine<?> undispatchedCoroutine;
        try {
            Continuation<T> delegate$kotlinx_coroutines_core = getDelegate$kotlinx_coroutines_core();
            Intrinsics.checkNotNull(delegate$kotlinx_coroutines_core, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>");
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) delegate$kotlinx_coroutines_core;
            Continuation<T> continuation = dispatchedContinuation.continuation;
            Object obj = dispatchedContinuation.countOrElement;
            CoroutineContext context = continuation.getContext();
            Object updateThreadContext = ThreadContextKt.updateThreadContext(context, obj);
            Job job = null;
            if (updateThreadContext != ThreadContextKt.NO_THREAD_ELEMENTS) {
                undispatchedCoroutine = CoroutineContextKt.updateUndispatchedCompletion(continuation, context, updateThreadContext);
            } else {
                undispatchedCoroutine = null;
            }
            try {
                CoroutineContext context2 = continuation.getContext();
                Object takeState$kotlinx_coroutines_core = takeState$kotlinx_coroutines_core();
                Throwable exceptionalResult$kotlinx_coroutines_core = getExceptionalResult$kotlinx_coroutines_core(takeState$kotlinx_coroutines_core);
                if (exceptionalResult$kotlinx_coroutines_core == null && DispatchedTaskKt.isCancellableMode(this.resumeMode)) {
                    job = (Job) context2.get(Job.INSTANCE);
                }
                if (job != null && !job.isActive()) {
                    CancellationException cancellationException = job.getCancellationException();
                    cancelCompletedResult$kotlinx_coroutines_core(takeState$kotlinx_coroutines_core, cancellationException);
                    Result.Companion companion = Result.INSTANCE;
                    continuation.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(cancellationException)));
                } else if (exceptionalResult$kotlinx_coroutines_core != null) {
                    Result.Companion companion2 = Result.INSTANCE;
                    continuation.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(exceptionalResult$kotlinx_coroutines_core)));
                } else {
                    Result.Companion companion3 = Result.INSTANCE;
                    continuation.resumeWith(Result.m1764constructorimpl(getSuccessfulResult$kotlinx_coroutines_core(takeState$kotlinx_coroutines_core)));
                }
                if (undispatchedCoroutine == null || undispatchedCoroutine.clearThreadContext()) {
                    ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                }
            } catch (Throwable th) {
                if (undispatchedCoroutine == null || undispatchedCoroutine.clearThreadContext()) {
                    ThreadContextKt.restoreThreadContext(context, updateThreadContext);
                }
                throw th;
            }
        } catch (DispatchException e) {
            CoroutineExceptionHandlerKt.handleCoroutineException(getDelegate$kotlinx_coroutines_core().getContext(), e.getCause());
        } catch (Throwable th2) {
            handleFatalException$kotlinx_coroutines_core(th2);
        }
    }

    @Nullable
    public abstract Object takeState$kotlinx_coroutines_core();
}
