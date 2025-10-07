package androidx.camera.camera2.internal;

import android.graphics.PointF;
import android.graphics.Rect;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import android.hardware.camera2.params.MeteringRectangle;
import android.os.Build;
import android.util.Rational;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.camera.camera2.internal.compat.workaround.MeteringRegionCorrection;
import androidx.camera.camera2.interop.ExperimentalCamera2Interop;
import androidx.camera.core.CameraControl;
import androidx.camera.core.FocusMeteringAction;
import androidx.camera.core.FocusMeteringResult;
import androidx.camera.core.Logger;
import androidx.camera.core.MeteringPoint;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureFailure;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

@OptIn(markerClass = {ExperimentalCamera2Interop.class})
/* loaded from: classes.dex */
public class FocusMeteringControl {
    static final long AUTO_FOCUS_TIMEOUT_DURATION = 5000;
    private static final MeteringRectangle[] EMPTY_RECTANGLES = new MeteringRectangle[0];
    private static final String TAG = "FocusMeteringControl";
    private MeteringRectangle[] mAeRects;
    private MeteringRectangle[] mAfRects;
    private ScheduledFuture<?> mAutoCancelHandle;
    private ScheduledFuture<?> mAutoFocusTimeoutHandle;
    private MeteringRectangle[] mAwbRects;
    private final Camera2CameraControlImpl mCameraControl;
    final Executor mExecutor;
    private boolean mIsExternalFlashAeModeEnabled;

    @NonNull
    private final MeteringRegionCorrection mMeteringRegionCorrection;
    CallbackToFutureAdapter.Completer<FocusMeteringResult> mRunningActionCompleter;
    CallbackToFutureAdapter.Completer<Void> mRunningCancelCompleter;
    private final ScheduledExecutorService mScheduler;
    private Camera2CameraControlImpl.CaptureResultListener mSessionListenerForAeMode;
    private volatile boolean mIsActive = false;
    private volatile Rational mPreviewAspectRatio = null;
    private boolean mIsInAfAutoMode = false;

    @NonNull
    Integer mCurrentAfState = 0;
    long mFocusTimeoutCounter = 0;
    boolean mIsAutoFocusCompleted = false;
    boolean mIsFocusSuccessful = false;
    private int mTemplate = 1;
    private Camera2CameraControlImpl.CaptureResultListener mSessionListenerForFocus = null;
    private Camera2CameraControlImpl.CaptureResultListener mSessionListenerForCancel = null;

    /* renamed from: androidx.camera.camera2.internal.FocusMeteringControl$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends CameraCaptureCallback {
        final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;

        public AnonymousClass1(CallbackToFutureAdapter.Completer completer) {
            r2 = completer;
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureCancelled(int i) {
            CallbackToFutureAdapter.Completer completer = r2;
            if (completer != null) {
                completer.setException(new CameraControl.OperationCanceledException("Camera is closed"));
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureCompleted(int i, @NonNull CameraCaptureResult cameraCaptureResult) {
            CallbackToFutureAdapter.Completer completer = r2;
            if (completer != null) {
                completer.set(cameraCaptureResult);
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureFailed(int i, @NonNull CameraCaptureFailure cameraCaptureFailure) {
            CallbackToFutureAdapter.Completer completer = r2;
            if (completer != null) {
                completer.setException(new CameraControlInternal.CameraControlException(cameraCaptureFailure));
            }
        }
    }

    /* renamed from: androidx.camera.camera2.internal.FocusMeteringControl$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends CameraCaptureCallback {
        final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;

        public AnonymousClass2(CallbackToFutureAdapter.Completer completer) {
            r2 = completer;
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureCancelled(int i) {
            CallbackToFutureAdapter.Completer completer = r2;
            if (completer != null) {
                completer.setException(new CameraControl.OperationCanceledException("Camera is closed"));
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureCompleted(int i, @NonNull CameraCaptureResult cameraCaptureResult) {
            if (r2 != null) {
                Logger.d(FocusMeteringControl.TAG, "triggerAePrecapture: triggering capture request completed");
                r2.set(null);
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureFailed(int i, @NonNull CameraCaptureFailure cameraCaptureFailure) {
            CallbackToFutureAdapter.Completer completer = r2;
            if (completer != null) {
                completer.setException(new CameraControlInternal.CameraControlException(cameraCaptureFailure));
            }
        }
    }

    public FocusMeteringControl(@NonNull Camera2CameraControlImpl camera2CameraControlImpl, @NonNull ScheduledExecutorService scheduledExecutorService, @NonNull Executor executor, @NonNull Quirks quirks) {
        MeteringRectangle[] meteringRectangleArr = EMPTY_RECTANGLES;
        this.mAfRects = meteringRectangleArr;
        this.mAeRects = meteringRectangleArr;
        this.mAwbRects = meteringRectangleArr;
        this.mRunningActionCompleter = null;
        this.mRunningCancelCompleter = null;
        this.mIsExternalFlashAeModeEnabled = false;
        this.mSessionListenerForAeMode = null;
        this.mCameraControl = camera2CameraControlImpl;
        this.mExecutor = executor;
        this.mScheduler = scheduledExecutorService;
        this.mMeteringRegionCorrection = new MeteringRegionCorrection(quirks);
    }

    private void clearAutoFocusTimeoutHandle() {
        ScheduledFuture<?> scheduledFuture = this.mAutoFocusTimeoutHandle;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.mAutoFocusTimeoutHandle = null;
        }
    }

    private void completeCancelFuture() {
        CallbackToFutureAdapter.Completer<Void> completer = this.mRunningCancelCompleter;
        if (completer != null) {
            completer.set(null);
            this.mRunningCancelCompleter = null;
        }
    }

    private void disableAutoCancel() {
        ScheduledFuture<?> scheduledFuture = this.mAutoCancelHandle;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.mAutoCancelHandle = null;
        }
    }

    private void executeMeteringAction(@NonNull MeteringRectangle[] meteringRectangleArr, @NonNull MeteringRectangle[] meteringRectangleArr2, @NonNull MeteringRectangle[] meteringRectangleArr3, FocusMeteringAction focusMeteringAction, long j) {
        final long updateSessionConfigSynchronous;
        this.mCameraControl.removeCaptureResultListener(this.mSessionListenerForFocus);
        disableAutoCancel();
        clearAutoFocusTimeoutHandle();
        this.mAfRects = meteringRectangleArr;
        this.mAeRects = meteringRectangleArr2;
        this.mAwbRects = meteringRectangleArr3;
        if (shouldTriggerAF()) {
            this.mIsInAfAutoMode = true;
            this.mIsAutoFocusCompleted = false;
            this.mIsFocusSuccessful = false;
            updateSessionConfigSynchronous = this.mCameraControl.updateSessionConfigSynchronous();
            triggerAf(null, true);
        } else {
            this.mIsInAfAutoMode = false;
            this.mIsAutoFocusCompleted = true;
            this.mIsFocusSuccessful = false;
            updateSessionConfigSynchronous = this.mCameraControl.updateSessionConfigSynchronous();
        }
        this.mCurrentAfState = 0;
        final boolean isAfModeSupported = isAfModeSupported();
        Camera2CameraControlImpl.CaptureResultListener captureResultListener = new Camera2CameraControlImpl.CaptureResultListener() { // from class: androidx.camera.camera2.internal.뎸딞돵뎡뎬땃뒵딸돵땱둘뒹득뒛땩뒵뒾듸듟딅땫돝돛땔뒵땱둡딁땔되땄듔뒷딠땐듬뎬땱딀딄땰둘땡땡됩뒹돵뒈땥딽뒉땬땧딽둔듔뒀땠딨딜땭뒻돠딜땤도둬된땭됐드도땔땦땻디됨돰뒼땟듻뎬뎡뎽땍뒬딠뎬땦두뒛돴돴둑됫드둣든땥디땧됩됨두딠딨땃둠돵뎸뒨뎸뎹땡뒙땨딝되땁됨돼땲돼뎽땮땠딄딁땄땸
            @Override // androidx.camera.camera2.internal.Camera2CameraControlImpl.CaptureResultListener
            public final boolean onCaptureResult(TotalCaptureResult totalCaptureResult) {
                boolean lambda$executeMeteringAction$7;
                lambda$executeMeteringAction$7 = FocusMeteringControl.this.lambda$executeMeteringAction$7(isAfModeSupported, updateSessionConfigSynchronous, totalCaptureResult);
                return lambda$executeMeteringAction$7;
            }
        };
        this.mSessionListenerForFocus = captureResultListener;
        this.mCameraControl.addCaptureResultListener(captureResultListener);
        long j2 = this.mFocusTimeoutCounter + 1;
        this.mFocusTimeoutCounter = j2;
        RunnableC0050x6246a3ee runnableC0050x6246a3ee = new RunnableC0050x6246a3ee(2, j2, this);
        ScheduledExecutorService scheduledExecutorService = this.mScheduler;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        this.mAutoFocusTimeoutHandle = scheduledExecutorService.schedule(runnableC0050x6246a3ee, j, timeUnit);
        if (focusMeteringAction.isAutoCancelEnabled()) {
            this.mAutoCancelHandle = this.mScheduler.schedule(new RunnableC0050x6246a3ee(3, j2, this), focusMeteringAction.getAutoCancelDurationInMillis(), timeUnit);
        }
    }

    private void failActionFuture(String str) {
        this.mCameraControl.removeCaptureResultListener(this.mSessionListenerForFocus);
        CallbackToFutureAdapter.Completer<FocusMeteringResult> completer = this.mRunningActionCompleter;
        if (completer != null) {
            completer.setException(new CameraControl.OperationCanceledException(str));
            this.mRunningActionCompleter = null;
        }
    }

    private void failCancelFuture(String str) {
        this.mCameraControl.removeCaptureResultListener(this.mSessionListenerForCancel);
        CallbackToFutureAdapter.Completer<Void> completer = this.mRunningCancelCompleter;
        if (completer != null) {
            completer.setException(new CameraControl.OperationCanceledException(str));
            this.mRunningCancelCompleter = null;
        }
    }

    private Rational getDefaultAspectRatio() {
        if (this.mPreviewAspectRatio != null) {
            return this.mPreviewAspectRatio;
        }
        Rect cropSensorRegion = this.mCameraControl.getCropSensorRegion();
        return new Rational(cropSensorRegion.width(), cropSensorRegion.height());
    }

    private static PointF getFovAdjustedPoint(@NonNull MeteringPoint meteringPoint, @NonNull Rational rational, @NonNull Rational rational2, int i, MeteringRegionCorrection meteringRegionCorrection) {
        if (meteringPoint.getSurfaceAspectRatio() != null) {
            rational2 = meteringPoint.getSurfaceAspectRatio();
        }
        PointF correctedPoint = meteringRegionCorrection.getCorrectedPoint(meteringPoint, i);
        if (!rational2.equals(rational)) {
            if (rational2.compareTo(rational) > 0) {
                float doubleValue = (float) (rational2.doubleValue() / rational.doubleValue());
                correctedPoint.y = (1.0f / doubleValue) * (((float) ((doubleValue - 1.0d) / 2.0d)) + correctedPoint.y);
            } else {
                float doubleValue2 = (float) (rational.doubleValue() / rational2.doubleValue());
                correctedPoint.x = (1.0f / doubleValue2) * (((float) ((doubleValue2 - 1.0d) / 2.0d)) + correctedPoint.x);
            }
        }
        return correctedPoint;
    }

    private static MeteringRectangle getMeteringRect(MeteringPoint meteringPoint, PointF pointF, Rect rect) {
        int width = (int) ((pointF.x * rect.width()) + rect.left);
        int height = (int) ((pointF.y * rect.height()) + rect.top);
        int size = ((int) (meteringPoint.getSize() * rect.width())) / 2;
        int size2 = ((int) (meteringPoint.getSize() * rect.height())) / 2;
        Rect rect2 = new Rect(width - size, height - size2, width + size, height + size2);
        rect2.left = rangeLimit(rect2.left, rect.right, rect.left);
        rect2.right = rangeLimit(rect2.right, rect.right, rect.left);
        rect2.top = rangeLimit(rect2.top, rect.bottom, rect.top);
        rect2.bottom = rangeLimit(rect2.bottom, rect.bottom, rect.top);
        return new MeteringRectangle(rect2, 1000);
    }

    @NonNull
    private List<MeteringRectangle> getMeteringRectangles(@NonNull List<MeteringPoint> list, int i, @NonNull Rational rational, @NonNull Rect rect, int i2) {
        if (!list.isEmpty() && i != 0) {
            ArrayList arrayList = new ArrayList();
            Rational rational2 = new Rational(rect.width(), rect.height());
            for (MeteringPoint meteringPoint : list) {
                if (arrayList.size() == i) {
                    break;
                }
                if (isValid(meteringPoint)) {
                    MeteringRectangle meteringRect = getMeteringRect(meteringPoint, getFovAdjustedPoint(meteringPoint, rational2, rational, i2, this.mMeteringRegionCorrection), rect);
                    if (meteringRect.getWidth() != 0 && meteringRect.getHeight() != 0) {
                        arrayList.add(meteringRect);
                    }
                }
            }
            return DesugarCollections.unmodifiableList(arrayList);
        }
        return Collections.emptyList();
    }

    private boolean isAfModeSupported() {
        if (this.mCameraControl.getSupportedAfMode(1) == 1) {
            return true;
        }
        return false;
    }

    private static boolean isValid(@NonNull MeteringPoint meteringPoint) {
        if (meteringPoint.getX() >= 0.0f && meteringPoint.getX() <= 1.0f && meteringPoint.getY() >= 0.0f && meteringPoint.getY() <= 1.0f) {
            return true;
        }
        return false;
    }

    public /* synthetic */ Object lambda$cancelFocusAndMetering$13(CallbackToFutureAdapter.Completer completer) {
        this.mExecutor.execute(new RunnableC0055x3cd97916(this, completer, 0));
        return "cancelFocusAndMetering";
    }

    public /* synthetic */ boolean lambda$cancelFocusAndMeteringInternal$14(int i, long j, TotalCaptureResult totalCaptureResult) {
        if (((Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_MODE)).intValue() == i && Camera2CameraControlImpl.isSessionUpdated(totalCaptureResult, j)) {
            completeCancelFuture();
            return true;
        }
        return false;
    }

    public /* synthetic */ void lambda$enableExternalFlashAeMode$4(boolean z, CallbackToFutureAdapter.Completer completer) {
        this.mCameraControl.removeCaptureResultListener(this.mSessionListenerForAeMode);
        this.mIsExternalFlashAeModeEnabled = z;
        enableExternalFlashAeMode((CallbackToFutureAdapter.Completer<Void>) completer);
    }

    public /* synthetic */ Object lambda$enableExternalFlashAeMode$5(boolean z, CallbackToFutureAdapter.Completer completer) {
        this.mExecutor.execute(new RunnableC0053xe698d(this, z, completer));
        return "enableExternalFlashAeMode";
    }

    public /* synthetic */ boolean lambda$enableExternalFlashAeMode$6(long j, CallbackToFutureAdapter.Completer completer, TotalCaptureResult totalCaptureResult) {
        boolean z;
        if (((Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_MODE)).intValue() == 5) {
            z = true;
        } else {
            z = false;
        }
        Logger.d(TAG, "enableExternalFlashAeMode: isAeModeExternalFlash = " + z);
        if (z != this.mIsExternalFlashAeModeEnabled || !Camera2CameraControlImpl.isSessionUpdated(totalCaptureResult, j)) {
            return false;
        }
        Logger.d(TAG, "enableExternalFlashAeMode: session updated with isAeModeExternalFlash = " + z);
        if (completer != null) {
            completer.set(null);
        }
        return true;
    }

    public /* synthetic */ void lambda$executeMeteringAction$10(long j) {
        if (j == this.mFocusTimeoutCounter) {
            cancelFocusAndMeteringWithoutAsyncResult();
        }
    }

    public /* synthetic */ void lambda$executeMeteringAction$11(long j) {
        this.mExecutor.execute(new RunnableC0050x6246a3ee(0, j, this));
    }

    public /* synthetic */ boolean lambda$executeMeteringAction$7(boolean z, long j, TotalCaptureResult totalCaptureResult) {
        Integer num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_STATE);
        if (shouldTriggerAF()) {
            if (z && num != null) {
                if (this.mCurrentAfState.intValue() == 3) {
                    if (num.intValue() == 4) {
                        this.mIsFocusSuccessful = true;
                        this.mIsAutoFocusCompleted = true;
                    } else if (num.intValue() == 5) {
                        this.mIsFocusSuccessful = false;
                        this.mIsAutoFocusCompleted = true;
                    }
                }
            } else {
                this.mIsFocusSuccessful = true;
                this.mIsAutoFocusCompleted = true;
            }
        }
        if (this.mIsAutoFocusCompleted && Camera2CameraControlImpl.isSessionUpdated(totalCaptureResult, j)) {
            completeActionFuture(this.mIsFocusSuccessful);
            return true;
        }
        if (!this.mCurrentAfState.equals(num) && num != null) {
            this.mCurrentAfState = num;
        }
        return false;
    }

    public /* synthetic */ void lambda$executeMeteringAction$8(long j) {
        if (j == this.mFocusTimeoutCounter) {
            this.mIsFocusSuccessful = false;
            completeActionFuture(false);
        }
    }

    public /* synthetic */ void lambda$executeMeteringAction$9(long j) {
        this.mExecutor.execute(new RunnableC0050x6246a3ee(1, j, this));
    }

    public /* synthetic */ Object lambda$startFocusAndMetering$1(final FocusMeteringAction focusMeteringAction, final long j, final CallbackToFutureAdapter.Completer completer) {
        this.mExecutor.execute(new Runnable() { // from class: androidx.camera.camera2.internal.뎸듸뒼둥딝땣득뒋땔땁딝듟땬딄땤뎹뒉딃돴듨뒙뒝뒉뒈뒤땄딤땻됫땳됴될뎹듸딸돛둬듼뎻땄땥듨딹들둥땃들둑들뎬듟뒐뎡뒼듰돴땔딌뒼뎠뒬돤딝땸듼듸든듟드둡됴딽딤땨땐돛땬돠되되땫뒋디땲딅땡돸뒘둡딨든땍됴땡뎨딌듬돰듻돵듰땰땵땩됐땋됐돛뒾딀됩땁둘딅딜도뒻뎡돼돛땲딃뎡땥땲듬딎뎠땜듰
            @Override // java.lang.Runnable
            public final void run() {
                this.lambda$startFocusAndMetering$0(completer, focusMeteringAction, j);
            }
        });
        return "startFocusAndMetering";
    }

    public /* synthetic */ Object lambda$triggerAePrecapture$3(CallbackToFutureAdapter.Completer completer) {
        this.mExecutor.execute(new RunnableC0055x3cd97916(this, completer, 1));
        return "triggerAePrecapture";
    }

    private static int rangeLimit(int i, int i2, int i3) {
        return Math.min(Math.max(i, i3), i2);
    }

    private boolean shouldTriggerAF() {
        if (this.mAfRects.length > 0) {
            return true;
        }
        return false;
    }

    public void addFocusMeteringOptions(@NonNull Camera2ImplConfig.Builder builder) {
        int defaultAfMode;
        if (this.mIsInAfAutoMode) {
            defaultAfMode = 1;
        } else {
            defaultAfMode = getDefaultAfMode();
        }
        CaptureRequest.Key key = CaptureRequest.CONTROL_AF_MODE;
        Integer valueOf = Integer.valueOf(this.mCameraControl.getSupportedAfMode(defaultAfMode));
        Config.OptionPriority optionPriority = Config.OptionPriority.REQUIRED;
        builder.setCaptureRequestOptionWithPriority(key, valueOf, optionPriority);
        MeteringRectangle[] meteringRectangleArr = this.mAfRects;
        if (meteringRectangleArr.length != 0) {
            builder.setCaptureRequestOptionWithPriority(CaptureRequest.CONTROL_AF_REGIONS, meteringRectangleArr, optionPriority);
        }
        MeteringRectangle[] meteringRectangleArr2 = this.mAeRects;
        if (meteringRectangleArr2.length != 0) {
            builder.setCaptureRequestOptionWithPriority(CaptureRequest.CONTROL_AE_REGIONS, meteringRectangleArr2, optionPriority);
        }
        MeteringRectangle[] meteringRectangleArr3 = this.mAwbRects;
        if (meteringRectangleArr3.length != 0) {
            builder.setCaptureRequestOptionWithPriority(CaptureRequest.CONTROL_AWB_REGIONS, meteringRectangleArr3, optionPriority);
        }
    }

    public void cancelAfAeTrigger(boolean z, boolean z2) {
        if (!this.mIsActive) {
            return;
        }
        CaptureConfig.Builder builder = new CaptureConfig.Builder();
        builder.setUseRepeatingSurface(true);
        builder.setTemplateType(this.mTemplate);
        Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
        if (z) {
            builder2.setCaptureRequestOption(CaptureRequest.CONTROL_AF_TRIGGER, 2);
        }
        if (Build.VERSION.SDK_INT >= 23 && z2) {
            builder2.setCaptureRequestOption(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 2);
        }
        builder.addImplementationOptions(builder2.build());
        this.mCameraControl.submitCaptureRequestsInternal(Collections.singletonList(builder.build()));
    }

    public ListenableFuture<Void> cancelFocusAndMetering() {
        return CallbackToFutureAdapter.getFuture(new C0052x742e2fda(this, 0));
    }

    /* renamed from: cancelFocusAndMeteringInternal */
    public void lambda$cancelFocusAndMetering$12(@Nullable CallbackToFutureAdapter.Completer<Void> completer) {
        failCancelFuture("Cancelled by another cancelFocusAndMetering()");
        failActionFuture("Cancelled by cancelFocusAndMetering()");
        this.mRunningCancelCompleter = completer;
        disableAutoCancel();
        clearAutoFocusTimeoutHandle();
        if (shouldTriggerAF()) {
            cancelAfAeTrigger(true, false);
        }
        MeteringRectangle[] meteringRectangleArr = EMPTY_RECTANGLES;
        this.mAfRects = meteringRectangleArr;
        this.mAeRects = meteringRectangleArr;
        this.mAwbRects = meteringRectangleArr;
        this.mIsInAfAutoMode = false;
        final long updateSessionConfigSynchronous = this.mCameraControl.updateSessionConfigSynchronous();
        if (this.mRunningCancelCompleter != null) {
            final int supportedAfMode = this.mCameraControl.getSupportedAfMode(getDefaultAfMode());
            Camera2CameraControlImpl.CaptureResultListener captureResultListener = new Camera2CameraControlImpl.CaptureResultListener() { // from class: androidx.camera.camera2.internal.뎸딜둠딎뎬딻돰딃뒨땀듌딤뒋뎻땍뒵될뒼땸둘땤듰딌딻둔땱땁따땮땬뒀뒛땫딻땮땮드땹땥땬땠듬땯득땐땐땋딐뒉돴땬뒨듌땯뎹땱될듟땭땮뒹돸딞딐돨뒘딃듰되뎰듐뒵디딨디땜땋뎠뒬디딤듬딠듼뒬뒹뒵딤땥둘둘땄딠뎹듽듔뒻뎻뎻돝딨따땟둣듻딄뒙돶땭땄듽딟땯뒾디딄둬뒀딅뒐듽뎠듬돛땤디둥딨딤땮
                @Override // androidx.camera.camera2.internal.Camera2CameraControlImpl.CaptureResultListener
                public final boolean onCaptureResult(TotalCaptureResult totalCaptureResult) {
                    boolean lambda$cancelFocusAndMeteringInternal$14;
                    lambda$cancelFocusAndMeteringInternal$14 = this.lambda$cancelFocusAndMeteringInternal$14(supportedAfMode, updateSessionConfigSynchronous, totalCaptureResult);
                    return lambda$cancelFocusAndMeteringInternal$14;
                }
            };
            this.mSessionListenerForCancel = captureResultListener;
            this.mCameraControl.addCaptureResultListener(captureResultListener);
        }
    }

    public void cancelFocusAndMeteringWithoutAsyncResult() {
        lambda$cancelFocusAndMetering$12(null);
    }

    public void completeActionFuture(boolean z) {
        clearAutoFocusTimeoutHandle();
        CallbackToFutureAdapter.Completer<FocusMeteringResult> completer = this.mRunningActionCompleter;
        if (completer != null) {
            completer.set(FocusMeteringResult.create(z));
            this.mRunningActionCompleter = null;
        }
    }

    public ListenableFuture<Void> enableExternalFlashAeMode(boolean z) {
        if (Build.VERSION.SDK_INT < 28) {
            return Futures.immediateFuture(null);
        }
        if (this.mCameraControl.getSupportedAeMode(5) != 5) {
            return Futures.immediateFuture(null);
        }
        return CallbackToFutureAdapter.getFuture(new C0051x5ac5058d(0, this, z));
    }

    @VisibleForTesting
    public int getDefaultAfMode() {
        if (this.mTemplate == 3) {
            return 3;
        }
        return 4;
    }

    public boolean isExternalFlashAeModeEnabled() {
        return this.mIsExternalFlashAeModeEnabled;
    }

    public boolean isFocusMeteringSupported(@NonNull FocusMeteringAction focusMeteringAction) {
        Rect cropSensorRegion = this.mCameraControl.getCropSensorRegion();
        Rational defaultAspectRatio = getDefaultAspectRatio();
        List<MeteringRectangle> meteringRectangles = getMeteringRectangles(focusMeteringAction.getMeteringPointsAf(), this.mCameraControl.getMaxAfRegionCount(), defaultAspectRatio, cropSensorRegion, 1);
        List<MeteringRectangle> meteringRectangles2 = getMeteringRectangles(focusMeteringAction.getMeteringPointsAe(), this.mCameraControl.getMaxAeRegionCount(), defaultAspectRatio, cropSensorRegion, 2);
        List<MeteringRectangle> meteringRectangles3 = getMeteringRectangles(focusMeteringAction.getMeteringPointsAwb(), this.mCameraControl.getMaxAwbRegionCount(), defaultAspectRatio, cropSensorRegion, 4);
        if (meteringRectangles.isEmpty() && meteringRectangles2.isEmpty() && meteringRectangles3.isEmpty()) {
            return false;
        }
        return true;
    }

    public void setActive(boolean z) {
        if (z == this.mIsActive) {
            return;
        }
        this.mIsActive = z;
        if (!this.mIsActive) {
            cancelFocusAndMeteringWithoutAsyncResult();
        }
    }

    public void setPreviewAspectRatio(@Nullable Rational rational) {
        this.mPreviewAspectRatio = rational;
    }

    public void setTemplate(int i) {
        this.mTemplate = i;
    }

    @NonNull
    public ListenableFuture<FocusMeteringResult> startFocusAndMetering(@NonNull FocusMeteringAction focusMeteringAction) {
        return startFocusAndMetering(focusMeteringAction, 5000L);
    }

    /* renamed from: startFocusAndMeteringInternal */
    public void lambda$startFocusAndMetering$0(@NonNull CallbackToFutureAdapter.Completer<FocusMeteringResult> completer, @NonNull FocusMeteringAction focusMeteringAction, long j) {
        if (!this.mIsActive) {
            completer.setException(new CameraControl.OperationCanceledException("Camera is not active."));
            return;
        }
        Rect cropSensorRegion = this.mCameraControl.getCropSensorRegion();
        Rational defaultAspectRatio = getDefaultAspectRatio();
        List<MeteringRectangle> meteringRectangles = getMeteringRectangles(focusMeteringAction.getMeteringPointsAf(), this.mCameraControl.getMaxAfRegionCount(), defaultAspectRatio, cropSensorRegion, 1);
        List<MeteringRectangle> meteringRectangles2 = getMeteringRectangles(focusMeteringAction.getMeteringPointsAe(), this.mCameraControl.getMaxAeRegionCount(), defaultAspectRatio, cropSensorRegion, 2);
        List<MeteringRectangle> meteringRectangles3 = getMeteringRectangles(focusMeteringAction.getMeteringPointsAwb(), this.mCameraControl.getMaxAwbRegionCount(), defaultAspectRatio, cropSensorRegion, 4);
        if (meteringRectangles.isEmpty() && meteringRectangles2.isEmpty() && meteringRectangles3.isEmpty()) {
            completer.setException(new IllegalArgumentException("None of the specified AF/AE/AWB MeteringPoints is supported on this camera."));
            return;
        }
        failActionFuture("Cancelled by another startFocusAndMetering()");
        failCancelFuture("Cancelled by another startFocusAndMetering()");
        disableAutoCancel();
        this.mRunningActionCompleter = completer;
        MeteringRectangle[] meteringRectangleArr = EMPTY_RECTANGLES;
        executeMeteringAction((MeteringRectangle[]) meteringRectangles.toArray(meteringRectangleArr), (MeteringRectangle[]) meteringRectangles2.toArray(meteringRectangleArr), (MeteringRectangle[]) meteringRectangles3.toArray(meteringRectangleArr), focusMeteringAction, j);
    }

    public ListenableFuture<Void> triggerAePrecapture() {
        return CallbackToFutureAdapter.getFuture(new C0052x742e2fda(this, 1));
    }

    public void triggerAf(@Nullable CallbackToFutureAdapter.Completer<CameraCaptureResult> completer, boolean z) {
        if (!this.mIsActive) {
            if (completer != null) {
                completer.setException(new CameraControl.OperationCanceledException("Camera is not active."));
                return;
            }
            return;
        }
        CaptureConfig.Builder builder = new CaptureConfig.Builder();
        builder.setTemplateType(this.mTemplate);
        builder.setUseRepeatingSurface(true);
        Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
        builder2.setCaptureRequestOption(CaptureRequest.CONTROL_AF_TRIGGER, 1);
        if (z) {
            builder2.setCaptureRequestOptionWithPriority(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(this.mCameraControl.getSupportedAeMode(1)), Config.OptionPriority.HIGH_PRIORITY_REQUIRED);
        }
        builder.addImplementationOptions(builder2.build());
        builder.addCameraCaptureCallback(new CameraCaptureCallback() { // from class: androidx.camera.camera2.internal.FocusMeteringControl.1
            final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;

            public AnonymousClass1(CallbackToFutureAdapter.Completer completer2) {
                r2 = completer2;
            }

            @Override // androidx.camera.core.impl.CameraCaptureCallback
            public void onCaptureCancelled(int i) {
                CallbackToFutureAdapter.Completer completer2 = r2;
                if (completer2 != null) {
                    completer2.setException(new CameraControl.OperationCanceledException("Camera is closed"));
                }
            }

            @Override // androidx.camera.core.impl.CameraCaptureCallback
            public void onCaptureCompleted(int i, @NonNull CameraCaptureResult cameraCaptureResult) {
                CallbackToFutureAdapter.Completer completer2 = r2;
                if (completer2 != null) {
                    completer2.set(cameraCaptureResult);
                }
            }

            @Override // androidx.camera.core.impl.CameraCaptureCallback
            public void onCaptureFailed(int i, @NonNull CameraCaptureFailure cameraCaptureFailure) {
                CallbackToFutureAdapter.Completer completer2 = r2;
                if (completer2 != null) {
                    completer2.setException(new CameraControlInternal.CameraControlException(cameraCaptureFailure));
                }
            }
        });
        this.mCameraControl.submitCaptureRequestsInternal(Collections.singletonList(builder.build()));
    }

    @NonNull
    @VisibleForTesting
    public ListenableFuture<FocusMeteringResult> startFocusAndMetering(@NonNull final FocusMeteringAction focusMeteringAction, final long j) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.camera2.internal.뎸딀듽땐땱딨둘됴듨돛땐둔되땔돳된듨됩땨따듬땮뒐든듸뒹딝땟땬땋뎰뒵딽땩땵드땍딻뒛땰땮딐뒤땄돸뒐돤땻땵뎡딎땭딸뎡듻뎸뒛땟뎰뒉땡돨딄땄딤뎠둣뒈땠땭뒉땀뒀뒘딃땤뎡뒘뎡땪돳됫돤뎸땡됴땪돳땭딤딹뒹듌뒬둑땸듨땰둠뒋땬딻땥돶딎땥두뒵뒝딅딝뒹뒾딃뒝땣뒵뎬딹땄딁돷뎬땅땃뒾뒼뎨땸땥
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Object lambda$startFocusAndMetering$1;
                lambda$startFocusAndMetering$1 = FocusMeteringControl.this.lambda$startFocusAndMetering$1(focusMeteringAction, j, completer);
                return lambda$startFocusAndMetering$1;
            }
        });
    }

    /* renamed from: triggerAePrecapture */
    public void lambda$triggerAePrecapture$2(@Nullable CallbackToFutureAdapter.Completer<Void> completer) {
        Logger.d(TAG, "triggerAePrecapture");
        if (!this.mIsActive) {
            if (completer != null) {
                completer.setException(new CameraControl.OperationCanceledException("Camera is not active."));
                return;
            }
            return;
        }
        CaptureConfig.Builder builder = new CaptureConfig.Builder();
        builder.setTemplateType(this.mTemplate);
        builder.setUseRepeatingSurface(true);
        Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
        builder2.setCaptureRequestOption(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER, 1);
        builder.addImplementationOptions(builder2.build());
        builder.addCameraCaptureCallback(new CameraCaptureCallback() { // from class: androidx.camera.camera2.internal.FocusMeteringControl.2
            final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;

            public AnonymousClass2(CallbackToFutureAdapter.Completer completer2) {
                r2 = completer2;
            }

            @Override // androidx.camera.core.impl.CameraCaptureCallback
            public void onCaptureCancelled(int i) {
                CallbackToFutureAdapter.Completer completer2 = r2;
                if (completer2 != null) {
                    completer2.setException(new CameraControl.OperationCanceledException("Camera is closed"));
                }
            }

            @Override // androidx.camera.core.impl.CameraCaptureCallback
            public void onCaptureCompleted(int i, @NonNull CameraCaptureResult cameraCaptureResult) {
                if (r2 != null) {
                    Logger.d(FocusMeteringControl.TAG, "triggerAePrecapture: triggering capture request completed");
                    r2.set(null);
                }
            }

            @Override // androidx.camera.core.impl.CameraCaptureCallback
            public void onCaptureFailed(int i, @NonNull CameraCaptureFailure cameraCaptureFailure) {
                CallbackToFutureAdapter.Completer completer2 = r2;
                if (completer2 != null) {
                    completer2.setException(new CameraControlInternal.CameraControlException(cameraCaptureFailure));
                }
            }
        });
        this.mCameraControl.submitCaptureRequestsInternal(Collections.singletonList(builder.build()));
    }

    @RequiresApi(28)
    private void enableExternalFlashAeMode(@Nullable final CallbackToFutureAdapter.Completer<Void> completer) {
        if (!this.mIsActive) {
            if (completer != null) {
                completer.setException(new CameraControl.OperationCanceledException("Camera is not active."));
            }
        } else {
            final long updateSessionConfigSynchronous = this.mCameraControl.updateSessionConfigSynchronous();
            Camera2CameraControlImpl.CaptureResultListener captureResultListener = new Camera2CameraControlImpl.CaptureResultListener() { // from class: androidx.camera.camera2.internal.뎰딎땻듔땥땣듽땩땲땱딞둠듌뎸듰땋뒻됩두땤뒝땰도됐돰땠뒘듌뎡땩둔뒨뒻됐딝땪뒨딨딤땔뎡뒙땅땋돸돴딟딄땠땮뎬듰뎡딻뎹뒐뎰땝둡둠딟뒷듌땧듔뒘땵득딠땧돰된뒐딹되듸딃땄땮딄딅땹들뎹뒵딌듼된돤딝돷뒛된뒵땜돴딟땧땀땜땤득땤듸딎돼뒙땔디땮돸뒈딟뎻득땭땡돴된돛땔돝득됫뎠듽뒛돛땡둥
                @Override // androidx.camera.camera2.internal.Camera2CameraControlImpl.CaptureResultListener
                public final boolean onCaptureResult(TotalCaptureResult totalCaptureResult) {
                    boolean lambda$enableExternalFlashAeMode$6;
                    lambda$enableExternalFlashAeMode$6 = FocusMeteringControl.this.lambda$enableExternalFlashAeMode$6(updateSessionConfigSynchronous, completer, totalCaptureResult);
                    return lambda$enableExternalFlashAeMode$6;
                }
            };
            this.mSessionListenerForAeMode = captureResultListener;
            this.mCameraControl.addCaptureResultListener(captureResultListener);
        }
    }
}
