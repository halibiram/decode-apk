package androidx.camera.view;

import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.util.Size;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.Logger;
import androidx.camera.core.SurfaceRequest;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.view.PreviewView;
import androidx.camera.view.PreviewViewImplementation;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.content.ContextCompat;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.C1078xcc023a4b;
import j$.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class TextureViewImplementation extends PreviewViewImplementation {
    private static final String TAG = "TextureViewImpl";
    SurfaceTexture mDetachedSurfaceTexture;

    @Nullable
    Executor mFrameUpdateExecutor;
    boolean mIsSurfaceTextureDetachedFromView;
    AtomicReference<CallbackToFutureAdapter.Completer<Void>> mNextFrameCompleter;

    @Nullable
    PreviewView.OnFrameUpdateListener mOnFrameUpdateListener;

    @Nullable
    PreviewViewImplementation.OnSurfaceNotInUseListener mOnSurfaceNotInUseListener;
    ListenableFuture<SurfaceRequest.Result> mSurfaceReleaseFuture;
    SurfaceRequest mSurfaceRequest;
    SurfaceTexture mSurfaceTexture;
    TextureView mTextureView;

    /* renamed from: androidx.camera.view.TextureViewImplementation$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements TextureView.SurfaceTextureListener {

        /* renamed from: androidx.camera.view.TextureViewImplementation$1$1 */
        /* loaded from: classes.dex */
        public class C01221 implements FutureCallback<SurfaceRequest.Result> {
            final /* synthetic */ SurfaceTexture val$surfaceTexture;

            public C01221(SurfaceTexture surfaceTexture) {
                r2 = surfaceTexture;
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
                throw new IllegalStateException("SurfaceReleaseFuture did not complete nicely.", th);
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(SurfaceRequest.Result result) {
                Preconditions.checkState(result.getResultCode() != 3, "Unexpected result from SurfaceRequest. Surface was provided twice.");
                Logger.d(TextureViewImplementation.TAG, "SurfaceTexture about to manually be destroyed");
                r2.release();
                TextureViewImplementation textureViewImplementation = TextureViewImplementation.this;
                if (textureViewImplementation.mDetachedSurfaceTexture != null) {
                    textureViewImplementation.mDetachedSurfaceTexture = null;
                }
            }
        }

        public AnonymousClass1() {
        }

        public static /* synthetic */ void lambda$onSurfaceTextureUpdated$0(PreviewView.OnFrameUpdateListener onFrameUpdateListener, SurfaceTexture surfaceTexture) {
            onFrameUpdateListener.onFrameUpdate(surfaceTexture.getTimestamp());
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(@NonNull SurfaceTexture surfaceTexture, int i, int i2) {
            Logger.d(TextureViewImplementation.TAG, "SurfaceTexture available. Size: " + i + "x" + i2);
            TextureViewImplementation textureViewImplementation = TextureViewImplementation.this;
            textureViewImplementation.mSurfaceTexture = surfaceTexture;
            if (textureViewImplementation.mSurfaceReleaseFuture != null) {
                Preconditions.checkNotNull(textureViewImplementation.mSurfaceRequest);
                Logger.d(TextureViewImplementation.TAG, "Surface invalidated " + TextureViewImplementation.this.mSurfaceRequest);
                TextureViewImplementation.this.mSurfaceRequest.getDeferrableSurface().close();
                return;
            }
            textureViewImplementation.tryToProvidePreviewSurface();
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(@NonNull SurfaceTexture surfaceTexture) {
            TextureViewImplementation textureViewImplementation = TextureViewImplementation.this;
            textureViewImplementation.mSurfaceTexture = null;
            ListenableFuture<SurfaceRequest.Result> listenableFuture = textureViewImplementation.mSurfaceReleaseFuture;
            if (listenableFuture != null) {
                Futures.addCallback(listenableFuture, new FutureCallback<SurfaceRequest.Result>() { // from class: androidx.camera.view.TextureViewImplementation.1.1
                    final /* synthetic */ SurfaceTexture val$surfaceTexture;

                    public C01221(SurfaceTexture surfaceTexture2) {
                        r2 = surfaceTexture2;
                    }

                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public void onFailure(@NonNull Throwable th) {
                        throw new IllegalStateException("SurfaceReleaseFuture did not complete nicely.", th);
                    }

                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public void onSuccess(SurfaceRequest.Result result) {
                        Preconditions.checkState(result.getResultCode() != 3, "Unexpected result from SurfaceRequest. Surface was provided twice.");
                        Logger.d(TextureViewImplementation.TAG, "SurfaceTexture about to manually be destroyed");
                        r2.release();
                        TextureViewImplementation textureViewImplementation2 = TextureViewImplementation.this;
                        if (textureViewImplementation2.mDetachedSurfaceTexture != null) {
                            textureViewImplementation2.mDetachedSurfaceTexture = null;
                        }
                    }
                }, ContextCompat.getMainExecutor(TextureViewImplementation.this.mTextureView.getContext()));
                TextureViewImplementation.this.mDetachedSurfaceTexture = surfaceTexture2;
                return false;
            }
            Logger.d(TextureViewImplementation.TAG, "SurfaceTexture about to be destroyed");
            return true;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(@NonNull SurfaceTexture surfaceTexture, int i, int i2) {
            Logger.d(TextureViewImplementation.TAG, "SurfaceTexture size changed: " + i + "x" + i2);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(@NonNull SurfaceTexture surfaceTexture) {
            CallbackToFutureAdapter.Completer<Void> andSet = TextureViewImplementation.this.mNextFrameCompleter.getAndSet(null);
            if (andSet != null) {
                andSet.set(null);
            }
            TextureViewImplementation textureViewImplementation = TextureViewImplementation.this;
            PreviewView.OnFrameUpdateListener onFrameUpdateListener = textureViewImplementation.mOnFrameUpdateListener;
            Executor executor = textureViewImplementation.mFrameUpdateExecutor;
            if (onFrameUpdateListener != null && executor != null) {
                executor.execute(new RunnableC0130x95f25580(onFrameUpdateListener, surfaceTexture, 2));
            }
        }
    }

    public TextureViewImplementation(@NonNull FrameLayout frameLayout, @NonNull PreviewTransformation previewTransformation) {
        super(frameLayout, previewTransformation);
        this.mIsSurfaceTextureDetachedFromView = false;
        this.mNextFrameCompleter = new AtomicReference<>();
    }

    public /* synthetic */ void lambda$onSurfaceRequested$0(SurfaceRequest surfaceRequest) {
        SurfaceRequest surfaceRequest2 = this.mSurfaceRequest;
        if (surfaceRequest2 != null && surfaceRequest2 == surfaceRequest) {
            this.mSurfaceRequest = null;
            this.mSurfaceReleaseFuture = null;
        }
        notifySurfaceNotInUse();
    }

    public /* synthetic */ Object lambda$tryToProvidePreviewSurface$1(Surface surface, CallbackToFutureAdapter.Completer completer) {
        Logger.d(TAG, "Surface set on Preview.");
        SurfaceRequest surfaceRequest = this.mSurfaceRequest;
        Executor directExecutor = CameraXExecutors.directExecutor();
        Objects.requireNonNull(completer);
        surfaceRequest.provideSurface(surface, directExecutor, new C1078xcc023a4b(completer, 3));
        return "provideSurface[request=" + this.mSurfaceRequest + " surface=" + surface + "]";
    }

    public /* synthetic */ void lambda$tryToProvidePreviewSurface$2(Surface surface, ListenableFuture listenableFuture, SurfaceRequest surfaceRequest) {
        Logger.d(TAG, "Safe to release surface.");
        notifySurfaceNotInUse();
        surface.release();
        if (this.mSurfaceReleaseFuture == listenableFuture) {
            this.mSurfaceReleaseFuture = null;
        }
        if (this.mSurfaceRequest == surfaceRequest) {
            this.mSurfaceRequest = null;
        }
    }

    public /* synthetic */ Object lambda$waitForNextFrame$3(CallbackToFutureAdapter.Completer completer) {
        this.mNextFrameCompleter.set(completer);
        return "textureViewImpl_waitForNextFrame";
    }

    private void notifySurfaceNotInUse() {
        PreviewViewImplementation.OnSurfaceNotInUseListener onSurfaceNotInUseListener = this.mOnSurfaceNotInUseListener;
        if (onSurfaceNotInUseListener != null) {
            onSurfaceNotInUseListener.onSurfaceNotInUse();
            this.mOnSurfaceNotInUseListener = null;
        }
    }

    private void reattachSurfaceTexture() {
        if (this.mIsSurfaceTextureDetachedFromView && this.mDetachedSurfaceTexture != null) {
            SurfaceTexture surfaceTexture = this.mTextureView.getSurfaceTexture();
            SurfaceTexture surfaceTexture2 = this.mDetachedSurfaceTexture;
            if (surfaceTexture != surfaceTexture2) {
                this.mTextureView.setSurfaceTexture(surfaceTexture2);
                this.mDetachedSurfaceTexture = null;
                this.mIsSurfaceTextureDetachedFromView = false;
            }
        }
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    @Nullable
    public View getPreview() {
        return this.mTextureView;
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    @Nullable
    public Bitmap getPreviewBitmap() {
        TextureView textureView = this.mTextureView;
        if (textureView != null && textureView.isAvailable()) {
            return this.mTextureView.getBitmap();
        }
        return null;
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public void initializePreview() {
        Preconditions.checkNotNull(this.mParent);
        Preconditions.checkNotNull(this.mResolution);
        TextureView textureView = new TextureView(this.mParent.getContext());
        this.mTextureView = textureView;
        textureView.setLayoutParams(new FrameLayout.LayoutParams(this.mResolution.getWidth(), this.mResolution.getHeight()));
        this.mTextureView.setSurfaceTextureListener(new AnonymousClass1());
        this.mParent.removeAllViews();
        this.mParent.addView(this.mTextureView);
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public void onAttachedToWindow() {
        reattachSurfaceTexture();
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public void onDetachedFromWindow() {
        this.mIsSurfaceTextureDetachedFromView = true;
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public void onSurfaceRequested(@NonNull SurfaceRequest surfaceRequest, @Nullable PreviewViewImplementation.OnSurfaceNotInUseListener onSurfaceNotInUseListener) {
        this.mResolution = surfaceRequest.getResolution();
        this.mOnSurfaceNotInUseListener = onSurfaceNotInUseListener;
        initializePreview();
        SurfaceRequest surfaceRequest2 = this.mSurfaceRequest;
        if (surfaceRequest2 != null) {
            surfaceRequest2.willNotProvideSurface();
        }
        this.mSurfaceRequest = surfaceRequest;
        surfaceRequest.addRequestCancellationListener(ContextCompat.getMainExecutor(this.mTextureView.getContext()), new RunnableC0130x95f25580(this, surfaceRequest, 1));
        tryToProvidePreviewSurface();
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    public void setFrameUpdateListener(@NonNull Executor executor, @NonNull PreviewView.OnFrameUpdateListener onFrameUpdateListener) {
        this.mOnFrameUpdateListener = onFrameUpdateListener;
        this.mFrameUpdateExecutor = executor;
    }

    public void tryToProvidePreviewSurface() {
        SurfaceTexture surfaceTexture;
        Size size = this.mResolution;
        if (size != null && (surfaceTexture = this.mSurfaceTexture) != null && this.mSurfaceRequest != null) {
            surfaceTexture.setDefaultBufferSize(size.getWidth(), this.mResolution.getHeight());
            final Surface surface = new Surface(this.mSurfaceTexture);
            final SurfaceRequest surfaceRequest = this.mSurfaceRequest;
            final ListenableFuture<SurfaceRequest.Result> future = CallbackToFutureAdapter.getFuture(new C0127x9738a56c(this, surface, 1));
            this.mSurfaceReleaseFuture = future;
            future.addListener(new Runnable() { // from class: androidx.camera.view.뎨듌됴땤됨땱땨땟딅땃듔돷뒨뒈돝뒝땁딻되땀땤뎬돴돳땄땧뎽땻됫돼돷뒘딅뒘두딜땅딁딤돝땦든뒹뒼뎡딝돳뒼딞땄딀듟돳돼땪땲땩땍둥딟뒉도두됨땯딎득뒻뒝됐뎻땹따됫둬딨돴돼듐뎹될돶딤딟뎸뒝뒤땫두득딽듐땸됩따뒬딎땜땟땱딁딜돶둥듐뎹딜됩딌돴뒈뒐따될땫땥딅될땮뒾듔딤땋듟땃돸됩돷딁딀
                @Override // java.lang.Runnable
                public final void run() {
                    TextureViewImplementation.this.lambda$tryToProvidePreviewSurface$2(surface, future, surfaceRequest);
                }
            }, ContextCompat.getMainExecutor(this.mTextureView.getContext()));
            onSurfaceProvided();
        }
    }

    @Override // androidx.camera.view.PreviewViewImplementation
    @NonNull
    public ListenableFuture<Void> waitForNextFrame() {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.view.뎨뒋딝뒘땻땭땳뒨돵뒋땡돛딟따뒷땮돴딤딃들땡돸땀뒘돳뎹됩둑딠뒬딤뎸땁뒙뒾딽딄뒷뒘땯도두뎠돸돤뒝돼뒵땳땰딅든뒻뒘땰땯땅뒼돤딃두딁땔듌뒵뎸돷뒘됴딻듔땬돵돼둔땸돨땧돝땲땧땥돛뒼뒋땨돶땮도땁돳듔돳뒈돨딟땨뎹딽둡뒤땐뒘뎡땃땯딐딄뒐땧뒤딹뒬딃땋뎽땮딅뎽뎻딞땡땮뎽뒙듟뎡뎹뒐딁
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Object lambda$waitForNextFrame$3;
                lambda$waitForNextFrame$3 = TextureViewImplementation.this.lambda$waitForNextFrame$3(completer);
                return lambda$waitForNextFrame$3;
            }
        });
    }
}
