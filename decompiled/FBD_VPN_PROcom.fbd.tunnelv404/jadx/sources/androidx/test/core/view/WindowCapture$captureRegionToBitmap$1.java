package androidx.test.core.view;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.test.core.view.WindowCapture", f = "WindowCapture.kt", i = {0, 0, 0, 1}, l = {57, 58}, m = "captureRegionToBitmap", n = {"$this$captureRegionToBitmap", "boundsInWindow", "hardwareDrawingEnabled", "hardwareDrawingEnabled"}, s = {"L$0", "L$1", "Z$0", "Z$0"})
/* loaded from: classes.dex */
public final class WindowCapture$captureRegionToBitmap$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;

    public WindowCapture$captureRegionToBitmap$1(Continuation<? super WindowCapture$captureRegionToBitmap$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return WindowCapture.captureRegionToBitmap(null, null, this);
    }
}
