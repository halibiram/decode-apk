package androidx.test.core.app;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
@DebugMetadata(c = "androidx.test.core.app.DeviceCapture", f = "DeviceCapture.kt", i = {}, l = {126}, m = "forceRedrawGlobalWindowViews", n = {}, s = {})
/* loaded from: classes.dex */
public final class DeviceCapture$forceRedrawGlobalWindowViews$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    public DeviceCapture$forceRedrawGlobalWindowViews$1(Continuation<? super DeviceCapture$forceRedrawGlobalWindowViews$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        Object forceRedrawGlobalWindowViews;
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        forceRedrawGlobalWindowViews = DeviceCapture.forceRedrawGlobalWindowViews(this);
        return forceRedrawGlobalWindowViews;
    }
}
