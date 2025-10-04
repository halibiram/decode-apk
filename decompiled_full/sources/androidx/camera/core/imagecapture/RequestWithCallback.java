package androidx.camera.core.imagecapture;

import android.graphics.Bitmap;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.imagecapture.RequestWithCallback;
import androidx.camera.core.imagecapture.TakePictureRequest;
import androidx.camera.core.impl.utils.Threads;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;

/* loaded from: classes.dex */
public class RequestWithCallback implements TakePictureCallback {
    private CallbackToFutureAdapter.Completer<Void> mCaptureCompleter;
    private final ListenableFuture<Void> mCaptureFuture;

    @Nullable
    private ListenableFuture<Void> mCaptureRequestFuture;
    private CallbackToFutureAdapter.Completer<Void> mCompleteCompleter;
    private final ListenableFuture<Void> mCompleteFuture;
    private boolean mIsAborted = false;
    private boolean mIsStarted = false;
    private final TakePictureRequest.RetryControl mRetryControl;
    private final TakePictureRequest mTakePictureRequest;

    public RequestWithCallback(@NonNull TakePictureRequest takePictureRequest, @NonNull TakePictureRequest.RetryControl retryControl) {
        this.mTakePictureRequest = takePictureRequest;
        this.mRetryControl = retryControl;
        final int i = 0;
        this.mCaptureFuture = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver(this) { // from class: 땅땪돴땁뒐두딸뎰돠뒘땤뒛두딤땹돨딄둠돝딻땮땣뎸땳뎸듨됴됐땄뎰뒤돵듸땜뒵듐뎨뒐돸둣돶돤됨땩돶땨돠들돷둥땥땨뒵땨땦드땨뒬듼돶뒼땩땬땔돷땹땮든뒨됨땮둠든된땠듨뎡들듬뒤땦듸들땹뎹땡듌땡돠뎰딎둔됨뎻뎽뒹도땍둘딞뒻뒤듔됴뎸땬딞돶뒻돰뒷듼땀듨땔땡뒤뎸뎨땟돵뒾듨뒨들뎠돛둔땄둣

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ RequestWithCallback f5386x3271d0aa;

            {
                this.f5386x3271d0aa = this;
            }

            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Object lambda$new$0;
                Object lambda$new$1;
                switch (i) {
                    case 0:
                        lambda$new$0 = this.f5386x3271d0aa.lambda$new$0(completer);
                        return lambda$new$0;
                    default:
                        lambda$new$1 = this.f5386x3271d0aa.lambda$new$1(completer);
                        return lambda$new$1;
                }
            }
        });
        final int i2 = 1;
        this.mCompleteFuture = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver(this) { // from class: 땅땪돴땁뒐두딸뎰돠뒘땤뒛두딤땹돨딄둠돝딻땮땣뎸땳뎸듨됴됐땄뎰뒤돵듸땜뒵듐뎨뒐돸둣돶돤됨땩돶땨돠들돷둥땥땨뒵땨땦드땨뒬듼돶뒼땩땬땔돷땹땮든뒨됨땮둠든된땠듨뎡들듬뒤땦듸들땹뎹땡듌땡돠뎰딎둔됨뎻뎽뒹도땍둘딞뒻뒤듔됴뎸땬딞돶뒻돰뒷듼땀듨땔땡뒤뎸뎨땟돵뒾듨뒨들뎠돛둔땄둣

            /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
            public final /* synthetic */ RequestWithCallback f5386x3271d0aa;

            {
                this.f5386x3271d0aa = this;
            }

            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Object lambda$new$0;
                Object lambda$new$1;
                switch (i2) {
                    case 0:
                        lambda$new$0 = this.f5386x3271d0aa.lambda$new$0(completer);
                        return lambda$new$0;
                    default:
                        lambda$new$1 = this.f5386x3271d0aa.lambda$new$1(completer);
                        return lambda$new$1;
                }
            }
        });
    }

    @MainThread
    private void abort(@NonNull ImageCaptureException imageCaptureException) {
        Threads.checkMainThread();
        this.mIsAborted = true;
        ListenableFuture<Void> listenableFuture = this.mCaptureRequestFuture;
        Objects.requireNonNull(listenableFuture);
        listenableFuture.cancel(true);
        this.mCaptureCompleter.setException(imageCaptureException);
        this.mCompleteCompleter.set(null);
    }

    private void checkOnImageCaptured() {
        Preconditions.checkState(this.mCaptureFuture.isDone(), "onImageCaptured() must be called before onFinalResult()");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$new$0(CallbackToFutureAdapter.Completer completer) {
        this.mCaptureCompleter = completer;
        return "CaptureCompleteFuture";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object lambda$new$1(CallbackToFutureAdapter.Completer completer) {
        this.mCompleteCompleter = completer;
        return "RequestCompleteFuture";
    }

    private void markComplete() {
        Preconditions.checkState(!this.mCompleteFuture.isDone(), "The callback can only complete once.");
        this.mCompleteCompleter.set(null);
    }

    @MainThread
    private void onFailure(@NonNull ImageCaptureException imageCaptureException) {
        Threads.checkMainThread();
        this.mTakePictureRequest.onError(imageCaptureException);
    }

    @MainThread
    public void abortAndSendErrorToApp(@NonNull ImageCaptureException imageCaptureException) {
        Threads.checkMainThread();
        if (this.mCompleteFuture.isDone()) {
            return;
        }
        abort(imageCaptureException);
        onFailure(imageCaptureException);
    }

    @MainThread
    public void abortSilentlyAndRetry() {
        Threads.checkMainThread();
        if (this.mCompleteFuture.isDone()) {
            return;
        }
        abort(new ImageCaptureException(3, "The request is aborted silently and retried.", null));
        this.mRetryControl.retryRequest(this.mTakePictureRequest);
    }

    @NonNull
    @MainThread
    public ListenableFuture<Void> getCaptureFuture() {
        Threads.checkMainThread();
        return this.mCaptureFuture;
    }

    @NonNull
    @MainThread
    public ListenableFuture<Void> getCompleteFuture() {
        Threads.checkMainThread();
        return this.mCompleteFuture;
    }

    @NonNull
    @VisibleForTesting
    public TakePictureRequest getTakePictureRequest() {
        return this.mTakePictureRequest;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureCallback
    public boolean isAborted() {
        return this.mIsAborted;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureCallback
    @MainThread
    public void onCaptureFailure(@NonNull ImageCaptureException imageCaptureException) {
        Threads.checkMainThread();
        if (this.mIsAborted) {
            return;
        }
        boolean decrementRetryCounter = this.mTakePictureRequest.decrementRetryCounter();
        if (!decrementRetryCounter) {
            onFailure(imageCaptureException);
        }
        markComplete();
        this.mCaptureCompleter.setException(imageCaptureException);
        if (decrementRetryCounter) {
            this.mRetryControl.retryRequest(this.mTakePictureRequest);
        }
    }

    @Override // androidx.camera.core.imagecapture.TakePictureCallback
    public void onCaptureProcessProgressed(int i) {
        Threads.checkMainThread();
        if (this.mIsAborted) {
            return;
        }
        this.mTakePictureRequest.onCaptureProcessProgressed(i);
    }

    @Override // androidx.camera.core.imagecapture.TakePictureCallback
    @MainThread
    public void onCaptureStarted() {
        Threads.checkMainThread();
        if (!this.mIsAborted && !this.mIsStarted) {
            this.mIsStarted = true;
            ImageCapture.OnImageCapturedCallback inMemoryCallback = this.mTakePictureRequest.getInMemoryCallback();
            if (inMemoryCallback != null) {
                inMemoryCallback.onCaptureStarted();
            }
            ImageCapture.OnImageSavedCallback onDiskCallback = this.mTakePictureRequest.getOnDiskCallback();
            if (onDiskCallback != null) {
                onDiskCallback.onCaptureStarted();
            }
        }
    }

    @Override // androidx.camera.core.imagecapture.TakePictureCallback
    @MainThread
    public void onFinalResult(@NonNull ImageCapture.OutputFileResults outputFileResults) {
        Threads.checkMainThread();
        if (this.mIsAborted) {
            return;
        }
        checkOnImageCaptured();
        markComplete();
        this.mTakePictureRequest.onResult(outputFileResults);
    }

    @Override // androidx.camera.core.imagecapture.TakePictureCallback
    @MainThread
    public void onImageCaptured() {
        Threads.checkMainThread();
        if (this.mIsAborted) {
            return;
        }
        if (!this.mIsStarted) {
            onCaptureStarted();
        }
        this.mCaptureCompleter.set(null);
    }

    @Override // androidx.camera.core.imagecapture.TakePictureCallback
    public void onPostviewBitmapAvailable(@NonNull Bitmap bitmap) {
        Threads.checkMainThread();
        if (this.mIsAborted) {
            return;
        }
        this.mTakePictureRequest.onPostviewBitmapAvailable(bitmap);
    }

    @Override // androidx.camera.core.imagecapture.TakePictureCallback
    @MainThread
    public void onProcessFailure(@NonNull ImageCaptureException imageCaptureException) {
        Threads.checkMainThread();
        if (this.mIsAborted) {
            return;
        }
        checkOnImageCaptured();
        markComplete();
        onFailure(imageCaptureException);
    }

    @MainThread
    public void setCaptureRequestFuture(@NonNull ListenableFuture<Void> listenableFuture) {
        boolean z;
        Threads.checkMainThread();
        if (this.mCaptureRequestFuture == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, "CaptureRequestFuture can only be set once.");
        this.mCaptureRequestFuture = listenableFuture;
    }

    @Override // androidx.camera.core.imagecapture.TakePictureCallback
    @MainThread
    public void onFinalResult(@NonNull ImageProxy imageProxy) {
        Threads.checkMainThread();
        if (this.mIsAborted) {
            imageProxy.close();
            return;
        }
        checkOnImageCaptured();
        markComplete();
        this.mTakePictureRequest.onResult(imageProxy);
    }
}
