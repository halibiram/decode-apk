package kotlinx.coroutines;

import defpackage.AbstractC0892xc141c517;
import defpackage.C0512x2331f510;
import defpackage.C0513x476a4a0c;
import defpackage.C0901xf47f0442;
import java.util.Iterator;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.sequences.Sequence;
import kotlinx.coroutines.Job;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {}, d2 = {}, k = 4, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class JobKt {
    @NotNull
    public static final CompletableJob Job(@Nullable Job job) {
        return new JobImpl(job);
    }

    public static /* synthetic */ CompletableJob Job$default(Job job, int i, Object obj) {
        if ((i & 1) != 0) {
            job = null;
        }
        return Job(job);
    }

    public static final void cancel(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job != null) {
            job.cancel(cancellationException);
        }
    }

    public static /* synthetic */ void cancel$default(CoroutineContext coroutineContext, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        cancel(coroutineContext, cancellationException);
    }

    @Nullable
    public static final Object cancelAndJoin(@NotNull Job job, @NotNull Continuation<? super Unit> continuation) {
        Job.DefaultImpls.cancel$default(job, (CancellationException) null, 1, (Object) null);
        Object join = job.join(continuation);
        if (join != AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            return Unit.INSTANCE;
        }
        return join;
    }

    public static final void cancelChildren(@NotNull Job job, @Nullable CancellationException cancellationException) {
        Iterator<Job> it = job.getChildren().iterator();
        while (it.hasNext()) {
            it.next().cancel(cancellationException);
        }
    }

    public static /* synthetic */ void cancelChildren$default(Job job, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        cancelChildren(job, cancellationException);
    }

    @Deprecated(level = DeprecationLevel.WARNING, message = "This function does not do what its name implies: it will not cancel the future if just cancel() was called.", replaceWith = @ReplaceWith(expression = "this.invokeOnCancellation { future.cancel(false) }", imports = {}))
    public static final void cancelFutureOnCancellation(@NotNull CancellableContinuation<?> cancellableContinuation, @NotNull Future<?> future) {
        CancellableContinuationKt.invokeOnCancellation(cancellableContinuation, new C0512x2331f510(future, 2));
    }

    @NotNull
    public static final DisposableHandle disposeOnCompletion(@NotNull Job job, @NotNull DisposableHandle disposableHandle) {
        return invokeOnCompletion$default(job, false, new C0513x476a4a0c(disposableHandle, 1), 1, null);
    }

    public static final void ensureActive(@NotNull Job job) {
        if (!job.isActive()) {
            throw job.getCancellationException();
        }
    }

    @NotNull
    public static final Job getJob(@NotNull CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job != null) {
            return job;
        }
        throw new IllegalStateException(("Current context doesn't contain Job in it: " + coroutineContext).toString());
    }

    @NotNull
    public static final DisposableHandle invokeOnCompletion(@NotNull Job job, boolean z, @NotNull JobNode jobNode) {
        if (job instanceof JobSupport) {
            return ((JobSupport) job).invokeOnCompletionInternal$kotlinx_coroutines_core(z, jobNode);
        }
        return job.invokeOnCompletion(jobNode.getOnCancelling(), z, new C0901xf47f0442(1, jobNode, JobNode.class, "invoke", "invoke(Ljava/lang/Throwable;)V", 0));
    }

    public static /* synthetic */ DisposableHandle invokeOnCompletion$default(Job job, boolean z, JobNode jobNode, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        return invokeOnCompletion(job, z, jobNode);
    }

    public static final boolean isActive(@NotNull CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job != null) {
            return job.isActive();
        }
        return true;
    }

    /* renamed from: Job$default */
    public static /* synthetic */ Job m2230Job$default(Job job, int i, Object obj) {
        if ((i & 1) != 0) {
            job = null;
        }
        return Job(job);
    }

    public static /* synthetic */ void cancel$default(Job job, String str, Throwable th, int i, Object obj) {
        if ((i & 2) != 0) {
            th = null;
        }
        cancel(job, str, th);
    }

    public static /* synthetic */ void cancelChildren$default(Job job, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            th = null;
        }
        cancelChildren(job, th);
    }

    public static final void ensureActive(@NotNull CoroutineContext coroutineContext) {
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job != null) {
            ensureActive(job);
        }
    }

    public static final void cancel(@NotNull Job job, @NotNull String str, @Nullable Throwable th) {
        job.cancel(ExceptionsKt.CancellationException(str, th));
    }

    public static /* synthetic */ boolean cancel$default(CoroutineContext coroutineContext, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            th = null;
        }
        return cancel(coroutineContext, th);
    }

    public static /* synthetic */ void cancelChildren$default(CoroutineContext coroutineContext, CancellationException cancellationException, int i, Object obj) {
        if ((i & 1) != 0) {
            cancellationException = null;
        }
        cancelChildren(coroutineContext, cancellationException);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final boolean cancel(CoroutineContext coroutineContext, Throwable th) {
        CoroutineContext.Element element = coroutineContext.get(Job.INSTANCE);
        JobSupport jobSupport = element instanceof JobSupport ? (JobSupport) element : null;
        if (jobSupport == null) {
            return false;
        }
        if (th == null) {
            th = new JobCancellationException("Job was cancelled", null, jobSupport);
        }
        jobSupport.cancelInternal(th);
        return true;
    }

    public static /* synthetic */ void cancelChildren$default(CoroutineContext coroutineContext, Throwable th, int i, Object obj) {
        if ((i & 1) != 0) {
            th = null;
        }
        cancelChildren(coroutineContext, th);
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final void cancelChildren(Job job, Throwable th) {
        for (Job job2 : job.getChildren()) {
            JobSupport jobSupport = job2 instanceof JobSupport ? (JobSupport) job2 : null;
            if (jobSupport != null) {
                jobSupport.cancelInternal(th == null ? new JobCancellationException("Job was cancelled", null, job) : th);
            }
        }
    }

    public static final void cancelChildren(@NotNull CoroutineContext coroutineContext, @Nullable CancellationException cancellationException) {
        Sequence<Job> children;
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job == null || (children = job.getChildren()) == null) {
            return;
        }
        Iterator<Job> it = children.iterator();
        while (it.hasNext()) {
            it.next().cancel(cancellationException);
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    public static final void cancelChildren(CoroutineContext coroutineContext, Throwable th) {
        Job job = (Job) coroutineContext.get(Job.INSTANCE);
        if (job == null) {
            return;
        }
        for (Job job2 : job.getChildren()) {
            JobSupport jobSupport = job2 instanceof JobSupport ? (JobSupport) job2 : null;
            if (jobSupport != null) {
                jobSupport.cancelInternal(th == null ? new JobCancellationException("Job was cancelled", null, job) : th);
            }
        }
    }
}
