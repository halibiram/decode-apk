package androidx.camera.core;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.imagecapture.RequestWithCallback;
import androidx.camera.core.imagecapture.TakePictureRequest;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import defpackage.AbstractC0892xc141c517;
import java.util.concurrent.Executor;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.ExecutorsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u000e\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\u0001\u001aT\u0010\u0003\u001a\u00020\u0004*\u00020\u00022\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t2\u0016\b\u0002\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tH\u0086@¢\u0006\u0002\u0010\r\u001a\\\u0010\u0003\u001a\u00020\u000e*\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00102\u0010\b\u0002\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u00062\u0016\b\u0002\u0010\b\u001a\u0010\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t2\u0016\b\u0002\u0010\u000b\u001a\u0010\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tH\u0086@¢\u0006\u0002\u0010\u0011¨\u0006\u0012"}, d2 = {"getTakePictureRequest", "Landroidx/camera/core/imagecapture/TakePictureRequest;", "Landroidx/camera/core/ImageCapture;", "takePicture", "Landroidx/camera/core/ImageProxy;", "onCaptureStarted", "Lkotlin/Function0;", "", "onCaptureProcessProgressed", "Lkotlin/Function1;", "", "onPostviewBitmapAvailable", "Landroid/graphics/Bitmap;", "(Landroidx/camera/core/ImageCapture;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Landroidx/camera/core/ImageCapture$OutputFileResults;", "outputFileOptions", "Landroidx/camera/core/ImageCapture$OutputFileOptions;", "(Landroidx/camera/core/ImageCapture;Landroidx/camera/core/ImageCapture$OutputFileOptions;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "camera-core_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nImageCaptureExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageCaptureExt.kt\nandroidx/camera/core/ImageCaptureExtKt\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,203:1\n329#2:204\n329#2:216\n314#3,11:205\n314#3,11:217\n*S KotlinDebug\n*F\n+ 1 ImageCaptureExt.kt\nandroidx/camera/core/ImageCaptureExtKt\n*L\n50#1:204\n102#1:216\n52#1:205,11\n104#1:217,11\n*E\n"})
/* loaded from: classes.dex */
public final class ImageCaptureExtKt {
    @VisibleForTesting
    @Nullable
    public static final TakePictureRequest getTakePictureRequest(@NotNull ImageCapture imageCapture) {
        Intrinsics.checkNotNullParameter(imageCapture, "<this>");
        RequestWithCallback capturingRequest = imageCapture.getTakePictureManager().getCapturingRequest();
        if (capturingRequest != null) {
            return capturingRequest.getTakePictureRequest();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [T, androidx.camera.core.DelegatingImageCapturedCallback] */
    @Nullable
    public static final Object takePicture(@NotNull ImageCapture imageCapture, @Nullable final Function0<Unit> function0, @Nullable final Function1<? super Integer, Unit> function1, @Nullable final Function1<? super Bitmap, Unit> function12, @NotNull Continuation<? super ImageProxy> continuation) {
        Executor directExecutor;
        CoroutineContext.Element element = continuation.getContext().get(ContinuationInterceptor.INSTANCE);
        CoroutineDispatcher coroutineDispatcher = element instanceof CoroutineDispatcher ? (CoroutineDispatcher) element : null;
        if (coroutineDispatcher == null || (directExecutor = ExecutorsKt.asExecutor(coroutineDispatcher)) == null) {
            directExecutor = CameraXExecutors.directExecutor();
            Intrinsics.checkNotNullExpressionValue(directExecutor, "directExecutor()");
        }
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new DelegatingImageCapturedCallback(new ImageCapture.OnImageCapturedCallback() { // from class: androidx.camera.core.ImageCaptureExtKt$takePicture$2$1
            @Override // androidx.camera.core.ImageCapture.OnImageCapturedCallback
            public void onCaptureProcessProgressed(int progress) {
                Function1<Integer, Unit> function13 = function1;
                if (function13 != null) {
                    function13.invoke(Integer.valueOf(progress));
                }
            }

            @Override // androidx.camera.core.ImageCapture.OnImageCapturedCallback
            public void onCaptureStarted() {
                Function0<Unit> function02 = function0;
                if (function02 != null) {
                    function02.invoke();
                }
            }

            @Override // androidx.camera.core.ImageCapture.OnImageCapturedCallback
            public void onCaptureSuccess(@NotNull ImageProxy imageProxy) {
                DelegatingImageCapturedCallback delegatingImageCapturedCallback;
                Intrinsics.checkNotNullParameter(imageProxy, "imageProxy");
                DelegatingImageCapturedCallback delegatingImageCapturedCallback2 = objectRef.element;
                if (delegatingImageCapturedCallback2 == null) {
                    delegatingImageCapturedCallback = null;
                } else {
                    delegatingImageCapturedCallback = delegatingImageCapturedCallback2;
                }
                delegatingImageCapturedCallback.dispose();
                cancellableContinuationImpl.resumeWith(Result.m1764constructorimpl(imageProxy));
            }

            @Override // androidx.camera.core.ImageCapture.OnImageCapturedCallback
            public void onError(@NotNull ImageCaptureException exception) {
                DelegatingImageCapturedCallback delegatingImageCapturedCallback;
                Intrinsics.checkNotNullParameter(exception, "exception");
                DelegatingImageCapturedCallback delegatingImageCapturedCallback2 = objectRef.element;
                if (delegatingImageCapturedCallback2 == null) {
                    delegatingImageCapturedCallback = null;
                } else {
                    delegatingImageCapturedCallback = delegatingImageCapturedCallback2;
                }
                delegatingImageCapturedCallback.dispose();
                CancellableContinuation<ImageProxy> cancellableContinuation = cancellableContinuationImpl;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(exception)));
            }

            @Override // androidx.camera.core.ImageCapture.OnImageCapturedCallback
            public void onPostviewBitmapAvailable(@NotNull Bitmap bitmap) {
                Intrinsics.checkNotNullParameter(bitmap, "bitmap");
                Function1<Bitmap, Unit> function13 = function12;
                if (function13 != null) {
                    function13.invoke(bitmap);
                }
            }
        });
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.camera.core.ImageCaptureExtKt$takePicture$2$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th) {
                DelegatingImageCapturedCallback delegatingImageCapturedCallback = objectRef.element;
                (delegatingImageCapturedCallback == null ? null : delegatingImageCapturedCallback).dispose();
            }
        });
        T t = objectRef.element;
        imageCapture.lambda$takePicture$1(directExecutor, t != 0 ? (DelegatingImageCapturedCallback) t : null);
        Object result = cancellableContinuationImpl.getResult();
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }

    public static /* synthetic */ Object takePicture$default(ImageCapture imageCapture, Function0 function0, Function1 function1, Function1 function12, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = null;
        }
        if ((i & 2) != 0) {
            function1 = null;
        }
        if ((i & 4) != 0) {
            function12 = null;
        }
        return takePicture(imageCapture, function0, function1, function12, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [androidx.camera.core.DelegatingImageSavedCallback, T] */
    @Nullable
    public static final Object takePicture(@NotNull ImageCapture imageCapture, @NotNull ImageCapture.OutputFileOptions outputFileOptions, @Nullable final Function0<Unit> function0, @Nullable final Function1<? super Integer, Unit> function1, @Nullable final Function1<? super Bitmap, Unit> function12, @NotNull Continuation<? super ImageCapture.OutputFileResults> continuation) {
        Executor directExecutor;
        CoroutineContext.Element element = continuation.getContext().get(ContinuationInterceptor.INSTANCE);
        CoroutineDispatcher coroutineDispatcher = element instanceof CoroutineDispatcher ? (CoroutineDispatcher) element : null;
        if (coroutineDispatcher == null || (directExecutor = ExecutorsKt.asExecutor(coroutineDispatcher)) == null) {
            directExecutor = CameraXExecutors.directExecutor();
            Intrinsics.checkNotNullExpressionValue(directExecutor, "directExecutor()");
        }
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        objectRef.element = new DelegatingImageSavedCallback(new ImageCapture.OnImageSavedCallback() { // from class: androidx.camera.core.ImageCaptureExtKt$takePicture$4$1
            @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
            public void onCaptureProcessProgressed(int progress) {
                Function1<Integer, Unit> function13 = function1;
                if (function13 != null) {
                    function13.invoke(Integer.valueOf(progress));
                }
            }

            @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
            public void onCaptureStarted() {
                Function0<Unit> function02 = function0;
                if (function02 != null) {
                    function02.invoke();
                }
            }

            @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
            public void onError(@NotNull ImageCaptureException exception) {
                DelegatingImageSavedCallback delegatingImageSavedCallback;
                Intrinsics.checkNotNullParameter(exception, "exception");
                DelegatingImageSavedCallback delegatingImageSavedCallback2 = objectRef.element;
                if (delegatingImageSavedCallback2 == null) {
                    delegatingImageSavedCallback = null;
                } else {
                    delegatingImageSavedCallback = delegatingImageSavedCallback2;
                }
                delegatingImageSavedCallback.dispose();
                CancellableContinuation<ImageCapture.OutputFileResults> cancellableContinuation = cancellableContinuationImpl;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(Result.m1764constructorimpl(ResultKt.createFailure(exception)));
            }

            @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
            public void onImageSaved(@NotNull ImageCapture.OutputFileResults outputFileResults) {
                DelegatingImageSavedCallback delegatingImageSavedCallback;
                Intrinsics.checkNotNullParameter(outputFileResults, "outputFileResults");
                DelegatingImageSavedCallback delegatingImageSavedCallback2 = objectRef.element;
                if (delegatingImageSavedCallback2 == null) {
                    delegatingImageSavedCallback = null;
                } else {
                    delegatingImageSavedCallback = delegatingImageSavedCallback2;
                }
                delegatingImageSavedCallback.dispose();
                cancellableContinuationImpl.resumeWith(Result.m1764constructorimpl(outputFileResults));
            }

            @Override // androidx.camera.core.ImageCapture.OnImageSavedCallback
            public void onPostviewBitmapAvailable(@NotNull Bitmap bitmap) {
                Intrinsics.checkNotNullParameter(bitmap, "bitmap");
                Function1<Bitmap, Unit> function13 = function12;
                if (function13 != null) {
                    function13.invoke(bitmap);
                }
            }
        });
        cancellableContinuationImpl.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: androidx.camera.core.ImageCaptureExtKt$takePicture$4$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@Nullable Throwable th) {
                DelegatingImageSavedCallback delegatingImageSavedCallback = objectRef.element;
                (delegatingImageSavedCallback == null ? null : delegatingImageSavedCallback).dispose();
            }
        });
        T t = objectRef.element;
        imageCapture.lambda$takePicture$2(outputFileOptions, directExecutor, t != 0 ? (DelegatingImageSavedCallback) t : null);
        Object result = cancellableContinuationImpl.getResult();
        if (result == AbstractC0892xc141c517.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
