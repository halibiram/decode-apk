package androidx.test.core.app;

import android.app.UiAutomation;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.test.core.internal.os.HandlerExecutor;
import androidx.test.core.view.ViewCapture;
import androidx.test.internal.util.Checks;
import androidx.test.platform.app.InstrumentationRegistry;
import androidx.test.platform.graphics.HardwareRendererCompat;
import androidx.test.platform.view.inspector.WindowInspectorCompat;
import defpackage.AbstractC0892xc141c517;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\b\u0010\u0000\u001a\u00020\u0001H\u0007\u001a\u0011\u0010\u0002\u001a\u00020\u0003H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0004\u001a\u0006\u0010\u0005\u001a\u00020\u0006\u001a\b\u0010\u0007\u001a\u00020\u0006H\u0007\u001a!\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0001H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\f\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"canTakeScreenshot", "", "forceRedrawGlobalWindowViews", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "takeScreenshot", "Landroid/graphics/Bitmap;", "takeScreenshotNoSync", "takeScreenshotOnNextFrame", "uiAutomation", "Landroid/app/UiAutomation;", "hardwareDrawingEnabled", "(Landroid/app/UiAutomation;ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "core_java_androidx_test_core-core_internal_kt"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "DeviceCapture")
@SourceDebugExtension({"SMAP\nDeviceCapture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DeviceCapture.kt\nandroidx/test/core/app/DeviceCapture\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,160:1\n314#2,11:161\n*S KotlinDebug\n*F\n+ 1 DeviceCapture.kt\nandroidx/test/core/app/DeviceCapture\n*L\n138#1:161,11\n*E\n"})
/* loaded from: classes.dex */
public final class DeviceCapture {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final boolean canTakeScreenshot() {
        if (InstrumentationRegistry.getInstrumentation().getUiAutomation() != null && !Intrinsics.areEqual(Looper.myLooper(), Looper.getMainLooper())) {
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:13:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object forceRedrawGlobalWindowViews(Continuation<? super Unit> continuation) {
        DeviceCapture$forceRedrawGlobalWindowViews$1 deviceCapture$forceRedrawGlobalWindowViews$1;
        int i;
        Iterator<View> it;
        if (continuation instanceof DeviceCapture$forceRedrawGlobalWindowViews$1) {
            deviceCapture$forceRedrawGlobalWindowViews$1 = (DeviceCapture$forceRedrawGlobalWindowViews$1) continuation;
            int i2 = deviceCapture$forceRedrawGlobalWindowViews$1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                deviceCapture$forceRedrawGlobalWindowViews$1.label = i2 - Integer.MIN_VALUE;
                Object obj = deviceCapture$forceRedrawGlobalWindowViews$1.result;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = deviceCapture$forceRedrawGlobalWindowViews$1.label;
                if (i == 0) {
                    if (i == 1) {
                        it = (Iterator) deviceCapture$forceRedrawGlobalWindowViews$1.L$0;
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    List<View> globalWindowViews = WindowInspectorCompat.getGlobalWindowViews();
                    globalWindowViews.size();
                    it = globalWindowViews.iterator();
                }
                while (it.hasNext()) {
                    View view = it.next();
                    Intrinsics.checkNotNullExpressionValue(view, "view");
                    deviceCapture$forceRedrawGlobalWindowViews$1.L$0 = it;
                    deviceCapture$forceRedrawGlobalWindowViews$1.label = 1;
                    if (ViewCapture.forceRedraw(view, deviceCapture$forceRedrawGlobalWindowViews$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
                return Unit.INSTANCE;
            }
        }
        deviceCapture$forceRedrawGlobalWindowViews$1 = new DeviceCapture$forceRedrawGlobalWindowViews$1(continuation);
        Object obj2 = deviceCapture$forceRedrawGlobalWindowViews$1.result;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = deviceCapture$forceRedrawGlobalWindowViews$1.label;
        if (i == 0) {
        }
        while (it.hasNext()) {
        }
        return Unit.INSTANCE;
    }

    @NotNull
    public static final Bitmap takeScreenshot() {
        InstrumentationRegistry.getInstrumentation().waitForIdleSync();
        return takeScreenshotNoSync();
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @NotNull
    public static final Bitmap takeScreenshotNoSync() {
        Checks.checkState(canTakeScreenshot());
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
        CoroutineDispatcher from = ExecutorsKt.from(new HandlerExecutor(new Handler(Looper.getMainLooper())));
        UiAutomation uiAutomation = InstrumentationRegistry.getInstrumentation().getUiAutomation();
        if (uiAutomation != null) {
            boolean isDrawingEnabled = HardwareRendererCompat.isDrawingEnabled();
            HardwareRendererCompat.setDrawingEnabled(true);
            return (Bitmap) BuildersKt.runBlocking(from, new DeviceCapture$takeScreenshotNoSync$1(objectRef, uiAutomation, isDrawingEnabled, objectRef2, null));
        }
        throw new RuntimeException("uiautomation is null");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object takeScreenshotOnNextFrame(final UiAutomation uiAutomation, final boolean z, Continuation<? super Bitmap> continuation) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() { // from class: androidx.test.core.app.DeviceCapture$takeScreenshotOnNextFrame$2$1
            @Override // android.view.Choreographer.FrameCallback
            public final void doFrame(long j) {
                Bitmap bitmap = null;
                for (int i = 1; i < 4 && (bitmap = uiAutomation.takeScreenshot()) == null; i++) {
                }
                HardwareRendererCompat.setDrawingEnabled(z);
                if (bitmap == null) {
                    CancellableContinuation<Bitmap> cancellableContinuation = cancellableContinuationImpl;
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(new RuntimeException("uiAutomation.takeScreenshot returned null"))));
                    return;
                }
                cancellableContinuationImpl.resume((CancellableContinuation<Bitmap>) bitmap, (Function1<? super Throwable, Unit>) new Function1<Throwable, Unit>() { // from class: androidx.test.core.app.DeviceCapture$takeScreenshotOnNextFrame$2$1.1
                    /* renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(@NotNull Throwable it) {
                        Intrinsics.checkNotNullParameter(it, "it");
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                        invoke2(th);
                        return Unit.INSTANCE;
                    }
                });
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
