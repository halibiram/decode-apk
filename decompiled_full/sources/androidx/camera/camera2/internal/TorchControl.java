package androidx.camera.camera2.internal;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.workaround.FlashAvailabilityChecker;
import androidx.camera.core.CameraControl;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.utils.Threads;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.C0419x35cc9f53;
import j$.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class TorchControl {
    static final int DEFAULT_TORCH_STATE = 0;
    private static final String TAG = "TorchControl";
    private final Camera2CameraControlImpl mCamera2CameraControlImpl;
    CallbackToFutureAdapter.Completer<Void> mEnableTorchCompleter;
    private final Executor mExecutor;
    private final boolean mHasFlashUnit;
    private boolean mIsActive;
    boolean mTargetTorchEnabled;
    private final MutableLiveData<Integer> mTorchState;

    public TorchControl(@NonNull Camera2CameraControlImpl camera2CameraControlImpl, @NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat, @NonNull Executor executor) {
        this.mCamera2CameraControlImpl = camera2CameraControlImpl;
        this.mExecutor = executor;
        Objects.requireNonNull(cameraCharacteristicsCompat);
        this.mHasFlashUnit = FlashAvailabilityChecker.isFlashAvailable(new C0419x35cc9f53(cameraCharacteristicsCompat, 4));
        this.mTorchState = new MutableLiveData<>(0);
        camera2CameraControlImpl.addCaptureResultListener(new Camera2CameraControlImpl.CaptureResultListener() { // from class: androidx.camera.camera2.internal.뎻뎨듔듬뒵돛둑딌땍땦든딠땨돤뎰뎽되뒻뒝돼딻둔뒝듸땹됴돝땪둘듬둬둬듬땵뒾딠땡뒋뒷땍땰땱뎬됨딤뎠둑뒤뒼땁듰뎹듰딄땦뒈득딠돨둥땬뒉뒛땨땝딠딽뒤땬뒀땜돝딽땃딄뒉딄뎠뎠땱뒹뒐듐뎠땀뎸듻땔땜땍딜뒤뎨뎽뎠땍딁땡땁되땪땨둔두딸딠딟뒨딠뒈땝딀땸뒵딃듰듰땬뒻뒛딨됐땟든딽땻득땫땮딝
            @Override // androidx.camera.camera2.internal.Camera2CameraControlImpl.CaptureResultListener
            public final boolean onCaptureResult(TotalCaptureResult totalCaptureResult) {
                boolean lambda$new$0;
                lambda$new$0 = TorchControl.this.lambda$new$0(totalCaptureResult);
                return lambda$new$0;
            }
        });
    }

    public /* synthetic */ Object lambda$enableTorch$2(boolean z, CallbackToFutureAdapter.Completer completer) {
        this.mExecutor.execute(new RunnableC0053xe698d(this, completer, z));
        return "enableTorch: " + z;
    }

    public /* synthetic */ boolean lambda$new$0(TotalCaptureResult totalCaptureResult) {
        boolean z;
        if (this.mEnableTorchCompleter != null) {
            Integer num = (Integer) totalCaptureResult.getRequest().get(CaptureRequest.FLASH_MODE);
            if (num != null && num.intValue() == 2) {
                z = true;
            } else {
                z = false;
            }
            if (z == this.mTargetTorchEnabled) {
                this.mEnableTorchCompleter.set(null);
                this.mEnableTorchCompleter = null;
            }
        }
        return false;
    }

    private <T> void setLiveDataValue(@NonNull MutableLiveData<T> mutableLiveData, T t) {
        if (Threads.isMainThread()) {
            mutableLiveData.setValue(t);
        } else {
            mutableLiveData.postValue(t);
        }
    }

    public ListenableFuture<Void> enableTorch(boolean z) {
        if (!this.mHasFlashUnit) {
            Logger.d(TAG, "Unable to enableTorch due to there is no flash unit.");
            return Futures.immediateFailedFuture(new IllegalStateException("No flash unit"));
        }
        setLiveDataValue(this.mTorchState, Integer.valueOf(z ? 1 : 0));
        return CallbackToFutureAdapter.getFuture(new C0051x5ac5058d(1, this, z));
    }

    /* renamed from: enableTorchInternal */
    public void lambda$enableTorch$1(@Nullable CallbackToFutureAdapter.Completer<Void> completer, boolean z) {
        if (!this.mHasFlashUnit) {
            if (completer != null) {
                completer.setException(new IllegalStateException("No flash unit"));
            }
        } else {
            if (!this.mIsActive) {
                setLiveDataValue(this.mTorchState, 0);
                if (completer != null) {
                    completer.setException(new CameraControl.OperationCanceledException("Camera is not active."));
                    return;
                }
                return;
            }
            this.mTargetTorchEnabled = z;
            this.mCamera2CameraControlImpl.enableTorchInternal(z);
            setLiveDataValue(this.mTorchState, Integer.valueOf(z ? 1 : 0));
            CallbackToFutureAdapter.Completer<Void> completer2 = this.mEnableTorchCompleter;
            if (completer2 != null) {
                completer2.setException(new CameraControl.OperationCanceledException("There is a new enableTorch being set"));
            }
            this.mEnableTorchCompleter = completer;
        }
    }

    @NonNull
    public LiveData<Integer> getTorchState() {
        return this.mTorchState;
    }

    public void setActive(boolean z) {
        if (this.mIsActive == z) {
            return;
        }
        this.mIsActive = z;
        if (!z) {
            if (this.mTargetTorchEnabled) {
                this.mTargetTorchEnabled = false;
                this.mCamera2CameraControlImpl.enableTorchInternal(false);
                setLiveDataValue(this.mTorchState, 0);
            }
            CallbackToFutureAdapter.Completer<Void> completer = this.mEnableTorchCompleter;
            if (completer != null) {
                completer.setException(new CameraControl.OperationCanceledException("Camera is not active."));
                this.mEnableTorchCompleter = null;
            }
        }
    }
}
