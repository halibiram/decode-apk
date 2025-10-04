package androidx.camera.view;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Size;
import android.view.PixelCopy;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.UiThread;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.view.PreviewView;
import androidx.camera.view.PreviewViewImplementation;
import androidx.camera.view.SurfaceViewImplementation;
import androidx.core.content.ContextCompat;
import androidx.core.util.Consumer;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.Semaphore;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class SurfaceViewImplementation extends PreviewViewImplementation {
    private static final int SCREENSHOT_TIMEOUT_MILLIS = 100;
    private static final String TAG = "SurfaceViewImpl";
    final SurfaceRequestCallback mSurfaceRequestCallback;
    SurfaceView mSurfaceView;

    @RequiresApi(24)
    /* loaded from: classes.dex */
    public static class Api24Impl {
        private Api24Impl() {
        }

        public static void pixelCopyRequest(@NonNull SurfaceView surfaceView, @NonNull Bitmap bitmap, @NonNull PixelCopy.OnPixelCopyFinishedListener onPixelCopyFinishedListener, @NonNull Handler handler) {
            PixelCopy.request(surfaceView, bitmap, onPixelCopyFinishedListener, handler);
        }
    }

    /* loaded from: classes.dex */
    public class SurfaceRequestCallback implements SurfaceHolder.Callback {

        @Nullable
        private Size mCurrentSurfaceSize;

        @Nullable
        private PreviewViewImplementation.OnSurfaceNotInUseListener mOnSurfaceNotInUseListener;

        @Nullable
        private SurfaceRequest mSurfaceRequest;

        @Nullable
        private SurfaceRequest mSurfaceRequestToBeInvalidated;

        @Nullable
        private Size mTargetSize;
        private boolean mWasSurfaceProvided = false;
        private boolean mNeedToInvalidate = false;

        public SurfaceRequestCallback() {
        }

        private boolean canProvideSurface() {
            if (!this.mWasSurfaceProvided && this.mSurfaceRequest != null && Objects.equals(this.mTargetSize, this.mCurrentSurfaceSize)) {
                return true;
            }
            return false;
        }

        @UiThread
        private void cancelPreviousRequest() {
            if (this.mSurfaceRequest != null) {
                Logger.d(SurfaceViewImplementation.TAG, "Request canceled: " + this.mSurfaceRequest);
                this.mSurfaceRequest.willNotProvideSurface();
            }
        }

        @UiThread
        private void closeSurface() {
            if (this.mSurfaceRequest != null) {
                Logger.d(SurfaceViewImplementation.TAG, "Surface closed " + this.mSurfaceRequest);
                this.mSurfaceRequest.getDeferrableSurface().close();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$tryToComplete$0(PreviewViewImplementation.OnSurfaceNotInUseListener onSurfaceNotInUseListener, SurfaceRequest.Result result) {
            Logger.d(SurfaceViewImplementation.TAG, "Safe to release surface.");
            if (onSurfaceNotInUseListener != null) {
                onSurfaceNotInUseListener.onSurfaceNotInUse();
            }
        }

        @UiThread
        private boolean tryToComplete() {
            Surface surface = SurfaceViewImplementation.this.mSurfaceView.getHolder().getSurface();
            if (canProvideSurface()) {
                Logger.d(SurfaceViewImplementation.TAG, "Surface set on Preview.");
                final PreviewViewImplementation.OnSurfaceNotInUseListener onSurfaceNotInUseListener = this.mOnSurfaceNotInUseListener;
                SurfaceRequest surfaceRequest = this.mSurfaceRequest;
                Objects.requireNonNull(surfaceRequest);
                surfaceRequest.provideSurface(surface, ContextCompat.getMainExecutor(SurfaceViewImplementation.this.mSurfaceView.getContext()), new Consumer() { // from class: androidx.camera.view.뎨됫땔땵땃돳듰땩됐뎰둥된돴딻딟땥딀둥뒤땁뎰땦땦될땮드딎땄뎻땨땣돝땔드뒹딀뎻뎬땫디땦땮땡둥딤딎됴딠뒵땬딸뒷딁둬듌땝땀땄땄딸듐땵둔딸딜뎨뎻뒀딨둥듸뎹됐딹땳땡듰득뎹두딝뒛땹돼뒷땐돤뒾듨둡땀딃땭땀돨뎬딃뎨땝돵딀됩뎰뒹땠뒷딅딝뎨뎠뎹딹딃돴뎡딄돸듬딃둠돶득뒝땔뎽땠딁됨뒬딻
                    @Override // androidx.core.util.Consumer
                    public final void accept(Object obj) {
                        SurfaceViewImplementation.SurfaceRequestCallback.lambda$tryToComplete$0(PreviewViewImplementation.OnSurfaceNotInUseListener.this, (SurfaceRequest.Result) obj);
                    }
                });
                this.mWasSurfaceProvided = true;
                SurfaceViewImplementation.this.onSurfaceProvided();
                return true;
            }
            return false;
        }

        @UiThread
        public void setSurfaceRequest(@NonNull SurfaceRequest surfaceRequest, @Nullable PreviewViewImplementation.OnSurfaceNotInUseListener onSurfaceNotInUseListener) {
            cancelPreviousRequest();
            if (this.mNeedToInvalidate) {
                this.mNeedToInvalidate = false;
                surfaceRequest.invalidate();
                return;
            }
            this.mSurfaceRequest = surfaceRequest;
            this.mOnSurfaceNotInUseListener = onSurfaceNotInUseListener;
            Size resolution = surfaceRequest.getResolution();
            this.mTargetSize = resolution;
            this.mWasSurfaceProvided = false;
            if (!tryToComplete()) {
                Logger.d(SurfaceViewImplementation.TAG, "Wait for new Surface creation.");
                SurfaceViewImplementation.this.mSurfaceView.getHolder().setFixedSize(resolution.getWidth(), resolution.getHeight());
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(@NonNull SurfaceHolder surfaceHolder, int i, int i2, int i3) {
            Logger.d(SurfaceViewImplementation.TAG, "Surface changed. Size: " + i2 + "x" + i3);
            this.mCurrentSurfaceSize = new Size(i2, i3);
            tryToComplete();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(@NonNull SurfaceHolder surfaceHolder) {
            SurfaceRequest surfaceRequest;
            Logger.d(SurfaceViewImplementation.TAG, "Surface created.");
            if (this.mNeedToInvalidate && (surfaceRequest = this.mSurfaceRequestToBeInvalidated) != null) {
                surfaceRequest.invalidate();
                this.mSurfaceRequestToBeInvalidated = null;
                this.mNeedToInvalidate = false;
            }
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(@NonNull SurfaceHolder surfaceHolder) {
            Logger.d(SurfaceViewImplementation.TAG, "Surface destroyed.");
            if (this.mWasSurfaceProvided) {
                closeSurface();
            } else {
                cancelPreviousRequest();
            }
            this.mNeedToInvalidate = true;
            SurfaceRequest surfaceRequest = this.mSurfaceRequest;
            if (surfaceRequest != null) {
                this.mSurfaceRequestToBeInvalidated = surfaceRequest;
            }
            this.mWasSurfaceProvided = false;
            this.mSurfaceRequest = null;
            this.mOnSurfaceNotInUseListener = null;
            this.mCurrentSurfaceSize = null;
            this.mTargetSize = null;
        }
    }

    public SurfaceViewImplementation(@NonNull FrameLayout frameLayout, @NonNull PreviewTransformation previewTransformation) {
        super(frameLayout, previewTransformation);
        this.mSurfaceRequestCallback = new SurfaceRequestCallback();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$getPreviewBitmap$1(Semaphore semaphore, int i) {
        if (i == 0) {
            Logger.d(TAG, "PreviewView.SurfaceViewImplementation.getBitmap() succeeded");
        } else {
            Logger.e(TAG, "PreviewView.SurfaceViewImplementation.getBitmap() failed with error " + i);
        }
        semaphore.release();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onSurfaceRequested$0(SurfaceRequest surfaceRequest, PreviewViewImplementation.OnSurfaceNotInUseListener onSurfaceNotInUseListener) {
        this.mSurfaceRequestCallback.setSurfaceRequest(surfaceRequest, onSurfaceNotInUseListener);
    }

    private static boolean shouldReusePreview(@Nullable SurfaceView surfaceView, @Nullable Size size, @NonNull SurfaceRequest surfaceRequest) {
        boolean equals = Objects.equals(size, surfaceRequest.getResolution());
        if (surfaceView != null && equals) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    @Nullable
    public View getPreview() {
        return this.mSurfaceView;
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    @Nullable
    @RequiresApi(24)
    public Bitmap getPreviewBitmap() {
        SurfaceView surfaceView = this.mSurfaceView;
        if (surfaceView != null && surfaceView.getHolder().getSurface() != null && this.mSurfaceView.getHolder().getSurface().isValid()) {
            final Semaphore semaphore = new Semaphore(0);
            Bitmap createBitmap = Bitmap.createBitmap(this.mSurfaceView.getWidth(), this.mSurfaceView.getHeight(), Bitmap.Config.ARGB_8888);
            HandlerThread handlerThread = new HandlerThread("pixelCopyRequest Thread");
            handlerThread.start();
            Api24Impl.pixelCopyRequest(this.mSurfaceView, createBitmap, new PixelCopy.OnPixelCopyFinishedListener() { // from class: androidx.camera.view.뎨될듼뒵돸딅딟도딹뒀됩땰둠땐둥돨두뒙땬딸딃땩땣듬땜땫뒤됩땤땃뎹돶뒬도뎻뒵듰됨돼될뎰딎둬딟딅딨땬땧뒉듼되됫딌되딅듻땀뎸도땄돠땠따땄땩둔딄딤두득땔땲딞땰뒾돨뎽딝된땵땭뒉땦딤뒐땵땳듽뒈땻돼딽들땧도뒻둥둡땰딝뒉딸뒛뒝둑듐땤득딝뒘땃따디뎡둥땥되땟땄돛땲둣땰뒋딟땯듟뎡둑뎠
                @Override // android.view.PixelCopy.OnPixelCopyFinishedListener
                public final void onPixelCopyFinished(int i) {
                    SurfaceViewImplementation.lambda$getPreviewBitmap$1(semaphore, i);
                }
            }, new Handler(handlerThread.getLooper()));
            try {
                try {
                    if (!semaphore.tryAcquire(1, 100L, TimeUnit.MILLISECONDS)) {
                        Logger.e(TAG, "Timed out while trying to acquire screenshot.");
                    }
                } catch (InterruptedException e) {
                    Logger.e(TAG, "Interrupted while trying to acquire screenshot.", e);
                }
                return createBitmap;
            } finally {
                handlerThread.quitSafely();
            }
        }
        return null;
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public void initializePreview() {
        Preconditions.checkNotNull(this.mParent);
        Preconditions.checkNotNull(this.mResolution);
        SurfaceView surfaceView = new SurfaceView(this.mParent.getContext());
        this.mSurfaceView = surfaceView;
        surfaceView.setLayoutParams(new FrameLayout.LayoutParams(this.mResolution.getWidth(), this.mResolution.getHeight()));
        this.mParent.removeAllViews();
        this.mParent.addView(this.mSurfaceView);
        this.mSurfaceView.getHolder().addCallback(this.mSurfaceRequestCallback);
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public void onAttachedToWindow() {
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public void onDetachedFromWindow() {
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public void onSurfaceRequested(@NonNull final SurfaceRequest surfaceRequest, @Nullable final PreviewViewImplementation.OnSurfaceNotInUseListener onSurfaceNotInUseListener) {
        if (!shouldReusePreview(this.mSurfaceView, this.mResolution, surfaceRequest)) {
            this.mResolution = surfaceRequest.getResolution();
            initializePreview();
        }
        if (onSurfaceNotInUseListener != null) {
            surfaceRequest.addRequestCancellationListener(ContextCompat.getMainExecutor(this.mSurfaceView.getContext()), new RunnableC0125x1378447b(onSurfaceNotInUseListener, 1));
        }
        this.mSurfaceView.post(new Runnable() { // from class: androidx.camera.view.뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎
            @Override // java.lang.Runnable
            public final void run() {
                SurfaceViewImplementation.this.lambda$onSurfaceRequested$0(surfaceRequest, onSurfaceNotInUseListener);
            }
        });
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public void setFrameUpdateListener(@NonNull Executor executor, @NonNull PreviewView.OnFrameUpdateListener onFrameUpdateListener) {
        throw new IllegalArgumentException("SurfaceView doesn't support frame update listener");
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    @NonNull
    public ListenableFuture<Void> waitForNextFrame() {
        return Futures.immediateFuture(null);
    }
}
