package _COROUTINE;

import defpackage.AbstractC1312xe0b2b7ff;
import defpackage.AbstractC1313xd408e99d;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\u0006\u0010\u0006\u001a\u00020\u0005¨\u0006\u0007"}, d2 = {"L_COROUTINE/ArtificialStackFrames;", "", "<init>", "()V", "coroutineCreation", "Ljava/lang/StackTraceElement;", "coroutineBoundary", "kotlinx-coroutines-core"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ArtificialStackFrames {
    @NotNull
    public final StackTraceElement coroutineBoundary() {
        return CoroutineDebuggingKt.access$artificialFrame(new Exception(), AbstractC1312xe0b2b7ff.class.getSimpleName());
    }

    @NotNull
    public final StackTraceElement coroutineCreation() {
        return CoroutineDebuggingKt.access$artificialFrame(new Exception(), AbstractC1313xd408e99d.class.getSimpleName());
    }
}
