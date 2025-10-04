package androidx.work;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\b\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/work/WorkerExceptionInfo;", "", "workerClassName", "", "workerParameters", "Landroidx/work/WorkerParameters;", "throwable", "", "(Ljava/lang/String;Landroidx/work/WorkerParameters;Ljava/lang/Throwable;)V", "getThrowable", "()Ljava/lang/Throwable;", "getWorkerClassName", "()Ljava/lang/String;", "getWorkerParameters", "()Landroidx/work/WorkerParameters;", "work-runtime_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class WorkerExceptionInfo {

    @NotNull
    private final Throwable throwable;

    @NotNull
    private final String workerClassName;

    @NotNull
    private final WorkerParameters workerParameters;

    public WorkerExceptionInfo(@NotNull String workerClassName, @NotNull WorkerParameters workerParameters, @NotNull Throwable throwable) {
        Intrinsics.checkNotNullParameter(workerClassName, "workerClassName");
        Intrinsics.checkNotNullParameter(workerParameters, "workerParameters");
        Intrinsics.checkNotNullParameter(throwable, "throwable");
        this.workerClassName = workerClassName;
        this.workerParameters = workerParameters;
        this.throwable = throwable;
    }

    @NotNull
    public final Throwable getThrowable() {
        return this.throwable;
    }

    @NotNull
    public final String getWorkerClassName() {
        return this.workerClassName;
    }

    @NotNull
    public final WorkerParameters getWorkerParameters() {
        return this.workerParameters;
    }
}
