package androidx.camera.camera2.internal;

import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.util.Range;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.camera.camera2.internal.ExposureControl;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.interop.ExperimentalCamera2Interop;
import androidx.camera.core.CameraControl;
import androidx.camera.core.ExposureState;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0362x4440ab85;
import defpackage.C0728xf59e6099;
import defpackage.RunnableC0391x31381f22;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class ExposureControl {
    private static final int DEFAULT_EXPOSURE_COMPENSATION = 0;

    @NonNull
    private final Camera2CameraControlImpl mCameraControl;

    @NonNull
    private final Executor mExecutor;

    @NonNull
    private final ExposureStateImpl mExposureStateImpl;
    private boolean mIsActive = false;

    @Nullable
    private Camera2CameraControlImpl.CaptureResultListener mRunningCaptureResultListener;

    @Nullable
    private CallbackToFutureAdapter.Completer<Integer> mRunningCompleter;

    public ExposureControl(@NonNull Camera2CameraControlImpl camera2CameraControlImpl, @NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat, @NonNull Executor executor) {
        this.mCameraControl = camera2CameraControlImpl;
        this.mExposureStateImpl = new ExposureStateImpl(cameraCharacteristicsCompat, 0);
        this.mExecutor = executor;
    }

    private void clearRunningTask() {
        CallbackToFutureAdapter.Completer<Integer> completer = this.mRunningCompleter;
        if (completer != null) {
            completer.setException(new CameraControl.OperationCanceledException("Cancelled by another setExposureCompensationIndex()"));
            this.mRunningCompleter = null;
        }
        Camera2CameraControlImpl.CaptureResultListener captureResultListener = this.mRunningCaptureResultListener;
        if (captureResultListener != null) {
            this.mCameraControl.removeCaptureResultListener(captureResultListener);
            this.mRunningCaptureResultListener = null;
        }
    }

    public static ExposureState getDefaultExposureState(CameraCharacteristicsCompat cameraCharacteristicsCompat) {
        return new ExposureStateImpl(cameraCharacteristicsCompat, 0);
    }

    public static /* synthetic */ boolean lambda$setExposureCompensationIndex$0(int i, CallbackToFutureAdapter.Completer completer, TotalCaptureResult totalCaptureResult) {
        Integer num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
        Integer num2 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_EXPOSURE_COMPENSATION);
        if (num != null && num2 != null) {
            int intValue = num.intValue();
            if ((intValue == 2 || intValue == 3 || intValue == 4) && num2.intValue() == i) {
                completer.set(Integer.valueOf(i));
                return true;
            }
            return false;
        }
        if (num2 != null && num2.intValue() == i) {
            completer.set(Integer.valueOf(i));
            return true;
        }
        return false;
    }

    public /* synthetic */ void lambda$setExposureCompensationIndex$1(final CallbackToFutureAdapter.Completer completer, final int i) {
        boolean z;
        boolean z2 = false;
        if (!this.mIsActive) {
            this.mExposureStateImpl.setExposureCompensationIndex(0);
            completer.setException(new CameraControl.OperationCanceledException("Camera is not active."));
            return;
        }
        clearRunningTask();
        if (this.mRunningCompleter == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, "mRunningCompleter should be null when starting set a new exposure compensation value");
        if (this.mRunningCaptureResultListener == null) {
            z2 = true;
        }
        Preconditions.checkState(z2, "mRunningCaptureResultListener should be null when starting set a new exposure compensation value");
        Camera2CameraControlImpl.CaptureResultListener captureResultListener = new Camera2CameraControlImpl.CaptureResultListener() { // from class: 뒨둑득땲땪뎠땲득땅딤뎸뎻뒈될땰돛딄땄듨뎻딟둣딀딻둑딐디땸땁돶됐됐됫되뒬땍딟땰딄뒻땜딠디도된딄땥될딄듻딀땟둑듰땻뒨듬딸딝둔딅땳됩돴따땣뎨뒘땱땮둡땹뒷땫듰뎽듌뒹듰땩뒬따듌땯뒀뒈두듐됨뒐땐뒐듐두뒝땅땧둣들돶뒝뒈뎬땮땭딤땁듼땹든땨땝땭땳땠돵땹딝뒬도돳땬딸둑딀돤듐딽땦땲
            @Override // androidx.camera.camera2.internal.Camera2CameraControlImpl.CaptureResultListener
            public final boolean onCaptureResult(TotalCaptureResult totalCaptureResult) {
                boolean lambda$setExposureCompensationIndex$0;
                lambda$setExposureCompensationIndex$0 = ExposureControl.lambda$setExposureCompensationIndex$0(i, completer, totalCaptureResult);
                return lambda$setExposureCompensationIndex$0;
            }
        };
        this.mRunningCaptureResultListener = captureResultListener;
        this.mRunningCompleter = completer;
        this.mCameraControl.addCaptureResultListener(captureResultListener);
        this.mCameraControl.updateSessionConfigSynchronous();
    }

    public /* synthetic */ Object lambda$setExposureCompensationIndex$2(int i, CallbackToFutureAdapter.Completer completer) {
        this.mExecutor.execute(new RunnableC0391x31381f22(this, completer, i, 4));
        return AbstractC0362x4440ab85.m2935x1db10c9d(new StringBuilder("setExposureCompensationIndex["), "]", i);
    }

    @NonNull
    public ExposureState getExposureState() {
        return this.mExposureStateImpl;
    }

    public void setActive(boolean z) {
        if (z == this.mIsActive) {
            return;
        }
        this.mIsActive = z;
        if (!z) {
            this.mExposureStateImpl.setExposureCompensationIndex(0);
            clearRunningTask();
        }
    }

    @OptIn(markerClass = {ExperimentalCamera2Interop.class})
    public void setCaptureRequestOption(@NonNull Camera2ImplConfig.Builder builder) {
        builder.setCaptureRequestOptionWithPriority(CaptureRequest.CONTROL_AE_EXPOSURE_COMPENSATION, Integer.valueOf(this.mExposureStateImpl.getExposureCompensationIndex()), Config.OptionPriority.REQUIRED);
    }

    @NonNull
    public ListenableFuture<Integer> setExposureCompensationIndex(int i) {
        if (!this.mExposureStateImpl.isExposureCompensationSupported()) {
            return Futures.immediateFailedFuture(new IllegalArgumentException("ExposureCompensation is not supported"));
        }
        Range<Integer> exposureCompensationRange = this.mExposureStateImpl.getExposureCompensationRange();
        if (!exposureCompensationRange.contains((Range<Integer>) Integer.valueOf(i))) {
            StringBuilder m2939xab142723 = AbstractC0362x4440ab85.m2939xab142723(i, "Requested ExposureCompensation ", " is not within valid range [");
            m2939xab142723.append(exposureCompensationRange.getUpper());
            m2939xab142723.append("..");
            m2939xab142723.append(exposureCompensationRange.getLower());
            m2939xab142723.append("]");
            return Futures.immediateFailedFuture(new IllegalArgumentException(m2939xab142723.toString()));
        }
        this.mExposureStateImpl.setExposureCompensationIndex(i);
        return Futures.nonCancellationPropagating(CallbackToFutureAdapter.getFuture(new C0728xf59e6099(this, i)));
    }
}
