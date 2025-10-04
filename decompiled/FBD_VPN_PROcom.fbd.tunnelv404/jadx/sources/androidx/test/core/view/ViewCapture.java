package androidx.test.core.view;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.PixelCopy;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.test.core.internal.os.HandlerExecutor;
import androidx.test.internal.platform.ServiceLoaderWrapper;
import androidx.test.internal.platform.os.ControlledLooper;
import androidx.test.internal.platform.reflect.ReflectiveField;
import androidx.test.internal.platform.reflect.ReflectiveMethod;
import androidx.test.internal.util.Checks;
import androidx.test.platform.graphics.HardwareRendererCompat;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0892xc141c517;
import defpackage.AbstractC1055xaa3d0551;
import defpackage.AbstractC1284xc4671c09;
import j$.util.function.Consumer$CC;
import java.util.Arrays;
import java.util.function.Consumer;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000>\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0015\n\u0000\u001a\b\u0010\u0000\u001a\u00020\u0001H\u0002\u001a!\u0010\u0002\u001a\u00020\u0003*\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0007\u001a\u001c\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\t*\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u001a\u0015\u0010\n\u001a\u00020\u000b*\u00020\u0004H\u0087@ø\u0001\u0000¢\u0006\u0002\u0010\f\u001a!\u0010\r\u001a\u00020\u0003*\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0082@ø\u0001\u0000¢\u0006\u0002\u0010\u0007\u001a\u001e\u0010\u000e\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0000\u001a)\u0010\u0010\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0083@ø\u0001\u0000¢\u0006\u0002\u0010\u0011\u001a/\u0010\u0010\u001a\u00020\u0003*\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u000f\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0083@ø\u0001\u0000¢\u0006\u0002\u0010\u0014\u001a'\u0010\u0015\u001a\u00020\u0003*\u00020\u00162\u0006\u0010\u000f\u001a\u00020\u00032\b\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0083@ø\u0001\u0000¢\u0006\u0002\u0010\u0017\u001a\f\u0010\u0018\u001a\u00020\u0006*\u00020\u0004H\u0002\u001a\f\u0010\u0019\u001a\u00020\u0006*\u00020\u0004H\u0002\u001a\f\u0010\u001a\u001a\u00020\u0013*\u00020\u0004H\u0002\u001a\u0014\u0010\u001b\u001a\u00020\u000b*\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u001dH\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"getControlledLooper", "Landroidx/test/internal/platform/os/ControlledLooper;", "captureToBitmap", "Landroid/graphics/Bitmap;", "Landroid/view/View;", "rect", "Landroid/graphics/Rect;", "(Landroid/view/View;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "captureToBitmapAsync", "Lcom/google/common/util/concurrent/ListenableFuture;", "forceRedraw", "", "(Landroid/view/View;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "generateBitmap", "generateBitmapFromDraw", "destBitmap", "generateBitmapFromPixelCopy", "(Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "surface", "Landroid/view/Surface;", "(Landroid/view/View;Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "generateBitmapFromSurfaceViewPixelCopy", "Landroid/view/SurfaceView;", "(Landroid/view/SurfaceView;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getBoundsInSurface", "getBoundsInWindow", "getSurface", "reflectivelyGetLocationInSurface", "locationInSurface", "", "core_java_androidx_test_core-core_internal_kt"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "ViewCapture")
@SourceDebugExtension({"SMAP\nViewCapture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewCapture.kt\nandroidx/test/core/view/ViewCapture\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,321:1\n314#2,11:322\n314#2,11:333\n314#2,11:344\n314#2,11:355\n*S KotlinDebug\n*F\n+ 1 ViewCapture.kt\nandroidx/test/core/view/ViewCapture\n*L\n130#1:322,11\n178#1:333,11\n216#1:344,11\n304#1:355,11\n*E\n"})
/* loaded from: classes.dex */
public final class ViewCapture {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00bd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v7, types: [boolean] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object captureToBitmap(@NotNull View view, @Nullable Rect rect, @NotNull Continuation<? super Bitmap> continuation) {
        ViewCapture$captureToBitmap$1 viewCapture$captureToBitmap$1;
        Object coroutine_suspended;
        int i;
        boolean isCurrentThread;
        boolean isDrawingEnabled;
        View view2;
        Object generateBitmap;
        try {
            if (continuation instanceof ViewCapture$captureToBitmap$1) {
                viewCapture$captureToBitmap$1 = (ViewCapture$captureToBitmap$1) continuation;
                int i2 = viewCapture$captureToBitmap$1.label;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    viewCapture$captureToBitmap$1.label = i2 - Integer.MIN_VALUE;
                    Object obj = viewCapture$captureToBitmap$1.result;
                    coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i = viewCapture$captureToBitmap$1.label;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                boolean z = viewCapture$captureToBitmap$1.Z$0;
                                ResultKt.throwOnFailure(obj);
                                view = z;
                                Bitmap bitmap = (Bitmap) obj;
                                HardwareRendererCompat.setDrawingEnabled(view);
                                Intrinsics.checkNotNull(bitmap);
                                return bitmap;
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        boolean z2 = viewCapture$captureToBitmap$1.Z$0;
                        rect = (Rect) viewCapture$captureToBitmap$1.L$1;
                        View view3 = (View) viewCapture$captureToBitmap$1.L$0;
                        ResultKt.throwOnFailure(obj);
                        isDrawingEnabled = z2;
                        view2 = view3;
                    } else {
                        ResultKt.throwOnFailure(obj);
                        Checks.checkState(view.isAttachedToWindow(), "View must be attached to a window", new Object[0]);
                        isCurrentThread = view.getHandler().getLooper().isCurrentThread();
                        Checks.checkState(isCurrentThread, "Must be called from view's handler thread. Current: " + Thread.currentThread().getName() + ", view handler: " + view.getHandler().getLooper().getThread().getName(), new Object[0]);
                        isDrawingEnabled = HardwareRendererCompat.isDrawingEnabled();
                        HardwareRendererCompat.setDrawingEnabled(true);
                        try {
                            viewCapture$captureToBitmap$1.L$0 = view;
                            viewCapture$captureToBitmap$1.L$1 = rect;
                            viewCapture$captureToBitmap$1.Z$0 = isDrawingEnabled;
                            viewCapture$captureToBitmap$1.label = 1;
                            Object forceRedraw = forceRedraw(view, viewCapture$captureToBitmap$1);
                            view2 = view;
                            if (forceRedraw == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        } catch (Throwable th) {
                            th = th;
                            view = isDrawingEnabled;
                            HardwareRendererCompat.setDrawingEnabled(view);
                            throw th;
                        }
                    }
                    viewCapture$captureToBitmap$1.L$0 = null;
                    viewCapture$captureToBitmap$1.L$1 = null;
                    viewCapture$captureToBitmap$1.Z$0 = isDrawingEnabled;
                    viewCapture$captureToBitmap$1.label = 2;
                    generateBitmap = generateBitmap(view2, rect, viewCapture$captureToBitmap$1);
                    if (generateBitmap != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    boolean z3 = isDrawingEnabled;
                    obj = generateBitmap;
                    view = z3;
                    Bitmap bitmap2 = (Bitmap) obj;
                    HardwareRendererCompat.setDrawingEnabled(view);
                    Intrinsics.checkNotNull(bitmap2);
                    return bitmap2;
                }
            }
            if (i == 0) {
            }
            viewCapture$captureToBitmap$1.L$0 = null;
            viewCapture$captureToBitmap$1.L$1 = null;
            viewCapture$captureToBitmap$1.Z$0 = isDrawingEnabled;
            viewCapture$captureToBitmap$1.label = 2;
            generateBitmap = generateBitmap(view2, rect, viewCapture$captureToBitmap$1);
            if (generateBitmap != coroutine_suspended) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
        viewCapture$captureToBitmap$1 = new ViewCapture$captureToBitmap$1(continuation);
        Object obj2 = viewCapture$captureToBitmap$1.result;
        coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = viewCapture$captureToBitmap$1.label;
    }

    public static /* synthetic */ Object captureToBitmap$default(View view, Rect rect, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            rect = null;
        }
        return captureToBitmap(view, rect, continuation);
    }

    @NotNull
    public static final ListenableFuture<Bitmap> captureToBitmapAsync(@NotNull View view, @Nullable Rect rect) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        return SuspendToFutureAdapter.launchFuture$default(SuspendToFutureAdapter.INSTANCE, Dispatchers.getMain(), false, new ViewCapture$captureToBitmapAsync$1(view, rect, null), 2, null);
    }

    public static /* synthetic */ ListenableFuture captureToBitmapAsync$default(View view, Rect rect, int i, Object obj) {
        if ((i & 1) != 0) {
            rect = null;
        }
        return captureToBitmapAsync(view, rect);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    /* JADX WARN: Type inference failed for: r3v2, types: [androidx.test.core.view.ViewCapture$forceRedraw$2$2, T] */
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object forceRedraw(@NotNull View view, @NotNull Continuation<? super Unit> continuation) {
        ViewCapture$forceRedraw$1 viewCapture$forceRedraw$1;
        int i;
        boolean isCurrentThread;
        final View view2;
        final Ref.ObjectRef objectRef;
        Throwable th;
        if (continuation instanceof ViewCapture$forceRedraw$1) {
            viewCapture$forceRedraw$1 = (ViewCapture$forceRedraw$1) continuation;
            int i2 = viewCapture$forceRedraw$1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                viewCapture$forceRedraw$1.label = i2 - Integer.MIN_VALUE;
                Object obj = viewCapture$forceRedraw$1.result;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = viewCapture$forceRedraw$1.label;
                if (i == 0) {
                    if (i == 1) {
                        objectRef = (Ref.ObjectRef) viewCapture$forceRedraw$1.L$1;
                        view2 = (View) viewCapture$forceRedraw$1.L$0;
                        try {
                            ResultKt.throwOnFailure(obj);
                        } catch (Throwable th2) {
                            th = th2;
                            if (objectRef.element != 0) {
                            }
                            throw th;
                        }
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    isCurrentThread = view.getHandler().getLooper().isCurrentThread();
                    Checks.checkState(isCurrentThread, "Must be called from view's handler thread", new Object[0]);
                    if (!getControlledLooper().areDrawCallbacksSupported()) {
                        return Unit.INSTANCE;
                    }
                    Ref.ObjectRef objectRef2 = new Ref.ObjectRef();
                    try {
                        viewCapture$forceRedraw$1.L$0 = view;
                        viewCapture$forceRedraw$1.L$1 = objectRef2;
                        viewCapture$forceRedraw$1.label = 1;
                        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(viewCapture$forceRedraw$1), 1);
                        cancellableContinuationImpl.initCancellability();
                        if (Build.VERSION.SDK_INT >= 29 && view.isHardwareAccelerated()) {
                            view.getViewTreeObserver().registerFrameCommitCallback(new Runnable() { // from class: androidx.test.core.view.ViewCapture$forceRedraw$2$1
                                @Override // java.lang.Runnable
                                public final void run() {
                                    CancellableContinuation<Unit> cancellableContinuation = cancellableContinuationImpl;
                                    Result.Companion companion = Result.INSTANCE;
                                    cancellableContinuation.resumeWith(Result.m1764constructorimpl(Unit.INSTANCE));
                                }
                            });
                        } else {
                            objectRef2.element = new ViewTreeObserver.OnDrawListener() { // from class: androidx.test.core.view.ViewCapture$forceRedraw$2$2
                                private boolean handled;

                                public final boolean getHandled() {
                                    return this.handled;
                                }

                                @Override // android.view.ViewTreeObserver.OnDrawListener
                                public void onDraw() {
                                    if (!this.handled) {
                                        this.handled = true;
                                        CancellableContinuation<Unit> cancellableContinuation = cancellableContinuationImpl;
                                        Result.Companion companion = Result.INSTANCE;
                                        cancellableContinuation.resumeWith(Result.m1764constructorimpl(Unit.INSTANCE));
                                    }
                                }

                                public final void setHandled(boolean z) {
                                    this.handled = z;
                                }
                            };
                            view.getViewTreeObserver().addOnDrawListener((ViewTreeObserver.OnDrawListener) objectRef2.element);
                        }
                        view.invalidate();
                        Object result = cancellableContinuationImpl.getResult();
                        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
                            DebugProbesKt.probeCoroutineSuspended(viewCapture$forceRedraw$1);
                        }
                        if (result == coroutine_suspended) {
                            return coroutine_suspended;
                        }
                        view2 = view;
                        objectRef = objectRef2;
                    } catch (Throwable th3) {
                        view2 = view;
                        objectRef = objectRef2;
                        th = th3;
                        if (objectRef.element != 0) {
                            view2.getHandler().post(new Runnable() { // from class: androidx.test.core.view.ViewCapture$forceRedraw$3
                                @Override // java.lang.Runnable
                                public final void run() {
                                    view2.getViewTreeObserver().removeOnDrawListener(objectRef.element);
                                }
                            });
                        }
                        throw th;
                    }
                }
                Unit unit = Unit.INSTANCE;
                if (objectRef.element != 0) {
                    view2.getHandler().post(new Runnable() { // from class: androidx.test.core.view.ViewCapture$forceRedraw$3
                        @Override // java.lang.Runnable
                        public final void run() {
                            view2.getViewTreeObserver().removeOnDrawListener(objectRef.element);
                        }
                    });
                }
                return unit;
            }
        }
        viewCapture$forceRedraw$1 = new ViewCapture$forceRedraw$1(continuation);
        Object obj2 = viewCapture$forceRedraw$1.result;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = viewCapture$forceRedraw$1.label;
        if (i == 0) {
        }
        Unit unit2 = Unit.INSTANCE;
        if (objectRef.element != 0) {
        }
        return unit2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object generateBitmap(View view, Rect rect, Continuation<? super Bitmap> continuation) {
        int width;
        int height;
        if (rect != null) {
            width = rect.width();
        } else {
            width = view.getWidth();
        }
        if (rect != null) {
            height = rect.height();
        } else {
            height = view.getHeight();
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(rectWidth, … Bitmap.Config.ARGB_8888)");
        int i = Build.VERSION.SDK_INT;
        if (i < 26) {
            return generateBitmapFromDraw(view, createBitmap, rect);
        }
        if (i >= 34) {
            return generateBitmapFromPixelCopy(view, createBitmap, rect, continuation);
        }
        if (view instanceof SurfaceView) {
            return generateBitmapFromSurfaceViewPixelCopy((SurfaceView) view, createBitmap, rect, continuation);
        }
        return generateBitmapFromPixelCopy(view, getSurface(view), createBitmap, rect, continuation);
    }

    public static /* synthetic */ Object generateBitmap$default(View view, Rect rect, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            rect = null;
        }
        return generateBitmap(view, rect, continuation);
    }

    @NotNull
    public static final Bitmap generateBitmapFromDraw(@NotNull View view, @NotNull Bitmap destBitmap, @Nullable Rect rect) {
        Intrinsics.checkNotNullParameter(view, "<this>");
        Intrinsics.checkNotNullParameter(destBitmap, "destBitmap");
        destBitmap.setDensity(view.getResources().getDisplayMetrics().densityDpi);
        view.computeScroll();
        Canvas canvas = new Canvas(destBitmap);
        canvas.translate(-view.getScrollX(), -view.getScrollY());
        if (rect != null) {
            canvas.translate(-rect.left, -rect.top);
        }
        view.draw(canvas);
        return destBitmap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(26)
    public static final Object generateBitmapFromPixelCopy(View view, Surface surface, final Bitmap bitmap, Rect rect, Continuation<? super Bitmap> continuation) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        Rect boundsInSurface = getBoundsInSurface(view);
        if (rect != null) {
            int i = boundsInSurface.left;
            int i2 = rect.left + i;
            int i3 = boundsInSurface.top;
            boundsInSurface = new Rect(i2, rect.top + i3, i + rect.right, i3 + rect.bottom);
        }
        PixelCopy.request(surface, boundsInSurface, bitmap, AbstractC1055xaa3d0551.m3750x9d12c1f4(new PixelCopy.OnPixelCopyFinishedListener() { // from class: androidx.test.core.view.ViewCapture$generateBitmapFromPixelCopy$2$onCopyFinished$1
            @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
            public final void onPixelCopyFinished(int i4) {
                if (i4 == 0) {
                    CancellableContinuation<Bitmap> cancellableContinuation = cancellableContinuationImpl;
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m1764constructorimpl(bitmap));
                } else {
                    CancellableContinuation<Bitmap> cancellableContinuation2 = cancellableContinuationImpl;
                    Result.Companion companion2 = Result.INSTANCE;
                    cancellableContinuation2.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(new RuntimeException(AbstractC0362x4440ab85.m2929x9738a56c(i4, "PixelCopy failed: ")))));
                }
            }
        }), new Handler(Looper.getMainLooper()));
        Object result = cancellableContinuationImpl.getResult();
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public static /* synthetic */ Object generateBitmapFromPixelCopy$default(View view, Bitmap bitmap, Rect rect, Continuation continuation, int i, Object obj) {
        if ((i & 2) != 0) {
            rect = null;
        }
        return generateBitmapFromPixelCopy(view, bitmap, rect, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(26)
    public static final Object generateBitmapFromSurfaceViewPixelCopy(SurfaceView surfaceView, final Bitmap bitmap, Rect rect, Continuation<? super Bitmap> continuation) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        PixelCopy.request(surfaceView, rect, bitmap, AbstractC1055xaa3d0551.m3750x9d12c1f4(new PixelCopy.OnPixelCopyFinishedListener() { // from class: androidx.test.core.view.ViewCapture$generateBitmapFromSurfaceViewPixelCopy$2$onCopyFinished$1
            @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
            public final void onPixelCopyFinished(int i) {
                if (i == 0) {
                    CancellableContinuation<Bitmap> cancellableContinuation = cancellableContinuationImpl;
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m1764constructorimpl(bitmap));
                } else {
                    CancellableContinuation<Bitmap> cancellableContinuation2 = cancellableContinuationImpl;
                    String format = String.format("PixelCopy failed: %d", Arrays.copyOf(new Object[]{Integer.valueOf(i)}, 1));
                    Intrinsics.checkNotNullExpressionValue(format, "format(format, *args)");
                    RuntimeException runtimeException = new RuntimeException(format);
                    Result.Companion companion2 = Result.INSTANCE;
                    cancellableContinuation2.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(runtimeException)));
                }
            }
        }), surfaceView.getHandler());
        Object result = cancellableContinuationImpl.getResult();
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect getBoundsInSurface(View view) {
        int[] iArr = {0, 0};
        if (Build.VERSION.SDK_INT >= 29) {
            view.getLocationInSurface(iArr);
        } else {
            reflectivelyGetLocationInSurface(view, iArr);
        }
        int i = iArr[0];
        int i2 = iArr[1];
        Rect rect = new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2);
        rect.toString();
        return rect;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Rect getBoundsInWindow(View view) {
        int[] iArr = {0, 0};
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return new Rect(i, i2, view.getWidth() + i, view.getHeight() + i2);
    }

    private static final ControlledLooper getControlledLooper() {
        Object loadSingleService = ServiceLoaderWrapper.loadSingleService(ControlledLooper.class, new ServiceLoaderWrapper.Factory() { // from class: androidx.test.core.view.ViewCapture$getControlledLooper$1
            @Override // androidx.test.internal.platform.ServiceLoaderWrapper.Factory
            public final ControlledLooper create() {
                return ControlledLooper.NO_OP_CONTROLLED_LOOPER;
            }
        });
        Intrinsics.checkNotNullExpressionValue(loadSingleService, "loadSingleService(Contro…_OP_CONTROLLED_LOOPER\n  }");
        return (ControlledLooper) loadSingleService;
    }

    private static final Surface getSurface(View view) {
        Object obj = new ReflectiveField("android.view.ViewRootImpl", "mSurface").get(new ReflectiveMethod((Class<?>) View.class, "getViewRootImpl", (Class<?>[]) new Class[0]).invoke(view, new Object[0]));
        Intrinsics.checkNotNullExpressionValue(obj, "ReflectiveField<Surface>…rface\").get(viewRootImpl)");
        return (Surface) obj;
    }

    @SuppressLint({"NewApi"})
    private static final void reflectivelyGetLocationInSurface(View view, int[] iArr) {
        view.getLocationInWindow(iArr);
        if (Build.VERSION.SDK_INT < 28) {
            Rect rect = (Rect) new ReflectiveField((Class<?>) WindowManager.LayoutParams.class, "surfaceInsets").get((WindowManager.LayoutParams) new ReflectiveField("android.view.ViewRootImpl", "mWindowAttributes").get(new ReflectiveMethod((Class<?>) View.class, "getViewRootImpl", (Class<?>[]) new Class[0]).invoke(view, new Object[0])));
            iArr[0] = iArr[0] + rect.left;
            iArr[1] = iArr[1] + rect.top;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(34)
    public static final Object generateBitmapFromPixelCopy(View view, Bitmap bitmap, Rect rect, Continuation<? super Bitmap> continuation) {
        PixelCopy.Request.Builder ofWindow;
        PixelCopy.Request.Builder sourceRect;
        PixelCopy.Request.Builder destinationBitmap;
        PixelCopy.Request build;
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        ofWindow = PixelCopy.Request.Builder.ofWindow(view);
        if (rect == null) {
            rect = getBoundsInWindow(view);
        }
        sourceRect = ofWindow.setSourceRect(rect);
        destinationBitmap = sourceRect.setDestinationBitmap(bitmap);
        build = destinationBitmap.build();
        Intrinsics.checkNotNullExpressionValue(build, "ofWindow(this)\n        .…tBitmap)\n        .build()");
        Consumer consumer = new Consumer() { // from class: androidx.test.core.view.ViewCapture$generateBitmapFromPixelCopy$4$onCopyFinished$1
            @Override // java.util.function.Consumer
            public /* bridge */ /* synthetic */ void accept(Object obj) {
                accept(AbstractC1284xc4671c09.m4267x34271fae(obj));
            }

            public final /* synthetic */ Consumer andThen(Consumer consumer2) {
                return Consumer$CC.$default$andThen(this, consumer2);
            }

            public final void accept(PixelCopy.Result result) {
                int status;
                Bitmap bitmap2;
                status = result.getStatus();
                if (status == 0) {
                    CancellableContinuation<Bitmap> cancellableContinuation = cancellableContinuationImpl;
                    Result.Companion companion = Result.INSTANCE;
                    bitmap2 = result.getBitmap();
                    cancellableContinuation.resumeWith(Result.m1764constructorimpl(bitmap2));
                    return;
                }
                CancellableContinuation<Bitmap> cancellableContinuation2 = cancellableContinuationImpl;
                Result.Companion companion2 = Result.INSTANCE;
                cancellableContinuation2.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(new RuntimeException("PixelCopy failed: $(result.status)"))));
            }
        };
        Handler handler = view.getHandler();
        Intrinsics.checkNotNullExpressionValue(handler, "handler");
        PixelCopy.request(build, new HandlerExecutor(handler), consumer);
        Object result = cancellableContinuationImpl.getResult();
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
