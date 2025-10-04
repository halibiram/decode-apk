package androidx.camera.core.processing;

import androidx.annotation.NonNull;
import androidx.camera.core.CameraEffect;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProcessor;
import androidx.camera.core.ProcessingException;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import defpackage.C0379x9172909e;
import defpackage.RunnableC0384x149e5abd;
import j$.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class InternalImageProcessor {

    @NonNull
    private final Consumer<Throwable> mErrorListener;

    @NonNull
    private final Executor mExecutor;

    @NonNull
    private final ImageProcessor mImageProcessor;

    public InternalImageProcessor(@NonNull CameraEffect cameraEffect) {
        boolean z;
        if (cameraEffect.getTargets() == 4) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        this.mExecutor = cameraEffect.getExecutor();
        ImageProcessor imageProcessor = cameraEffect.getImageProcessor();
        Objects.requireNonNull(imageProcessor);
        this.mImageProcessor = imageProcessor;
        this.mErrorListener = cameraEffect.getErrorListener();
    }

    public /* synthetic */ void lambda$safeProcess$0(ImageProcessor.Request request, CallbackToFutureAdapter.Completer completer) {
        try {
            completer.set(this.mImageProcessor.process(request));
        } catch (ProcessingException e) {
            this.mErrorListener.accept(e);
            completer.setException(e);
        }
    }

    public /* synthetic */ Object lambda$safeProcess$1(ImageProcessor.Request request, CallbackToFutureAdapter.Completer completer) {
        this.mExecutor.execute(new RunnableC0384x149e5abd(this, 10, request, completer));
        return "InternalImageProcessor#process " + request.hashCode();
    }

    /* renamed from: 뎠둠땪듼뎠딅땲둔듽됫딞돰둡딞듼뎨뎨듔땡딝땨땃땀뒻딤딹돝되땳땲딸뒾뎨땱땥돶뒛뒷들뒨땋돠뎡둔된돤든됫딹돳돴돛땍땸뒵둑돳땨땝득땮땠땨딀딄뒨뒀땀땋듽됫딹땵딨뒵듸땵뎬뒻돤땨두듰땫땻뒋돶두땣뎡뎡듐땫땰뒉뎹땩땱둑딄돳듸뒤뎻땮딜땻됨뎸뒼딃됫돸땮땮돨뒨땡땲딨돷되땋둘돠땪뒷뒙땅뎸 */
    public static /* synthetic */ Object m308xfbe0c504(InternalImageProcessor internalImageProcessor, ImageProcessor.Request request, CallbackToFutureAdapter.Completer completer) {
        return internalImageProcessor.lambda$safeProcess$1(request, completer);
    }

    @NonNull
    public ImageProcessor.Response safeProcess(@NonNull ImageProcessor.Request request) {
        try {
            return (ImageProcessor.Response) CallbackToFutureAdapter.getFuture(new C0379x9172909e(this, request, 6)).get();
        } catch (Exception e) {
            e = e;
            if (e.getCause() != null) {
                e = e.getCause();
            }
            throw new ImageCaptureException(0, "Failed to invoke ImageProcessor.", e);
        }
    }
}
