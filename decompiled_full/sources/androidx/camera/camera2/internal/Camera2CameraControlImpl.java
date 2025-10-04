package androidx.camera.camera2.internal;

import android.graphics.Rect;
import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.TotalCaptureResult;
import android.os.Build;
import android.util.ArrayMap;
import android.util.Rational;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.VisibleForTesting;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.workaround.AeFpsRange;
import androidx.camera.camera2.internal.compat.workaround.AutoFlashAEModeDisabler;
import androidx.camera.camera2.interop.Camera2CameraControl;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.camera2.interop.ExperimentalCamera2Interop;
import androidx.camera.core.CameraControl;
import androidx.camera.core.FocusMeteringAction;
import androidx.camera.core.FocusMeteringResult;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.imagecapture.CameraCapturePipeline;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureFailure;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.C0419x35cc9f53;
import defpackage.RunnableC0371x742e2fda;
import defpackage.RunnableC0374x3cd97916;
import defpackage.RunnableC0384x149e5abd;
import defpackage.RunnableC0450xb2a4f6ac;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.atomic.AtomicLong;

@OptIn(markerClass = {ExperimentalCamera2Interop.class})
/* loaded from: classes.dex */
public class Camera2CameraControlImpl implements CameraControlInternal {
    private static final int DEFAULT_TEMPLATE = 1;
    private static final String TAG = "Camera2CameraControlImp";
    static final String TAG_SESSION_UPDATE_ID = "CameraControlSessionUpdateId";
    private final AeFpsRange mAeFpsRange;
    private final AutoFlashAEModeDisabler mAutoFlashAEModeDisabler;
    private final Camera2CameraControl mCamera2CameraControl;
    private final Camera2CapturePipeline mCamera2CapturePipeline;
    private final CameraCaptureCallbackSet mCameraCaptureCallbackSet;
    private final CameraCharacteristicsCompat mCameraCharacteristics;
    private final CameraControlInternal.ControlUpdateCallback mControlUpdateCallback;
    private long mCurrentSessionUpdateId;
    final Executor mExecutor;
    private final ExposureControl mExposureControl;
    private volatile int mFlashMode;

    @NonNull
    private volatile ListenableFuture<Void> mFlashModeChangeSessionUpdateFuture;
    private final FocusMeteringControl mFocusMeteringControl;
    private volatile boolean mIsTorchOn;
    private final Object mLock;
    private final AtomicLong mNextSessionUpdateId;
    private ImageCapture.ScreenFlash mScreenFlash;

    @VisibleForTesting
    final CameraControlSessionCallback mSessionCallback;
    private final SessionConfig.Builder mSessionConfigBuilder;
    private int mTemplate;
    private final TorchControl mTorchControl;

    @GuardedBy("mLock")
    private int mUseCount;
    private final VideoUsageControl mVideoUsageControl;
    private final ZoomControl mZoomControl;

    @VisibleForTesting
    ZslControl mZslControl;

    /* loaded from: classes.dex */
    public static final class CameraCaptureCallbackSet extends CameraCaptureCallback {
        Set<CameraCaptureCallback> mCallbacks = new HashSet();
        Map<CameraCaptureCallback, Executor> mCallbackExecutors = new ArrayMap();

        public void addCaptureCallback(@NonNull Executor executor, @NonNull CameraCaptureCallback cameraCaptureCallback) {
            this.mCallbacks.add(cameraCaptureCallback);
            this.mCallbackExecutors.put(cameraCaptureCallback, executor);
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureCancelled(int i) {
            for (CameraCaptureCallback cameraCaptureCallback : this.mCallbacks) {
                try {
                    this.mCallbackExecutors.get(cameraCaptureCallback).execute(new RunnableC0025x3271d0aa(cameraCaptureCallback, i, 0));
                } catch (RejectedExecutionException e) {
                    Logger.e(Camera2CameraControlImpl.TAG, "Executor rejected to invoke onCaptureCancelled.", e);
                }
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureCompleted(int i, @NonNull CameraCaptureResult cameraCaptureResult) {
            for (CameraCaptureCallback cameraCaptureCallback : this.mCallbacks) {
                try {
                    this.mCallbackExecutors.get(cameraCaptureCallback).execute(new RunnableC0024xfbe0c504(cameraCaptureCallback, i, cameraCaptureResult, 1));
                } catch (RejectedExecutionException e) {
                    Logger.e(Camera2CameraControlImpl.TAG, "Executor rejected to invoke onCaptureCompleted.", e);
                }
            }
        }

        @Override // androidx.camera.core.impl.CameraCaptureCallback
        public void onCaptureFailed(int i, @NonNull CameraCaptureFailure cameraCaptureFailure) {
            for (CameraCaptureCallback cameraCaptureCallback : this.mCallbacks) {
                try {
                    this.mCallbackExecutors.get(cameraCaptureCallback).execute(new RunnableC0024xfbe0c504(cameraCaptureCallback, i, cameraCaptureFailure, 0));
                } catch (RejectedExecutionException e) {
                    Logger.e(Camera2CameraControlImpl.TAG, "Executor rejected to invoke onCaptureFailed.", e);
                }
            }
        }

        public void removeCaptureCallback(@NonNull CameraCaptureCallback cameraCaptureCallback) {
            this.mCallbacks.remove(cameraCaptureCallback);
            this.mCallbackExecutors.remove(cameraCaptureCallback);
        }
    }

    /* loaded from: classes.dex */
    public static final class CameraControlSessionCallback extends CameraCaptureSession.CaptureCallback {
        private final Executor mExecutor;
        final Set<CaptureResultListener> mResultListeners = new HashSet();

        public CameraControlSessionCallback(@NonNull Executor executor) {
            this.mExecutor = executor;
        }

        public /* synthetic */ void lambda$onCaptureCompleted$0(TotalCaptureResult totalCaptureResult) {
            HashSet hashSet = new HashSet();
            for (CaptureResultListener captureResultListener : this.mResultListeners) {
                if (captureResultListener.onCaptureResult(totalCaptureResult)) {
                    hashSet.add(captureResultListener);
                }
            }
            if (!hashSet.isEmpty()) {
                this.mResultListeners.removeAll(hashSet);
            }
        }

        public void addListener(@NonNull CaptureResultListener captureResultListener) {
            this.mResultListeners.add(captureResultListener);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.CaptureCallback
        public void onCaptureCompleted(@NonNull CameraCaptureSession cameraCaptureSession, @NonNull CaptureRequest captureRequest, @NonNull TotalCaptureResult totalCaptureResult) {
            this.mExecutor.execute(new RunnableC0026x1378447b(this, totalCaptureResult, 0));
        }

        public void removeListener(@NonNull CaptureResultListener captureResultListener) {
            this.mResultListeners.remove(captureResultListener);
        }
    }

    /* loaded from: classes.dex */
    public interface CaptureResultListener {
        boolean onCaptureResult(@NonNull TotalCaptureResult totalCaptureResult);
    }

    @VisibleForTesting
    public Camera2CameraControlImpl(@NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat, @NonNull ScheduledExecutorService scheduledExecutorService, @NonNull Executor executor, @NonNull CameraControlInternal.ControlUpdateCallback controlUpdateCallback) {
        this(cameraCharacteristicsCompat, scheduledExecutorService, executor, controlUpdateCallback, new Quirks(new ArrayList()));
    }

    private int getSupportedAwbMode(int i) {
        int[] iArr = (int[]) this.mCameraCharacteristics.get(CameraCharacteristics.CONTROL_AWB_AVAILABLE_MODES);
        if (iArr == null) {
            return 0;
        }
        if (isModeInList(i, iArr)) {
            return i;
        }
        if (!isModeInList(1, iArr)) {
            return 0;
        }
        return 1;
    }

    private boolean isControlInUse() {
        if (getUseCount() > 0) {
            return true;
        }
        return false;
    }

    private static boolean isModeInList(int i, int[] iArr) {
        for (int i2 : iArr) {
            if (i == i2) {
                return true;
            }
        }
        return false;
    }

    public static boolean isSessionUpdated(@NonNull TotalCaptureResult totalCaptureResult, long j) {
        Long l;
        if (totalCaptureResult.getRequest() == null) {
            return false;
        }
        Object tag = totalCaptureResult.getRequest().getTag();
        if (!(tag instanceof TagBundle) || (l = (Long) ((TagBundle) tag).getTag(TAG_SESSION_UPDATE_ID)) == null || l.longValue() < j) {
            return false;
        }
        return true;
    }

    public static /* synthetic */ void lambda$addInteropConfig$0() {
    }

    public /* synthetic */ void lambda$addSessionCameraCaptureCallback$8(Executor executor, CameraCaptureCallback cameraCaptureCallback) {
        this.mCameraCaptureCallbackSet.addCaptureCallback(executor, cameraCaptureCallback);
    }

    public static /* synthetic */ void lambda$clearInteropConfig$1() {
    }

    public /* synthetic */ ListenableFuture lambda$getCameraCapturePipelineAsync$5(int i, int i2, int i3, Void r4) {
        return Futures.immediateFuture(this.mCamera2CapturePipeline.getCameraCapturePipeline(i, i2, i3));
    }

    public /* synthetic */ void lambda$removeSessionCameraCaptureCallback$9(CameraCaptureCallback cameraCaptureCallback) {
        this.mCameraCaptureCallbackSet.removeCaptureCallback(cameraCaptureCallback);
    }

    public /* synthetic */ ListenableFuture lambda$submitStillCaptureRequests$4(List list, int i, int i2, int i3, Void r5) {
        return this.mCamera2CapturePipeline.submitStillCaptures(list, i, i2, i3);
    }

    public /* synthetic */ void lambda$updateSessionConfigAsync$6(CallbackToFutureAdapter.Completer completer) {
        Futures.propagate(waitForSessionUpdateId(updateSessionConfigSynchronous()), completer);
    }

    public /* synthetic */ Object lambda$updateSessionConfigAsync$7(CallbackToFutureAdapter.Completer completer) {
        this.mExecutor.execute(new RunnableC0371x742e2fda(this, completer, 9));
        return "updateSessionConfigAsync";
    }

    public static /* synthetic */ boolean lambda$waitForSessionUpdateId$2(long j, CallbackToFutureAdapter.Completer completer, TotalCaptureResult totalCaptureResult) {
        if (isSessionUpdated(totalCaptureResult, j)) {
            completer.set(null);
            return true;
        }
        return false;
    }

    public /* synthetic */ Object lambda$waitForSessionUpdateId$3(final long j, final CallbackToFutureAdapter.Completer completer) {
        addCaptureResultListener(new CaptureResultListener() { // from class: 돴땁돵땦듼뎬땠땔돤돰땳뎨딅땩돛돳됐돳둣돸딤딹돵뎡듰뎹돼뒹돤땝땋뎸둑됫되딤뒻뒻딨땻듽뒵뒀뎨땃뒹둠땜땤딠듼땜된뒋딤뒼돰뒈땪돠땐땋돷땱뎬땱됩땰땜땔딄땍딸뒛땫뒐딹딃땦땍땥땻땜딁딎둠딁땟돼딜땰땐땳뒼둣땵땱땨듔뒉돠됴딻뒾딄듐땋따돳딹듻된돠딀돵돝뒝땲딀듌됫땭되든득따뎸돨됴듐
            @Override // androidx.camera.camera2.internal.Camera2CameraControlImpl.CaptureResultListener
            public final boolean onCaptureResult(TotalCaptureResult totalCaptureResult) {
                boolean lambda$waitForSessionUpdateId$2;
                lambda$waitForSessionUpdateId$2 = Camera2CameraControlImpl.lambda$waitForSessionUpdateId$2(j, completer, totalCaptureResult);
                return lambda$waitForSessionUpdateId$2;
            }
        });
        return "waitForSessionUpdateId:" + j;
    }

    @NonNull
    private ListenableFuture<Void> waitForSessionUpdateId(final long j) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: 돵뎸따뎬된돸듸땁땃뎸딝뒵땀딟딐땄땩땵땜딎듼득된둬됩둑둔듬된드땜돰돼됨둬둡듐땦땪땪땝들둣딜뒝뒼뒀돼땄듻돸디돶듔딸돨됫돨딎땨둣땻뒹뎹딸득뒋돨둘뒼듻딸도뒷돶땝뒤들들딁듐땐두딠듌듸딟땬듨뎰듸뒙딞듟뎹두돛득따득뎨됐땔뎡땀둣땯뒈뒉뒘땁듌땃둠땃둑딞듼땮듐땜들딻딄돛둠도뒾딌될
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                Object lambda$waitForSessionUpdateId$3;
                lambda$waitForSessionUpdateId$3 = Camera2CameraControlImpl.this.lambda$waitForSessionUpdateId$3(j, completer);
                return lambda$waitForSessionUpdateId$3;
            }
        });
    }

    public void addCaptureResultListener(@NonNull CaptureResultListener captureResultListener) {
        this.mSessionCallback.addListener(captureResultListener);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void addInteropConfig(@NonNull Config config2) {
        this.mCamera2CameraControl.addCaptureRequestOptions(CaptureRequestOptions.Builder.from(config2).build()).addListener(new RunnableC0374x3cd97916(2), CameraXExecutors.directExecutor());
    }

    public void addSessionCameraCaptureCallback(@NonNull Executor executor, @NonNull CameraCaptureCallback cameraCaptureCallback) {
        this.mExecutor.execute(new RunnableC0384x149e5abd(this, 4, executor, cameraCaptureCallback));
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void addZslConfig(@NonNull SessionConfig.Builder builder) {
        this.mZslControl.addZslConfig(builder);
    }

    @Override // androidx.camera.core.CameraControl
    @NonNull
    public ListenableFuture<Void> cancelFocusAndMetering() {
        if (!isControlInUse()) {
            return Futures.immediateFailedFuture(new CameraControl.OperationCanceledException("Camera is not active."));
        }
        return Futures.nonCancellationPropagating(this.mFocusMeteringControl.cancelFocusAndMetering());
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void clearInteropConfig() {
        this.mCamera2CameraControl.clearCaptureRequestOptions().addListener(new RunnableC0374x3cd97916(1), CameraXExecutors.directExecutor());
    }

    public void decrementUseCount() {
        synchronized (this.mLock) {
            try {
                int i = this.mUseCount;
                if (i != 0) {
                    this.mUseCount = i - 1;
                } else {
                    throw new IllegalStateException("Decrementing use count occurs more times than incrementing");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void decrementVideoUsage() {
        this.mVideoUsageControl.decrementUsage();
    }

    @Override // androidx.camera.core.CameraControl
    @NonNull
    public ListenableFuture<Void> enableTorch(boolean z) {
        if (!isControlInUse()) {
            return Futures.immediateFailedFuture(new CameraControl.OperationCanceledException("Camera is not active."));
        }
        return Futures.nonCancellationPropagating(this.mTorchControl.enableTorch(z));
    }

    public void enableTorchInternal(boolean z) {
        this.mIsTorchOn = z;
        if (!z) {
            CaptureConfig.Builder builder = new CaptureConfig.Builder();
            builder.setTemplateType(this.mTemplate);
            builder.setUseRepeatingSurface(true);
            Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
            builder2.setCaptureRequestOption(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(getSupportedAeMode(1)));
            builder2.setCaptureRequestOption(CaptureRequest.FLASH_MODE, 0);
            builder.addImplementationOptions(builder2.build());
            submitCaptureRequestsInternal(Collections.singletonList(builder.build()));
        }
        updateSessionConfigSynchronous();
    }

    @NonNull
    public Camera2CameraControl getCamera2CameraControl() {
        return this.mCamera2CameraControl;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    @NonNull
    public ListenableFuture<CameraCapturePipeline> getCameraCapturePipelineAsync(final int i, final int i2) {
        if (!isControlInUse()) {
            Logger.w(TAG, "Camera is not active.");
            return Futures.immediateFailedFuture(new CameraControl.OperationCanceledException("Camera is not active."));
        }
        final int flashMode = getFlashMode();
        return FutureChain.from(Futures.nonCancellationPropagating(this.mFlashModeChangeSessionUpdateFuture)).transformAsync(new AsyncFunction() { // from class: 돴땳뒾땠됫된듽듔뎠돷딄둘뒾뎸땱딐땻딐뒘뒾땱듸뒨뒝돷땀땯땃돛될땬딁땟돛될뎰들둔돵된돰땤뒋됩땮돤딀돠땅딃딁땧딨뎰땔돶땸뎠땰뒝땲뒷땋딽돸땟뒀딜뒤땔땮둔듸돝뎸땤뎻뒼땡돸듟뎰돝뎰둠둣땭땹뎹땡뒘땋뒷듨듔뎽돳둘됩땟듔듔딄뒾듽돷듸땻뒵듻듼뒛듌뒈뒻뒝땥돳돝뒘득두딀땬땥뒛딹됫땁땫
            @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                ListenableFuture lambda$getCameraCapturePipelineAsync$5;
                int i3 = i;
                int i4 = flashMode;
                lambda$getCameraCapturePipelineAsync$5 = Camera2CameraControlImpl.this.lambda$getCameraCapturePipelineAsync$5(i3, i4, i2, (Void) obj);
                return lambda$getCameraCapturePipelineAsync$5;
            }
        }, this.mExecutor);
    }

    @NonNull
    public Rect getCropSensorRegion() {
        return this.mZoomControl.getCropSensorRegion();
    }

    @VisibleForTesting
    public long getCurrentSessionUpdateId() {
        return this.mCurrentSessionUpdateId;
    }

    @NonNull
    public ExposureControl getExposureControl() {
        return this.mExposureControl;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public int getFlashMode() {
        return this.mFlashMode;
    }

    @NonNull
    public FocusMeteringControl getFocusMeteringControl() {
        return this.mFocusMeteringControl;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public final /* synthetic */ CameraControlInternal getImplementation() {
        return CameraControlInternal.CC.m253x1378447b(this);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    @NonNull
    public Config getInteropConfig() {
        return this.mCamera2CameraControl.getCamera2ImplConfig();
    }

    public int getMaxAeRegionCount() {
        Integer num = (Integer) this.mCameraCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AE);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public int getMaxAfRegionCount() {
        Integer num = (Integer) this.mCameraCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AF);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    public int getMaxAwbRegionCount() {
        Integer num = (Integer) this.mCameraCharacteristics.get(CameraCharacteristics.CONTROL_MAX_REGIONS_AWB);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    @Nullable
    public ImageCapture.ScreenFlash getScreenFlash() {
        return this.mScreenFlash;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    @NonNull
    public Rect getSensorRect() {
        Rect rect = (Rect) this.mCameraCharacteristics.get(CameraCharacteristics.SENSOR_INFO_ACTIVE_ARRAY_SIZE);
        if ("robolectric".equals(Build.FINGERPRINT) && rect == null) {
            return new Rect(0, 0, 4000, PathInterpolatorCompat.MAX_NUM_POINTS);
        }
        return (Rect) Preconditions.checkNotNull(rect);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    @NonNull
    public SessionConfig getSessionConfig() {
        this.mSessionConfigBuilder.setTemplateType(this.mTemplate);
        this.mSessionConfigBuilder.setImplementationOptions(getSessionOptions());
        this.mSessionConfigBuilder.addTag(TAG_SESSION_UPDATE_ID, Long.valueOf(this.mCurrentSessionUpdateId));
        return this.mSessionConfigBuilder.build();
    }

    @VisibleForTesting
    public Config getSessionOptions() {
        int i;
        Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
        CaptureRequest.Key key = CaptureRequest.CONTROL_MODE;
        Config.OptionPriority optionPriority = Config.OptionPriority.REQUIRED;
        builder.setCaptureRequestOptionWithPriority(key, 1, optionPriority);
        this.mFocusMeteringControl.addFocusMeteringOptions(builder);
        this.mAeFpsRange.addAeFpsRangeOptions(builder);
        this.mZoomControl.addZoomOption(builder);
        if (this.mFocusMeteringControl.isExternalFlashAeModeEnabled()) {
            i = 5;
        } else {
            i = 1;
        }
        if (this.mIsTorchOn) {
            builder.setCaptureRequestOptionWithPriority(CaptureRequest.FLASH_MODE, 2, optionPriority);
        } else {
            int i2 = this.mFlashMode;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        i = 1;
                    }
                } else {
                    i = 3;
                }
            } else {
                i = this.mAutoFlashAEModeDisabler.getCorrectedAeMode(2);
            }
        }
        builder.setCaptureRequestOptionWithPriority(CaptureRequest.CONTROL_AE_MODE, Integer.valueOf(getSupportedAeMode(i)), optionPriority);
        builder.setCaptureRequestOptionWithPriority(CaptureRequest.CONTROL_AWB_MODE, Integer.valueOf(getSupportedAwbMode(1)), optionPriority);
        this.mExposureControl.setCaptureRequestOption(builder);
        this.mCamera2CameraControl.applyOptionsToBuilder(builder);
        return builder.build();
    }

    public int getSupportedAeMode(int i) {
        return getSupportedAeMode(this.mCameraCharacteristics, i);
    }

    public int getSupportedAfMode(int i) {
        int[] iArr = (int[]) this.mCameraCharacteristics.get(CameraCharacteristics.CONTROL_AF_AVAILABLE_MODES);
        if (iArr == null) {
            return 0;
        }
        if (isModeInList(i, iArr)) {
            return i;
        }
        if (isModeInList(4, iArr)) {
            return 4;
        }
        if (!isModeInList(1, iArr)) {
            return 0;
        }
        return 1;
    }

    @NonNull
    public TorchControl getTorchControl() {
        return this.mTorchControl;
    }

    @VisibleForTesting
    public int getUseCount() {
        int i;
        synchronized (this.mLock) {
            i = this.mUseCount;
        }
        return i;
    }

    @NonNull
    public ZoomControl getZoomControl() {
        return this.mZoomControl;
    }

    @NonNull
    public ZslControl getZslControl() {
        return this.mZslControl;
    }

    public void incrementUseCount() {
        synchronized (this.mLock) {
            this.mUseCount++;
        }
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void incrementVideoUsage() {
        this.mVideoUsageControl.incrementUsage();
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public boolean isInVideoUsage() {
        int usage = this.mVideoUsageControl.getUsage();
        Logger.d(TAG, "isInVideoUsage: mVideoUsageControl value = " + usage);
        if (usage > 0) {
            return true;
        }
        return false;
    }

    public boolean isTorchOn() {
        return this.mIsTorchOn;
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public boolean isZslDisabledByByUserCaseConfig() {
        return this.mZslControl.isZslDisabledByUserCaseConfig();
    }

    public void removeCaptureResultListener(@NonNull CaptureResultListener captureResultListener) {
        this.mSessionCallback.removeListener(captureResultListener);
    }

    public void removeSessionCameraCaptureCallback(@NonNull CameraCaptureCallback cameraCaptureCallback) {
        this.mExecutor.execute(new RunnableC0371x742e2fda(this, cameraCaptureCallback, 10));
    }

    public void resetTemplate() {
        setTemplate(1);
    }

    public void setActive(boolean z) {
        Logger.d(TAG, "setActive: isActive = " + z);
        this.mFocusMeteringControl.setActive(z);
        this.mZoomControl.setActive(z);
        this.mTorchControl.setActive(z);
        this.mExposureControl.setActive(z);
        this.mCamera2CameraControl.setActive(z);
        if (!z) {
            this.mScreenFlash = null;
            this.mVideoUsageControl.resetDirectly();
        }
    }

    @Override // androidx.camera.core.CameraControl
    @NonNull
    public ListenableFuture<Integer> setExposureCompensationIndex(int i) {
        if (!isControlInUse()) {
            return Futures.immediateFailedFuture(new CameraControl.OperationCanceledException("Camera is not active."));
        }
        return this.mExposureControl.setExposureCompensationIndex(i);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void setFlashMode(int i) {
        if (!isControlInUse()) {
            Logger.w(TAG, "Camera is not active.");
            return;
        }
        this.mFlashMode = i;
        Logger.d(TAG, "setFlashMode: mFlashMode = " + this.mFlashMode);
        ZslControl zslControl = this.mZslControl;
        boolean z = true;
        if (this.mFlashMode != 1 && this.mFlashMode != 0) {
            z = false;
        }
        zslControl.setZslDisabledByFlashMode(z);
        this.mFlashModeChangeSessionUpdateFuture = updateSessionConfigAsync();
    }

    @Override // androidx.camera.core.CameraControl
    @NonNull
    public ListenableFuture<Void> setLinearZoom(float f) {
        if (!isControlInUse()) {
            return Futures.immediateFailedFuture(new CameraControl.OperationCanceledException("Camera is not active."));
        }
        return Futures.nonCancellationPropagating(this.mZoomControl.setLinearZoom(f));
    }

    public void setPreviewAspectRatio(@Nullable Rational rational) {
        this.mFocusMeteringControl.setPreviewAspectRatio(rational);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void setScreenFlash(@Nullable ImageCapture.ScreenFlash screenFlash) {
        this.mScreenFlash = screenFlash;
    }

    public void setTemplate(int i) {
        this.mTemplate = i;
        this.mFocusMeteringControl.setTemplate(i);
        this.mCamera2CapturePipeline.setTemplate(this.mTemplate);
    }

    @Override // androidx.camera.core.CameraControl
    @NonNull
    public ListenableFuture<Void> setZoomRatio(float f) {
        if (!isControlInUse()) {
            return Futures.immediateFailedFuture(new CameraControl.OperationCanceledException("Camera is not active."));
        }
        return Futures.nonCancellationPropagating(this.mZoomControl.setZoomRatio(f));
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    public void setZslDisabledByUserCaseConfig(boolean z) {
        this.mZslControl.setZslDisabledByUserCaseConfig(z);
    }

    @Override // androidx.camera.core.CameraControl
    @NonNull
    public ListenableFuture<FocusMeteringResult> startFocusAndMetering(@NonNull FocusMeteringAction focusMeteringAction) {
        if (!isControlInUse()) {
            return Futures.immediateFailedFuture(new CameraControl.OperationCanceledException("Camera is not active."));
        }
        return Futures.nonCancellationPropagating(this.mFocusMeteringControl.startFocusAndMetering(focusMeteringAction));
    }

    public void submitCaptureRequestsInternal(List<CaptureConfig> list) {
        this.mControlUpdateCallback.onCameraControlCaptureRequests(list);
    }

    @Override // androidx.camera.core.impl.CameraControlInternal
    @NonNull
    public ListenableFuture<List<Void>> submitStillCaptureRequests(@NonNull final List<CaptureConfig> list, final int i, final int i2) {
        if (!isControlInUse()) {
            Logger.w(TAG, "Camera is not active.");
            return Futures.immediateFailedFuture(new CameraControl.OperationCanceledException("Camera is not active."));
        }
        final int flashMode = getFlashMode();
        return FutureChain.from(Futures.nonCancellationPropagating(this.mFlashModeChangeSessionUpdateFuture)).transformAsync(new AsyncFunction() { // from class: 돴땄딝딌땧뒹돶둬땯땣땹땐됨딁땧뒼뒛땝땹두듔땄뎻듼딎딸딌돨뒝땡땰드돼득돤딎딜땨땱뒙뒛땻땲땹딸딻땹딝둣뎹땜땔듼땤딽뒝뒙딁뒾따땋뒛돤뒀땳땳돠돼듌뒝듔땁들돴돸뒼둣딸뎰딄뒨땪됐뒉됨뒐땅두뒝듸들딻드땀듨딞드뒈땍딠땤뒘땥든돳땵돠땬돰뎹뒷뒼딟되땫땳듔땐딻듽뒻딌둑딄땧땬도딃돛듬
            @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
            public final ListenableFuture apply(Object obj) {
                ListenableFuture lambda$submitStillCaptureRequests$4;
                int i3 = i;
                int i4 = flashMode;
                lambda$submitStillCaptureRequests$4 = Camera2CameraControlImpl.this.lambda$submitStillCaptureRequests$4(list, i3, i4, i2, (Void) obj);
                return lambda$submitStillCaptureRequests$4;
            }
        }, this.mExecutor);
    }

    public void updateSessionConfig() {
        this.mExecutor.execute(new RunnableC0450xb2a4f6ac(this, 2));
    }

    @NonNull
    public ListenableFuture<Void> updateSessionConfigAsync() {
        return Futures.nonCancellationPropagating(CallbackToFutureAdapter.getFuture(new C0419x35cc9f53(this, 3)));
    }

    public long updateSessionConfigSynchronous() {
        this.mCurrentSessionUpdateId = this.mNextSessionUpdateId.getAndIncrement();
        this.mControlUpdateCallback.onCameraControlUpdateSessionConfig();
        return this.mCurrentSessionUpdateId;
    }

    public Camera2CameraControlImpl(@NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat, @NonNull ScheduledExecutorService scheduledExecutorService, @NonNull Executor executor, @NonNull CameraControlInternal.ControlUpdateCallback controlUpdateCallback, @NonNull Quirks quirks) {
        this.mLock = new Object();
        SessionConfig.Builder builder = new SessionConfig.Builder();
        this.mSessionConfigBuilder = builder;
        this.mUseCount = 0;
        this.mIsTorchOn = false;
        this.mFlashMode = 2;
        this.mNextSessionUpdateId = new AtomicLong(0L);
        this.mFlashModeChangeSessionUpdateFuture = Futures.immediateFuture(null);
        this.mTemplate = 1;
        this.mCurrentSessionUpdateId = 0L;
        CameraCaptureCallbackSet cameraCaptureCallbackSet = new CameraCaptureCallbackSet();
        this.mCameraCaptureCallbackSet = cameraCaptureCallbackSet;
        this.mCameraCharacteristics = cameraCharacteristicsCompat;
        this.mControlUpdateCallback = controlUpdateCallback;
        this.mExecutor = executor;
        this.mVideoUsageControl = new VideoUsageControl(executor);
        CameraControlSessionCallback cameraControlSessionCallback = new CameraControlSessionCallback(executor);
        this.mSessionCallback = cameraControlSessionCallback;
        builder.setTemplateType(this.mTemplate);
        builder.addRepeatingCameraCaptureCallback(CaptureCallbackContainer.create(cameraControlSessionCallback));
        builder.addRepeatingCameraCaptureCallback(cameraCaptureCallbackSet);
        this.mExposureControl = new ExposureControl(this, cameraCharacteristicsCompat, executor);
        this.mFocusMeteringControl = new FocusMeteringControl(this, scheduledExecutorService, executor, quirks);
        this.mZoomControl = new ZoomControl(this, cameraCharacteristicsCompat, executor);
        this.mTorchControl = new TorchControl(this, cameraCharacteristicsCompat, executor);
        if (Build.VERSION.SDK_INT >= 23) {
            this.mZslControl = new ZslControlImpl(cameraCharacteristicsCompat);
        } else {
            this.mZslControl = new ZslControlNoOpImpl();
        }
        this.mAeFpsRange = new AeFpsRange(quirks);
        this.mAutoFlashAEModeDisabler = new AutoFlashAEModeDisabler(quirks);
        this.mCamera2CameraControl = new Camera2CameraControl(this, executor);
        this.mCamera2CapturePipeline = new Camera2CapturePipeline(this, cameraCharacteristicsCompat, quirks, executor, scheduledExecutorService);
    }

    public static int getSupportedAeMode(@NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat, int i) {
        int[] iArr = (int[]) cameraCharacteristicsCompat.get(CameraCharacteristics.CONTROL_AE_AVAILABLE_MODES);
        if (iArr == null) {
            return 0;
        }
        return isModeInList(i, iArr) ? i : isModeInList(1, iArr) ? 1 : 0;
    }
}
