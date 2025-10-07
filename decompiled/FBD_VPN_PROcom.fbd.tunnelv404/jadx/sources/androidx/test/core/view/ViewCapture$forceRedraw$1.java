package androidx.test.core.view;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.test.core.view.ViewCapture", f = "ViewCapture.kt", i = {0, 0}, l = {322}, m = "forceRedraw", n = {"$this$forceRedraw", "drawListener"}, s = {"L$0", "L$1"})
/* loaded from: classes.dex */
public final class ViewCapture$forceRedraw$1 extends ContinuationImpl {
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    public ViewCapture$forceRedraw$1(Continuation<? super ViewCapture$forceRedraw$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return ViewCapture.forceRedraw(null, this);
    }
}
