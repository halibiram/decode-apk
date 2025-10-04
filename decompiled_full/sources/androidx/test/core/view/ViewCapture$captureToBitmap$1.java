package androidx.test.core.view;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.test.core.view.ViewCapture", f = "ViewCapture.kt", i = {0, 0, 0, 1}, l = {93, 94}, m = "captureToBitmap", n = {"$this$captureToBitmap", "rect", "hardwareDrawingEnabled", "hardwareDrawingEnabled"}, s = {"L$0", "L$1", "Z$0", "Z$0"})
/* loaded from: classes.dex */
public final class ViewCapture$captureToBitmap$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    boolean Z$0;
    int label;
    /* synthetic */ Object result;

    public ViewCapture$captureToBitmap$1(Continuation<? super ViewCapture$captureToBitmap$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ViewCapture.captureToBitmap(null, null, this);
    }
}
