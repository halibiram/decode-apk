package androidx.test.core.view;

import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.PixelCopy;
import android.view.View;
import android.view.Window;
import androidx.annotation.RequiresApi;
import androidx.test.platform.graphics.HardwareRendererCompat;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0892xc141c517;
import defpackage.AbstractC1055xaa3d0551;
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
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Dispatchers;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a!\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u001a\u001c\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00010\u0007*\u00020\u00022\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u001a!\u0010\b\u001a\u00020\u0001*\u00020\u00022\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0080@ø\u0001\u0000¢\u0006\u0002\u0010\u0005\u001a)\u0010\t\u001a\u00020\u0001*\u00020\u00022\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\n\u001a\u00020\u0001H\u0081@ø\u0001\u0000¢\u0006\u0002\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"captureRegionToBitmap", "Landroid/graphics/Bitmap;", "Landroid/view/Window;", "boundsInWindow", "Landroid/graphics/Rect;", "(Landroid/view/Window;Landroid/graphics/Rect;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "captureRegionToBitmapAsync", "Lcom/google/common/util/concurrent/ListenableFuture;", "generateBitmap", "generateBitmapFromPixelCopy", "destBitmap", "(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "core_java_androidx_test_core-core_internal_kt"}, k = 2, mv = {1, 8, 0}, xi = 48)
@JvmName(name = "WindowCapture")
@SourceDebugExtension({"SMAP\nWindowCapture.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WindowCapture.kt\nandroidx/test/core/view/WindowCapture\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,114:1\n314#2,11:115\n*S KotlinDebug\n*F\n+ 1 WindowCapture.kt\nandroidx/test/core/view/WindowCapture\n*L\n95#1:115,11\n*E\n"})
/* loaded from: classes.dex */
public final class WindowCapture {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0079 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v7, types: [boolean] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object captureRegionToBitmap(@NotNull Window window, @Nullable Rect rect, @NotNull Continuation<? super Bitmap> continuation) {
        WindowCapture$captureRegionToBitmap$1 windowCapture$captureRegionToBitmap$1;
        Object coroutine_suspended;
        int i;
        boolean isDrawingEnabled;
        Window window2;
        Object generateBitmap;
        try {
            if (continuation instanceof WindowCapture$captureRegionToBitmap$1) {
                windowCapture$captureRegionToBitmap$1 = (WindowCapture$captureRegionToBitmap$1) continuation;
                int i2 = windowCapture$captureRegionToBitmap$1.label;
                if ((i2 & Integer.MIN_VALUE) != 0) {
                    windowCapture$captureRegionToBitmap$1.label = i2 - Integer.MIN_VALUE;
                    Object obj = windowCapture$captureRegionToBitmap$1.result;
                    coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                    i = windowCapture$captureRegionToBitmap$1.label;
                    if (i == 0) {
                        if (i != 1) {
                            if (i == 2) {
                                boolean z = windowCapture$captureRegionToBitmap$1.Z$0;
                                ResultKt.throwOnFailure(obj);
                                window = z;
                                Bitmap bitmap = (Bitmap) obj;
                                HardwareRendererCompat.setDrawingEnabled(window);
                                Intrinsics.checkNotNull(bitmap);
                                return bitmap;
                            }
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        boolean z2 = windowCapture$captureRegionToBitmap$1.Z$0;
                        rect = (Rect) windowCapture$captureRegionToBitmap$1.L$1;
                        Window window3 = (Window) windowCapture$captureRegionToBitmap$1.L$0;
                        ResultKt.throwOnFailure(obj);
                        isDrawingEnabled = z2;
                        window2 = window3;
                    } else {
                        ResultKt.throwOnFailure(obj);
                        isDrawingEnabled = HardwareRendererCompat.isDrawingEnabled();
                        HardwareRendererCompat.setDrawingEnabled(true);
                        try {
                            View decorView = window.getDecorView();
                            Intrinsics.checkNotNullExpressionValue(decorView, "decorView");
                            windowCapture$captureRegionToBitmap$1.L$0 = window;
                            windowCapture$captureRegionToBitmap$1.L$1 = rect;
                            windowCapture$captureRegionToBitmap$1.Z$0 = isDrawingEnabled;
                            windowCapture$captureRegionToBitmap$1.label = 1;
                            window2 = window;
                            if (ViewCapture.forceRedraw(decorView, windowCapture$captureRegionToBitmap$1) == coroutine_suspended) {
                                return coroutine_suspended;
                            }
                        } catch (Throwable th) {
                            th = th;
                            window = isDrawingEnabled;
                            HardwareRendererCompat.setDrawingEnabled(window);
                            throw th;
                        }
                    }
                    windowCapture$captureRegionToBitmap$1.L$0 = null;
                    windowCapture$captureRegionToBitmap$1.L$1 = null;
                    windowCapture$captureRegionToBitmap$1.Z$0 = isDrawingEnabled;
                    windowCapture$captureRegionToBitmap$1.label = 2;
                    generateBitmap = generateBitmap(window2, rect, windowCapture$captureRegionToBitmap$1);
                    if (generateBitmap != coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    boolean z3 = isDrawingEnabled;
                    obj = generateBitmap;
                    window = z3;
                    Bitmap bitmap2 = (Bitmap) obj;
                    HardwareRendererCompat.setDrawingEnabled(window);
                    Intrinsics.checkNotNull(bitmap2);
                    return bitmap2;
                }
            }
            if (i == 0) {
            }
            windowCapture$captureRegionToBitmap$1.L$0 = null;
            windowCapture$captureRegionToBitmap$1.L$1 = null;
            windowCapture$captureRegionToBitmap$1.Z$0 = isDrawingEnabled;
            windowCapture$captureRegionToBitmap$1.label = 2;
            generateBitmap = generateBitmap(window2, rect, windowCapture$captureRegionToBitmap$1);
            if (generateBitmap != coroutine_suspended) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
        windowCapture$captureRegionToBitmap$1 = new WindowCapture$captureRegionToBitmap$1(continuation);
        Object obj2 = windowCapture$captureRegionToBitmap$1.result;
        coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = windowCapture$captureRegionToBitmap$1.label;
    }

    public static /* synthetic */ Object captureRegionToBitmap$default(Window window, Rect rect, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            rect = null;
        }
        return captureRegionToBitmap(window, rect, continuation);
    }

    @NotNull
    public static final ListenableFuture<Bitmap> captureRegionToBitmapAsync(@NotNull Window window, @Nullable Rect rect) {
        Intrinsics.checkNotNullParameter(window, "<this>");
        return SuspendToFutureAdapter.launchFuture$default(SuspendToFutureAdapter.INSTANCE, Dispatchers.getMain(), false, new WindowCapture$captureRegionToBitmapAsync$1(window, rect, null), 2, null);
    }

    public static /* synthetic */ ListenableFuture captureRegionToBitmapAsync$default(Window window, Rect rect, int i, Object obj) {
        if ((i & 1) != 0) {
            rect = null;
        }
        return captureRegionToBitmapAsync(window, rect);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object generateBitmap(@NotNull Window window, @Nullable Rect rect, @NotNull Continuation<? super Bitmap> continuation) {
        WindowCapture$generateBitmap$1 windowCapture$generateBitmap$1;
        int i;
        int width;
        int height;
        Bitmap bitmap;
        if (continuation instanceof WindowCapture$generateBitmap$1) {
            windowCapture$generateBitmap$1 = (WindowCapture$generateBitmap$1) continuation;
            int i2 = windowCapture$generateBitmap$1.label;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                windowCapture$generateBitmap$1.label = i2 - Integer.MIN_VALUE;
                Object obj = windowCapture$generateBitmap$1.result;
                Object coroutine_suspended = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
                i = windowCapture$generateBitmap$1.label;
                if (i == 0) {
                    if (i == 1) {
                        bitmap = (Bitmap) windowCapture$generateBitmap$1.L$0;
                        ResultKt.throwOnFailure(obj);
                    } else {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                } else {
                    ResultKt.throwOnFailure(obj);
                    if (rect != null) {
                        width = rect.width();
                    } else {
                        width = window.getDecorView().getWidth();
                    }
                    if (rect != null) {
                        height = rect.height();
                    } else {
                        height = window.getDecorView().getHeight();
                    }
                    Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
                    Intrinsics.checkNotNullExpressionValue(createBitmap, "createBitmap(\n      boun…p.Config.ARGB_8888,\n    )");
                    if (Build.VERSION.SDK_INT < 26) {
                        View decorView = window.getDecorView();
                        Intrinsics.checkNotNullExpressionValue(decorView, "decorView");
                        ViewCapture.generateBitmapFromDraw(decorView, createBitmap, rect);
                        return createBitmap;
                    }
                    windowCapture$generateBitmap$1.L$0 = createBitmap;
                    windowCapture$generateBitmap$1.label = 1;
                    if (generateBitmapFromPixelCopy(window, rect, createBitmap, windowCapture$generateBitmap$1) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                    bitmap = createBitmap;
                }
                return bitmap;
            }
        }
        windowCapture$generateBitmap$1 = new WindowCapture$generateBitmap$1(continuation);
        Object obj2 = windowCapture$generateBitmap$1.result;
        Object coroutine_suspended2 = AbstractC0892xc141c517.getCOROUTINE_SUSPENDED();
        i = windowCapture$generateBitmap$1.label;
        if (i == 0) {
        }
        return bitmap;
    }

    public static /* synthetic */ Object generateBitmap$default(Window window, Rect rect, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            rect = null;
        }
        return generateBitmap(window, rect, continuation);
    }

    @RequiresApi(26)
    @Nullable
    public static final Object generateBitmapFromPixelCopy(@NotNull Window window, @Nullable Rect rect, @NotNull final Bitmap bitmap, @NotNull Continuation<? super Bitmap> continuation) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        PixelCopy.request(window, rect, bitmap, AbstractC1055xaa3d0551.m3750x9d12c1f4(new PixelCopy.OnPixelCopyFinishedListener() { // from class: androidx.test.core.view.WindowCapture$generateBitmapFromPixelCopy$2$onCopyFinished$1
            @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
            public final void onPixelCopyFinished(int i) {
                if (i == 0) {
                    cancellableContinuationImpl.resume((CancellableContinuation<Bitmap>) bitmap, (Function1<? super Throwable, Unit>) new Function1<Throwable, Unit>() { // from class: androidx.test.core.view.WindowCapture$generateBitmapFromPixelCopy$2$onCopyFinished$1.1
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
                    return;
                }
                CancellableContinuation<Bitmap> cancellableContinuation = cancellableContinuationImpl;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(new RuntimeException(AbstractC0362x4440ab85.m2929x9738a56c(i, "PixelCopy failed: ")))));
            }
        }), new Handler(Looper.getMainLooper()));
        Object result = cancellableContinuationImpl.getResult();
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public static /* synthetic */ Object generateBitmapFromPixelCopy$default(Window window, Rect rect, Bitmap bitmap, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            rect = null;
        }
        return generateBitmapFromPixelCopy(window, rect, bitmap, continuation);
    }
}
