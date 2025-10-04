package androidx.camera.camera2.internal;

import android.graphics.Rect;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Build;
import android.os.Looper;
import android.util.Range;
import androidx.annotation.FloatRange;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.core.CameraControl;
import androidx.camera.core.Logger;
import androidx.camera.core.ZoomState;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.internal.ImmutableZoomState;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class ZoomControl {
    public static final float DEFAULT_ZOOM_RATIO = 1.0f;
    private static final String TAG = "ZoomControl";
    private final Camera2CameraControlImpl mCamera2CameraControlImpl;

    @GuardedBy("mCurrentZoomState")
    private final ZoomStateImpl mCurrentZoomState;
    private final Executor mExecutor;

    @NonNull
    final ZoomImpl mZoomImpl;
    private final MutableLiveData<ZoomState> mZoomStateLiveData;
    private boolean mIsActive = false;
    private Camera2CameraControlImpl.CaptureResultListener mCaptureResultListener = new Camera2CameraControlImpl.CaptureResultListener() { // from class: androidx.camera.camera2.internal.ZoomControl.1
        public AnonymousClass1() {
        }

        @Override // androidx.camera.camera2.internal.Camera2CameraControlImpl.CaptureResultListener
        public boolean onCaptureResult(@NonNull TotalCaptureResult totalCaptureResult) {
            ZoomControl.this.mZoomImpl.onCaptureResult(totalCaptureResult);
            return false;
        }
    };

    /* renamed from: androidx.camera.camera2.internal.ZoomControl$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Camera2CameraControlImpl.CaptureResultListener {
        public AnonymousClass1() {
        }

        @Override // androidx.camera.camera2.internal.Camera2CameraControlImpl.CaptureResultListener
        public boolean onCaptureResult(@NonNull TotalCaptureResult totalCaptureResult) {
            ZoomControl.this.mZoomImpl.onCaptureResult(totalCaptureResult);
            return false;
        }
    }

    /* loaded from: classes.dex */
    public interface ZoomImpl {
        void addRequestOption(@NonNull Camera2ImplConfig.Builder builder);

        @NonNull
        Rect getCropSensorRegion();

        float getMaxZoom();

        float getMinZoom();

        void onCaptureResult(@NonNull TotalCaptureResult totalCaptureResult);

        void resetZoom();

        void setZoomRatio(float f, @NonNull CallbackToFutureAdapter.Completer<Void> completer);
    }

    public ZoomControl(@NonNull Camera2CameraControlImpl camera2CameraControlImpl, @NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat, @NonNull Executor executor) {
        this.mCamera2CameraControlImpl = camera2CameraControlImpl;
        this.mExecutor = executor;
        ZoomImpl createZoomImpl = createZoomImpl(cameraCharacteristicsCompat);
        this.mZoomImpl = createZoomImpl;
        ZoomStateImpl zoomStateImpl = new ZoomStateImpl(createZoomImpl.getMaxZoom(), createZoomImpl.getMinZoom());
        this.mCurrentZoomState = zoomStateImpl;
        zoomStateImpl.setZoomRatio(1.0f);
        this.mZoomStateLiveData = new MutableLiveData<>(ImmutableZoomState.create(zoomStateImpl));
        camera2CameraControlImpl.addCaptureResultListener(this.mCaptureResultListener);
    }

    private static ZoomImpl createZoomImpl(@NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        if (isAndroidRZoomSupported(cameraCharacteristicsCompat)) {
            return new AndroidRZoomImpl(cameraCharacteristicsCompat);
        }
        return new CropRegionZoomImpl(cameraCharacteristicsCompat);
    }

    public static ZoomState getDefaultZoomState(CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        ZoomImpl createZoomImpl = createZoomImpl(cameraCharacteristicsCompat);
        ZoomStateImpl zoomStateImpl = new ZoomStateImpl(createZoomImpl.getMaxZoom(), createZoomImpl.getMinZoom());
        zoomStateImpl.setZoomRatio(1.0f);
        return ImmutableZoomState.create(zoomStateImpl);
    }

    @RequiresApi(30)
    private static Range<Float> getZoomRatioRange(CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        CameraCharacteristics.Key key;
        try {
            key = CameraCharacteristics.CONTROL_ZOOM_RATIO_RANGE;
            return (Range) cameraCharacteristicsCompat.get(key);
        } catch (AssertionError e) {
            Logger.w(TAG, "AssertionError, fail to get camera characteristic.", e);
            return null;
        }
    }

    @VisibleForTesting
    public static boolean isAndroidRZoomSupported(CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        if (Build.VERSION.SDK_INT >= 30 && getZoomRatioRange(cameraCharacteristicsCompat) != null) {
            return true;
        }
        return false;
    }

    public /* synthetic */ Object lambda$setLinearZoom$3(ZoomState zoomState, CallbackToFutureAdapter.Completer completer) {
        this.mExecutor.execute(new RunnableC0068xcd6c59d4(this, completer, zoomState, 1));
        return "setLinearZoom";
    }

    public /* synthetic */ Object lambda$setZoomRatio$1(ZoomState zoomState, CallbackToFutureAdapter.Completer completer) {
        this.mExecutor.execute(new RunnableC0068xcd6c59d4(this, completer, zoomState, 0));
        return "setZoomRatio";
    }

    /* renamed from: submitCameraZoomRatio, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$setZoomRatio$0(@NonNull CallbackToFutureAdapter.Completer<Void> completer, @NonNull ZoomState zoomState) {
        ZoomState create;
        if (!this.mIsActive) {
            synchronized (this.mCurrentZoomState) {
                this.mCurrentZoomState.setZoomRatio(1.0f);
                create = ImmutableZoomState.create(this.mCurrentZoomState);
            }
            updateLiveData(create);
            completer.setException(new CameraControl.OperationCanceledException("Camera is not active."));
            return;
        }
        this.mZoomImpl.setZoomRatio(zoomState.getZoomRatio(), completer);
        this.mCamera2CameraControlImpl.updateSessionConfigSynchronous();
    }

    private void updateLiveData(ZoomState zoomState) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            this.mZoomStateLiveData.setValue(zoomState);
        } else {
            this.mZoomStateLiveData.postValue(zoomState);
        }
    }

    public void addZoomOption(@NonNull Camera2ImplConfig.Builder builder) {
        this.mZoomImpl.addRequestOption(builder);
    }

    @NonNull
    public Rect getCropSensorRegion() {
        return this.mZoomImpl.getCropSensorRegion();
    }

    public LiveData<ZoomState> getZoomState() {
        return this.mZoomStateLiveData;
    }

    public void setActive(boolean z) {
        ZoomState create;
        if (this.mIsActive == z) {
            return;
        }
        this.mIsActive = z;
        if (!z) {
            synchronized (this.mCurrentZoomState) {
                this.mCurrentZoomState.setZoomRatio(1.0f);
                create = ImmutableZoomState.create(this.mCurrentZoomState);
            }
            updateLiveData(create);
            this.mZoomImpl.resetZoom();
            this.mCamera2CameraControlImpl.updateSessionConfigSynchronous();
        }
    }

    @NonNull
    public ListenableFuture<Void> setLinearZoom(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        ZoomState create;
        synchronized (this.mCurrentZoomState) {
            try {
                this.mCurrentZoomState.setLinearZoom(f);
                create = ImmutableZoomState.create(this.mCurrentZoomState);
            } catch (IllegalArgumentException e) {
                return Futures.immediateFailedFuture(e);
            }
        }
        updateLiveData(create);
        return CallbackToFutureAdapter.getFuture(new C0067x3d250025(this, create, 1));
    }

    @NonNull
    public ListenableFuture<Void> setZoomRatio(float f) {
        ZoomState create;
        synchronized (this.mCurrentZoomState) {
            try {
                this.mCurrentZoomState.setZoomRatio(f);
                create = ImmutableZoomState.create(this.mCurrentZoomState);
            } catch (IllegalArgumentException e) {
                return Futures.immediateFailedFuture(e);
            }
        }
        updateLiveData(create);
        return CallbackToFutureAdapter.getFuture(new C0067x3d250025(this, create, 0));
    }
}
