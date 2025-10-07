package androidx.test.core.view;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.test.core.view.WindowCapture", f = "WindowCapture.kt", i = {0}, l = {84}, m = "generateBitmap", n = {"destBitmap"}, s = {"L$0"})
/* loaded from: classes.dex */
public final class WindowCapture$generateBitmap$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    public WindowCapture$generateBitmap$1(Continuation<? super WindowCapture$generateBitmap$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return WindowCapture.generateBitmap(null, null, this);
    }
}
