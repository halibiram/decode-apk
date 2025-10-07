package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CaptureRequest;
import android.hardware.camera2.CaptureResult;
import android.hardware.camera2.TotalCaptureResult;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.VisibleForTesting;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.camera.camera2.internal.Camera2CapturePipeline;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.workaround.FlashAvailabilityChecker;
import androidx.camera.camera2.internal.compat.workaround.OverrideAeModeForStillCapture;
import androidx.camera.camera2.internal.compat.workaround.UseFlashModeTorchFor3aUpdate;
import androidx.camera.camera2.internal.compat.workaround.UseTorchAsFlash;
import androidx.camera.camera2.interop.ExperimentalCamera2Interop;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.Logger;
import androidx.camera.core.imagecapture.CameraCapturePipeline;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureFailure;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CameraCaptureResults;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.ConvergenceUtils;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.AsyncFunction;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0362x4440ab85;
import defpackage.C0419x35cc9f53;
import defpackage.RunnableC0450xb2a4f6ac;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class Camera2CapturePipeline {
    private static final String TAG = "Camera2CapturePipeline";

    @NonNull
    private final Camera2CameraControlImpl mCameraControl;

    @NonNull
    private final Quirks mCameraQuirk;

    @NonNull
    private final Executor mExecutor;
    private final boolean mHasFlashUnit;
    private final boolean mIsLegacyDevice;

    @NonNull
    private final ScheduledExecutorService mScheduler;
    private int mTemplate = 1;

    @NonNull
    private final UseTorchAsFlash mUseTorchAsFlash;

    /* loaded from: classes.dex */
    public static class AePreCaptureTask implements PipelineTask {
        private final Camera2CameraControlImpl mCameraControl;
        private final int mFlashMode;
        private boolean mIsExecuted = false;
        private final OverrideAeModeForStillCapture mOverrideAeModeForStillCapture;

        public AePreCaptureTask(@NonNull Camera2CameraControlImpl camera2CameraControlImpl, int i, @NonNull OverrideAeModeForStillCapture overrideAeModeForStillCapture) {
            this.mCameraControl = camera2CameraControlImpl;
            this.mFlashMode = i;
            this.mOverrideAeModeForStillCapture = overrideAeModeForStillCapture;
        }

        public /* synthetic */ Object lambda$preCapture$0(CallbackToFutureAdapter.Completer completer) {
            this.mCameraControl.getFocusMeteringControl().lambda$triggerAePrecapture$2(completer);
            this.mOverrideAeModeForStillCapture.onAePrecaptureStarted();
            return "AePreCapture";
        }

        public static /* synthetic */ Boolean lambda$preCapture$1(Void r0) {
            return Boolean.TRUE;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public boolean isCaptureResultNeeded() {
            if (this.mFlashMode == 0) {
                return true;
            }
            return false;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public void postCapture() {
            if (this.mIsExecuted) {
                Logger.d(Camera2CapturePipeline.TAG, "cancel TriggerAePreCapture");
                this.mCameraControl.getFocusMeteringControl().cancelAfAeTrigger(false, true);
                this.mOverrideAeModeForStillCapture.onAePrecaptureFinished();
            }
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        @NonNull
        public ListenableFuture<Boolean> preCapture(@Nullable TotalCaptureResult totalCaptureResult) {
            if (Camera2CapturePipeline.isFlashRequired(this.mFlashMode, totalCaptureResult)) {
                Logger.d(Camera2CapturePipeline.TAG, "Trigger AE");
                this.mIsExecuted = true;
                return FutureChain.from(CallbackToFutureAdapter.getFuture(new C0039x85f0360e(this, 0))).transform(new C0040xad53da1a(0), CameraXExecutors.directExecutor());
            }
            return Futures.immediateFuture(Boolean.FALSE);
        }
    }

    /* loaded from: classes.dex */
    public static class AfTask implements PipelineTask {
        private final Camera2CameraControlImpl mCameraControl;
        private boolean mIsExecuted = false;

        public AfTask(@NonNull Camera2CameraControlImpl camera2CameraControlImpl) {
            this.mCameraControl = camera2CameraControlImpl;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public boolean isCaptureResultNeeded() {
            return true;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public void postCapture() {
            if (this.mIsExecuted) {
                Logger.d(Camera2CapturePipeline.TAG, "cancel TriggerAF");
                this.mCameraControl.getFocusMeteringControl().cancelAfAeTrigger(true, false);
            }
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        @NonNull
        public ListenableFuture<Boolean> preCapture(@Nullable TotalCaptureResult totalCaptureResult) {
            ListenableFuture<Boolean> immediateFuture = Futures.immediateFuture(Boolean.TRUE);
            if (totalCaptureResult == null) {
                return immediateFuture;
            }
            Integer num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_MODE);
            if (num == null) {
                return immediateFuture;
            }
            int intValue = num.intValue();
            if (intValue == 1 || intValue == 2) {
                Logger.d(Camera2CapturePipeline.TAG, "TriggerAf? AF mode auto");
                Integer num2 = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AF_STATE);
                if (num2 != null && num2.intValue() == 0) {
                    Logger.d(Camera2CapturePipeline.TAG, "Trigger AF");
                    this.mIsExecuted = true;
                    this.mCameraControl.getFocusMeteringControl().triggerAf(null, false);
                }
            }
            return immediateFuture;
        }
    }

    /* loaded from: classes.dex */
    public static class CameraCapturePipelineImpl implements CameraCapturePipeline {
        private final Executor mExecutor;
        private int mFlashMode;
        private final Pipeline mPipelineDelegate;

        public CameraCapturePipelineImpl(Pipeline pipeline, Executor executor, int i) {
            this.mPipelineDelegate = pipeline;
            this.mExecutor = executor;
            this.mFlashMode = i;
        }

        public /* synthetic */ Object lambda$invokePostCapture$1(CallbackToFutureAdapter.Completer completer) {
            this.mPipelineDelegate.executePostCapture();
            completer.set(null);
            return "invokePostCaptureFuture";
        }

        public static /* synthetic */ Void lambda$invokePreCapture$0(TotalCaptureResult totalCaptureResult) {
            return null;
        }

        @Override // androidx.camera.core.imagecapture.CameraCapturePipeline
        @NonNull
        public ListenableFuture<Void> invokePostCapture() {
            return CallbackToFutureAdapter.getFuture(new C0039x85f0360e(this, 1));
        }

        @Override // androidx.camera.core.imagecapture.CameraCapturePipeline
        @NonNull
        public ListenableFuture<Void> invokePreCapture() {
            Logger.d(Camera2CapturePipeline.TAG, "invokePreCapture");
            return FutureChain.from(this.mPipelineDelegate.executePreCapture(this.mFlashMode)).transform(new C0040xad53da1a(1), this.mExecutor);
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class Pipeline {
        private static final long CHECK_3A_TIMEOUT_IN_NS;
        private static final long CHECK_3A_WITH_FLASH_TIMEOUT_IN_NS;
        private final Camera2CameraControlImpl mCameraControl;
        private final Executor mExecutor;
        private final boolean mIsLegacyDevice;
        private final OverrideAeModeForStillCapture mOverrideAeModeForStillCapture;
        private final ScheduledExecutorService mScheduler;
        private final int mTemplate;
        private long mTimeout3A = CHECK_3A_TIMEOUT_IN_NS;
        final List<PipelineTask> mTasks = new ArrayList();
        private final PipelineTask mPipelineSubTask = new AnonymousClass1();

        /* renamed from: androidx.camera.camera2.internal.Camera2CapturePipeline$Pipeline$1 */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements PipelineTask {
            public AnonymousClass1() {
            }

            public static /* synthetic */ Boolean lambda$preCapture$0(List list) {
                return Boolean.valueOf(list.contains(Boolean.TRUE));
            }

            @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
            public boolean isCaptureResultNeeded() {
                Iterator<PipelineTask> it = Pipeline.this.mTasks.iterator();
                while (it.hasNext()) {
                    if (it.next().isCaptureResultNeeded()) {
                        return true;
                    }
                }
                return false;
            }

            @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
            public void postCapture() {
                Iterator<PipelineTask> it = Pipeline.this.mTasks.iterator();
                while (it.hasNext()) {
                    it.next().postCapture();
                }
            }

            @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
            @NonNull
            public ListenableFuture<Boolean> preCapture(@Nullable TotalCaptureResult totalCaptureResult) {
                ArrayList arrayList = new ArrayList();
                Iterator<PipelineTask> it = Pipeline.this.mTasks.iterator();
                while (it.hasNext()) {
                    arrayList.add(it.next().preCapture(totalCaptureResult));
                }
                return Futures.transform(Futures.allAsList(arrayList), new C0040xad53da1a(2), CameraXExecutors.directExecutor());
            }
        }

        /* renamed from: androidx.camera.camera2.internal.Camera2CapturePipeline$Pipeline$2 */
        /* loaded from: classes.dex */
        public class AnonymousClass2 extends CameraCaptureCallback {
            final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;

            public AnonymousClass2(CallbackToFutureAdapter.Completer completer) {
                r2 = completer;
            }

            @Override // androidx.camera.core.impl.CameraCaptureCallback
            public void onCaptureCancelled(int i) {
                r2.setException(new ImageCaptureException(3, "Capture request is cancelled because camera is closed", null));
            }

            @Override // androidx.camera.core.impl.CameraCaptureCallback
            public void onCaptureCompleted(int i, @NonNull CameraCaptureResult cameraCaptureResult) {
                r2.set(null);
            }

            @Override // androidx.camera.core.impl.CameraCaptureCallback
            public void onCaptureFailed(int i, @NonNull CameraCaptureFailure cameraCaptureFailure) {
                r2.setException(new ImageCaptureException(2, "Capture request failed with reason " + cameraCaptureFailure.getReason(), null));
            }
        }

        static {
            TimeUnit timeUnit = TimeUnit.SECONDS;
            CHECK_3A_TIMEOUT_IN_NS = timeUnit.toNanos(1L);
            CHECK_3A_WITH_FLASH_TIMEOUT_IN_NS = timeUnit.toNanos(5L);
        }

        public Pipeline(int i, @NonNull Executor executor, @NonNull ScheduledExecutorService scheduledExecutorService, @NonNull Camera2CameraControlImpl camera2CameraControlImpl, boolean z, @NonNull OverrideAeModeForStillCapture overrideAeModeForStillCapture) {
            this.mTemplate = i;
            this.mExecutor = executor;
            this.mScheduler = scheduledExecutorService;
            this.mCameraControl = camera2CameraControlImpl;
            this.mIsLegacyDevice = z;
            this.mOverrideAeModeForStillCapture = overrideAeModeForStillCapture;
        }

        @OptIn(markerClass = {ExperimentalCamera2Interop.class})
        private void applyAeModeQuirk(@NonNull CaptureConfig.Builder builder) {
            Camera2ImplConfig.Builder builder2 = new Camera2ImplConfig.Builder();
            builder2.setCaptureRequestOption(CaptureRequest.CONTROL_AE_MODE, 3);
            builder.addImplementationOptions(builder2.build());
        }

        private void applyStillCaptureTemplate(@NonNull CaptureConfig.Builder builder, @NonNull CaptureConfig captureConfig) {
            int i;
            if (this.mTemplate == 3 && !this.mIsLegacyDevice) {
                i = 4;
            } else if (captureConfig.getTemplateType() != -1 && captureConfig.getTemplateType() != 5) {
                i = -1;
            } else {
                i = 2;
            }
            if (i != -1) {
                builder.setTemplateType(i);
            }
        }

        public /* synthetic */ ListenableFuture lambda$executeCapture$0(List list, int i, TotalCaptureResult totalCaptureResult) {
            return submitConfigsInternal(list, i);
        }

        public /* synthetic */ ListenableFuture lambda$executePreCapture$1(int i, TotalCaptureResult totalCaptureResult) {
            if (Camera2CapturePipeline.isFlashRequired(i, totalCaptureResult)) {
                setTimeout3A(CHECK_3A_WITH_FLASH_TIMEOUT_IN_NS);
            }
            return this.mPipelineSubTask.preCapture(totalCaptureResult);
        }

        public /* synthetic */ ListenableFuture lambda$executePreCapture$3(Boolean bool) {
            if (Boolean.TRUE.equals(bool)) {
                return Camera2CapturePipeline.waitForResult(this.mTimeout3A, this.mScheduler, this.mCameraControl, new C0043x4440ab85(0));
            }
            return Futures.immediateFuture(null);
        }

        public /* synthetic */ Object lambda$submitConfigsInternal$4(CaptureConfig.Builder builder, CallbackToFutureAdapter.Completer completer) {
            builder.addCameraCaptureCallback(new CameraCaptureCallback() { // from class: androidx.camera.camera2.internal.Camera2CapturePipeline.Pipeline.2
                final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;

                public AnonymousClass2(CallbackToFutureAdapter.Completer completer2) {
                    r2 = completer2;
                }

                @Override // androidx.camera.core.impl.CameraCaptureCallback
                public void onCaptureCancelled(int i) {
                    r2.setException(new ImageCaptureException(3, "Capture request is cancelled because camera is closed", null));
                }

                @Override // androidx.camera.core.impl.CameraCaptureCallback
                public void onCaptureCompleted(int i, @NonNull CameraCaptureResult cameraCaptureResult) {
                    r2.set(null);
                }

                @Override // androidx.camera.core.impl.CameraCaptureCallback
                public void onCaptureFailed(int i, @NonNull CameraCaptureFailure cameraCaptureFailure) {
                    r2.setException(new ImageCaptureException(2, "Capture request failed with reason " + cameraCaptureFailure.getReason(), null));
                }
            });
            return "submitStillCapture";
        }

        private void setTimeout3A(long j) {
            this.mTimeout3A = j;
        }

        public void addTask(@NonNull PipelineTask pipelineTask) {
            this.mTasks.add(pipelineTask);
        }

        @NonNull
        public ListenableFuture<List<Void>> executeCapture(@NonNull final List<CaptureConfig> list, final int i) {
            FutureChain transformAsync = FutureChain.from(executePreCapture(i)).transformAsync(new AsyncFunction() { // from class: androidx.camera.camera2.internal.뎨땱듼딃든둔뒬뒨땣된둬딻땵딎딽디땋따땃뒷딐땁된땀땔듨땤둠돠뎽땤돷듽둡돛딨듻뒋딐둣듌뒵듐둑뒾됫듟딌딤될뒨둥듟땬땁뒼땄돴뒙디딐딜들둣땧듬땐딌됨딹땸뒘땪뒝뒻딀땬땡딤듟딁따들돤땝뒼뒙딌딜딨뎹땀딌뎠득땝땔땅돠돛둬뒬뒻돨둡돠땋땯돝돵땔둘됴뒹땲땻땤듬뎬뎡돶땸돳듰땭뒐땪둔듔땬
                @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
                public final ListenableFuture apply(Object obj) {
                    ListenableFuture lambda$executeCapture$0;
                    lambda$executeCapture$0 = Camera2CapturePipeline.Pipeline.this.lambda$executeCapture$0(list, i, (TotalCaptureResult) obj);
                    return lambda$executeCapture$0;
                }
            }, this.mExecutor);
            transformAsync.addListener(new RunnableC0037x1aebc6d9(this, 1), this.mExecutor);
            return transformAsync;
        }

        public void executePostCapture() {
            this.mPipelineSubTask.postCapture();
        }

        @NonNull
        public ListenableFuture<TotalCaptureResult> executePreCapture(final int i) {
            ListenableFuture<TotalCaptureResult> immediateFuture;
            ListenableFuture<TotalCaptureResult> immediateFuture2 = Futures.immediateFuture(null);
            if (!this.mTasks.isEmpty()) {
                if (this.mPipelineSubTask.isCaptureResultNeeded()) {
                    immediateFuture = Camera2CapturePipeline.waitForResult(this.mCameraControl, null);
                } else {
                    immediateFuture = Futures.immediateFuture(null);
                }
                return FutureChain.from(immediateFuture).transformAsync(new AsyncFunction() { // from class: androidx.camera.camera2.internal.뎬돨둬듟듰뒤뒻딐둥둥땅둑뒵디뎹땟땰땳돶듬됩뒨득뎰든뒈돸뒬땦땧땮딅딃땝돼돷땰둘된돝뒬돨땁도듸됐땪땻뒉딌뒤둘뒐뒀땹뒷돵듌될땤듻땠돳뒻땡됫듌딎땍딝둠땰땩땃돛딝딎득돸땬돸디돼땝땣듌딌딐돷될둔땋둬듐듐듨뒙딀뒈땸된딤딸뒼뒝뒈딽땮땐든땻땠땠둘도땜뒻둣땤딤딟듸돴듨딌딞딜뎡된땅
                    @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
                    public final ListenableFuture apply(Object obj) {
                        ListenableFuture lambda$executePreCapture$1;
                        lambda$executePreCapture$1 = Camera2CapturePipeline.Pipeline.this.lambda$executePreCapture$1(i, (TotalCaptureResult) obj);
                        return lambda$executePreCapture$1;
                    }
                }, this.mExecutor).transformAsync(new C0047xec92ba90(this, 2), this.mExecutor);
            }
            return immediateFuture2;
        }

        @NonNull
        public ListenableFuture<List<Void>> submitConfigsInternal(@NonNull List<CaptureConfig> list, int i) {
            CameraCaptureResult cameraCaptureResult;
            ImageProxy dequeueImageFromBuffer;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (CaptureConfig captureConfig : list) {
                CaptureConfig.Builder from = CaptureConfig.Builder.from(captureConfig);
                if (captureConfig.getTemplateType() == 5 && !this.mCameraControl.getZslControl().isZslDisabledByFlashMode() && !this.mCameraControl.getZslControl().isZslDisabledByUserCaseConfig() && (dequeueImageFromBuffer = this.mCameraControl.getZslControl().dequeueImageFromBuffer()) != null && this.mCameraControl.getZslControl().enqueueImageToImageWriter(dequeueImageFromBuffer)) {
                    cameraCaptureResult = CameraCaptureResults.retrieveCameraCaptureResult(dequeueImageFromBuffer.getImageInfo());
                } else {
                    cameraCaptureResult = null;
                }
                if (cameraCaptureResult != null) {
                    from.setCameraCaptureResult(cameraCaptureResult);
                } else {
                    applyStillCaptureTemplate(from, captureConfig);
                }
                if (this.mOverrideAeModeForStillCapture.shouldSetAeModeAlwaysFlash(i)) {
                    applyAeModeQuirk(from);
                }
                arrayList.add(CallbackToFutureAdapter.getFuture(new C0029x9e171bf9(this, from, 1)));
                arrayList2.add(from.build());
            }
            this.mCameraControl.submitCaptureRequestsInternal(arrayList2);
            return Futures.allAsList(arrayList);
        }
    }

    /* loaded from: classes.dex */
    public interface PipelineTask {
        boolean isCaptureResultNeeded();

        void postCapture();

        @NonNull
        ListenableFuture<Boolean> preCapture(@Nullable TotalCaptureResult totalCaptureResult);
    }

    /* loaded from: classes.dex */
    public static class ResultListener implements Camera2CameraControlImpl.CaptureResultListener {
        private final Checker mChecker;
        private CallbackToFutureAdapter.Completer<TotalCaptureResult> mCompleter;
        private final ListenableFuture<TotalCaptureResult> mFuture = CallbackToFutureAdapter.getFuture(new C0039x85f0360e(this, 2));

        /* loaded from: classes.dex */
        public interface Checker {
            boolean check(@NonNull TotalCaptureResult totalCaptureResult);
        }

        public ResultListener(@Nullable Checker checker) {
            this.mChecker = checker;
        }

        public /* synthetic */ Object lambda$new$0(CallbackToFutureAdapter.Completer completer) {
            this.mCompleter = completer;
            return "waitFor3AResult";
        }

        @NonNull
        public ListenableFuture<TotalCaptureResult> getFuture() {
            return this.mFuture;
        }

        @Override // androidx.camera.camera2.internal.Camera2CameraControlImpl.CaptureResultListener
        public boolean onCaptureResult(@NonNull TotalCaptureResult totalCaptureResult) {
            Checker checker = this.mChecker;
            if (checker != null && !checker.check(totalCaptureResult)) {
                return false;
            }
            this.mCompleter.set(totalCaptureResult);
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static class ScreenFlashTask implements PipelineTask {
        private static final long CHECK_3A_WITH_SCREEN_FLASH_TIMEOUT_IN_NS = TimeUnit.SECONDS.toNanos(2);
        private final Camera2CameraControlImpl mCameraControl;
        private final Executor mExecutor;
        private final ScheduledExecutorService mScheduler;
        private final ImageCapture.ScreenFlash mScreenFlash;
        private final UseFlashModeTorchFor3aUpdate mUseFlashModeTorchFor3aUpdate;

        public ScreenFlashTask(@NonNull Camera2CameraControlImpl camera2CameraControlImpl, @NonNull Executor executor, @NonNull ScheduledExecutorService scheduledExecutorService, @NonNull UseFlashModeTorchFor3aUpdate useFlashModeTorchFor3aUpdate) {
            this.mCameraControl = camera2CameraControlImpl;
            this.mExecutor = executor;
            this.mScheduler = scheduledExecutorService;
            this.mUseFlashModeTorchFor3aUpdate = useFlashModeTorchFor3aUpdate;
            ImageCapture.ScreenFlash screenFlash = camera2CameraControlImpl.getScreenFlash();
            Objects.requireNonNull(screenFlash);
            this.mScreenFlash = screenFlash;
        }

        public static /* synthetic */ void lambda$postCapture$12() {
        }

        public static /* synthetic */ void lambda$preCapture$0(CallbackToFutureAdapter.Completer completer) {
            Logger.d(Camera2CapturePipeline.TAG, "ScreenFlashTask#preCapture: UI change applied");
            completer.set(null);
        }

        public static /* synthetic */ Object lambda$preCapture$1(AtomicReference atomicReference, final CallbackToFutureAdapter.Completer completer) {
            atomicReference.set(new ImageCapture.ScreenFlashListener() { // from class: androidx.camera.camera2.internal.뎬딐됨듼듨드뎹땠땁땥딝땐딌들듌뒝땠둬돤됴땵돴돤땋땋딄둑딌뒬땰돤딄땧땄돰뒨둥돠땯뒨뒋뒨땄땲땜듰딨땝돳땬뒉뒼땩딽뒹땩땋딜땜듽땨땪둡딃됩땜뒾뒨땪딅듔땻뒼뒀돠득뒋땸된땳딹딀돼땵뎡뎨땦땋둘돶땯뒛딃듸돷돸든땲땟뒼딟땧듟됫되됐뎨둑뒷뒐뎹땧돳디뒐땬뒋됐따뎠듰뒻땮되듸땫땠둡뒨두
                @Override // androidx.camera.core.ImageCapture.ScreenFlashListener
                public final void onCompleted() {
                    Camera2CapturePipeline.ScreenFlashTask.lambda$preCapture$0(CallbackToFutureAdapter.Completer.this);
                }
            });
            return "OnScreenFlashUiApplied";
        }

        public /* synthetic */ ListenableFuture lambda$preCapture$10(Void r6) {
            return Camera2CapturePipeline.waitForResult(CHECK_3A_WITH_SCREEN_FLASH_TIMEOUT_IN_NS, this.mScheduler, this.mCameraControl, new C0043x4440ab85(1));
        }

        public static /* synthetic */ Boolean lambda$preCapture$11(TotalCaptureResult totalCaptureResult) {
            return Boolean.FALSE;
        }

        public /* synthetic */ void lambda$preCapture$2(AtomicReference atomicReference, CallbackToFutureAdapter.Completer completer) {
            Logger.d(Camera2CapturePipeline.TAG, "ScreenFlashTask#preCapture: invoking applyScreenFlashUi");
            this.mScreenFlash.apply(TimeUnit.SECONDS.toMillis(3L) + System.currentTimeMillis(), (ImageCapture.ScreenFlashListener) atomicReference.get());
            completer.set(null);
        }

        public /* synthetic */ Object lambda$preCapture$3(AtomicReference atomicReference, CallbackToFutureAdapter.Completer completer) {
            CameraXExecutors.mainThreadExecutor().execute(new RunnableC0027x75d576dc(this, atomicReference, completer));
            return "OnScreenFlashStart";
        }

        public /* synthetic */ ListenableFuture lambda$preCapture$4(Void r2) {
            return this.mCameraControl.getFocusMeteringControl().enableExternalFlashAeMode(true);
        }

        public /* synthetic */ Object lambda$preCapture$5(CallbackToFutureAdapter.Completer completer) {
            if (!this.mUseFlashModeTorchFor3aUpdate.shouldUseFlashModeTorch()) {
                completer.set(null);
                return "EnableTorchInternal";
            }
            Logger.d(Camera2CapturePipeline.TAG, "ScreenFlashTask#preCapture: enable torch");
            this.mCameraControl.enableTorchInternal(true);
            completer.set(null);
            return "EnableTorchInternal";
        }

        public /* synthetic */ ListenableFuture lambda$preCapture$6(Void r2) {
            return CallbackToFutureAdapter.getFuture(new C0039x85f0360e(this, 3));
        }

        public /* synthetic */ ListenableFuture lambda$preCapture$7(ListenableFuture listenableFuture, Object obj) {
            return Futures.makeTimeoutFuture(TimeUnit.SECONDS.toMillis(3L), this.mScheduler, null, true, listenableFuture);
        }

        public /* synthetic */ ListenableFuture lambda$preCapture$8(Void r1) {
            return this.mCameraControl.getFocusMeteringControl().triggerAePrecapture();
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public boolean isCaptureResultNeeded() {
            return false;
        }

        /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, java.lang.Runnable] */
        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public void postCapture() {
            Logger.d(Camera2CapturePipeline.TAG, "ScreenFlashTask#postCapture");
            if (this.mUseFlashModeTorchFor3aUpdate.shouldUseFlashModeTorch()) {
                this.mCameraControl.enableTorchInternal(false);
            }
            this.mCameraControl.getFocusMeteringControl().enableExternalFlashAeMode(false).addListener(new Object(), this.mExecutor);
            this.mCameraControl.getFocusMeteringControl().cancelAfAeTrigger(false, true);
            ScheduledExecutorService mainThreadExecutor = CameraXExecutors.mainThreadExecutor();
            ImageCapture.ScreenFlash screenFlash = this.mScreenFlash;
            Objects.requireNonNull(screenFlash);
            mainThreadExecutor.execute(new RunnableC0450xb2a4f6ac(screenFlash, 4));
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        @NonNull
        public ListenableFuture<Boolean> preCapture(@Nullable TotalCaptureResult totalCaptureResult) {
            Logger.d(Camera2CapturePipeline.TAG, "ScreenFlashTask#preCapture");
            AtomicReference atomicReference = new AtomicReference();
            ListenableFuture future = CallbackToFutureAdapter.getFuture(new C0039x85f0360e(atomicReference, 4));
            final int i = 1;
            FutureChain transformAsync = FutureChain.from(CallbackToFutureAdapter.getFuture(new C0029x9e171bf9(this, atomicReference, 2))).transformAsync(new AsyncFunction(this) { // from class: androidx.camera.camera2.internal.뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽

                /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                public final /* synthetic */ Camera2CapturePipeline.ScreenFlashTask f109x3271d0aa;

                {
                    this.f109x3271d0aa = this;
                }

                @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
                public final ListenableFuture apply(Object obj) {
                    ListenableFuture lambda$preCapture$10;
                    ListenableFuture lambda$preCapture$4;
                    ListenableFuture lambda$preCapture$6;
                    ListenableFuture lambda$preCapture$8;
                    switch (i) {
                        case 0:
                            lambda$preCapture$10 = this.f109x3271d0aa.lambda$preCapture$10((Void) obj);
                            return lambda$preCapture$10;
                        case 1:
                            lambda$preCapture$4 = this.f109x3271d0aa.lambda$preCapture$4((Void) obj);
                            return lambda$preCapture$4;
                        case 2:
                            lambda$preCapture$6 = this.f109x3271d0aa.lambda$preCapture$6((Void) obj);
                            return lambda$preCapture$6;
                        default:
                            lambda$preCapture$8 = this.f109x3271d0aa.lambda$preCapture$8((Void) obj);
                            return lambda$preCapture$8;
                    }
                }
            }, this.mExecutor);
            final int i2 = 2;
            final int i3 = 3;
            FutureChain transformAsync2 = transformAsync.transformAsync(new AsyncFunction(this) { // from class: androidx.camera.camera2.internal.뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽

                /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                public final /* synthetic */ Camera2CapturePipeline.ScreenFlashTask f109x3271d0aa;

                {
                    this.f109x3271d0aa = this;
                }

                @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
                public final ListenableFuture apply(Object obj) {
                    ListenableFuture lambda$preCapture$10;
                    ListenableFuture lambda$preCapture$4;
                    ListenableFuture lambda$preCapture$6;
                    ListenableFuture lambda$preCapture$8;
                    switch (i2) {
                        case 0:
                            lambda$preCapture$10 = this.f109x3271d0aa.lambda$preCapture$10((Void) obj);
                            return lambda$preCapture$10;
                        case 1:
                            lambda$preCapture$4 = this.f109x3271d0aa.lambda$preCapture$4((Void) obj);
                            return lambda$preCapture$4;
                        case 2:
                            lambda$preCapture$6 = this.f109x3271d0aa.lambda$preCapture$6((Void) obj);
                            return lambda$preCapture$6;
                        default:
                            lambda$preCapture$8 = this.f109x3271d0aa.lambda$preCapture$8((Void) obj);
                            return lambda$preCapture$8;
                    }
                }
            }, this.mExecutor).transformAsync(new C0035xd2bcb0cf(this, future, 1), this.mExecutor).transformAsync(new AsyncFunction(this) { // from class: androidx.camera.camera2.internal.뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽

                /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                public final /* synthetic */ Camera2CapturePipeline.ScreenFlashTask f109x3271d0aa;

                {
                    this.f109x3271d0aa = this;
                }

                @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
                public final ListenableFuture apply(Object obj) {
                    ListenableFuture lambda$preCapture$10;
                    ListenableFuture lambda$preCapture$4;
                    ListenableFuture lambda$preCapture$6;
                    ListenableFuture lambda$preCapture$8;
                    switch (i3) {
                        case 0:
                            lambda$preCapture$10 = this.f109x3271d0aa.lambda$preCapture$10((Void) obj);
                            return lambda$preCapture$10;
                        case 1:
                            lambda$preCapture$4 = this.f109x3271d0aa.lambda$preCapture$4((Void) obj);
                            return lambda$preCapture$4;
                        case 2:
                            lambda$preCapture$6 = this.f109x3271d0aa.lambda$preCapture$6((Void) obj);
                            return lambda$preCapture$6;
                        default:
                            lambda$preCapture$8 = this.f109x3271d0aa.lambda$preCapture$8((Void) obj);
                            return lambda$preCapture$8;
                    }
                }
            }, this.mExecutor);
            final int i4 = 0;
            return transformAsync2.transformAsync(new AsyncFunction(this) { // from class: androidx.camera.camera2.internal.뎬뒐듨땧뒾땹됐따딤뎬딎땔딠돵땩딎딟듌됨듟듔둔땐땋땰땜땪디뒹듬땝땵땵땠뒹둡땡땠둠뒝뒻땦땝뒀뎸뒨돝둥뒋딀된됐땲땄듌딟디두딹듽뒐땦둠드뒷땹땝땠듻땻듸둘뎬돵뒾땭딜돠돼땭뒛돠듼뒉둣땁땯딟딞땀땜땄딃됴딞땣듨땁뎨됫돴됨돨땬됫땄뒛뒹땩땫딀땥뒘됩땱땜딄뒹듸뒾땐둠뒈돰딄땋도딽둡듽

                /* renamed from: 뎠딎딃듼뒉됨뎹땨듻땀딝땦뒬돰돷땩득딞든둣듼돸됐땃둠딜딸뒵들돴듰땃득땋뎠돸딤땀딝뎹딨두땨뒷딎딎딐뒀뎬듰딜땭듔듨돴듼둥득뎹돶들드뎻딁둘됐돨둠뒈땅돨땜딝들딀둑뒹뎹두땬듐돶듬땬도뎸둠둠뒨됐땝딎딀땸땪득뒵땬뒐땰땝뒵땲듬듽돵뒀땋뒬땳뒋듰땟돰되땋둔땱듔땀땣되뒘돼뒻딁둥뒘된땫, reason: contains not printable characters */
                public final /* synthetic */ Camera2CapturePipeline.ScreenFlashTask f109x3271d0aa;

                {
                    this.f109x3271d0aa = this;
                }

                @Override // androidx.camera.core.impl.utils.futures.AsyncFunction
                public final ListenableFuture apply(Object obj) {
                    ListenableFuture lambda$preCapture$10;
                    ListenableFuture lambda$preCapture$4;
                    ListenableFuture lambda$preCapture$6;
                    ListenableFuture lambda$preCapture$8;
                    switch (i4) {
                        case 0:
                            lambda$preCapture$10 = this.f109x3271d0aa.lambda$preCapture$10((Void) obj);
                            return lambda$preCapture$10;
                        case 1:
                            lambda$preCapture$4 = this.f109x3271d0aa.lambda$preCapture$4((Void) obj);
                            return lambda$preCapture$4;
                        case 2:
                            lambda$preCapture$6 = this.f109x3271d0aa.lambda$preCapture$6((Void) obj);
                            return lambda$preCapture$6;
                        default:
                            lambda$preCapture$8 = this.f109x3271d0aa.lambda$preCapture$8((Void) obj);
                            return lambda$preCapture$8;
                    }
                }
            }, this.mExecutor).transform(new C0040xad53da1a(3), CameraXExecutors.directExecutor());
        }
    }

    /* loaded from: classes.dex */
    public static class TorchTask implements PipelineTask {
        private static final long CHECK_3A_WITH_TORCH_TIMEOUT_IN_NS = TimeUnit.SECONDS.toNanos(2);
        private final Camera2CameraControlImpl mCameraControl;
        private final Executor mExecutor;
        private final int mFlashMode;
        private boolean mIsExecuted = false;
        private final ScheduledExecutorService mScheduler;
        private final boolean mTriggerAePrecapture;

        public TorchTask(@NonNull Camera2CameraControlImpl camera2CameraControlImpl, int i, @NonNull Executor executor, ScheduledExecutorService scheduledExecutorService, boolean z) {
            this.mCameraControl = camera2CameraControlImpl;
            this.mFlashMode = i;
            this.mExecutor = executor;
            this.mScheduler = scheduledExecutorService;
            this.mTriggerAePrecapture = z;
        }

        public /* synthetic */ Object lambda$preCapture$0(CallbackToFutureAdapter.Completer completer) {
            this.mCameraControl.getTorchControl().lambda$enableTorch$1(completer, true);
            return "TorchOn";
        }

        public /* synthetic */ ListenableFuture lambda$preCapture$1(Void r1) {
            if (this.mTriggerAePrecapture) {
                return this.mCameraControl.getFocusMeteringControl().triggerAePrecapture();
            }
            return Futures.immediateFuture(null);
        }

        public /* synthetic */ ListenableFuture lambda$preCapture$3(Void r6) {
            return Camera2CapturePipeline.waitForResult(CHECK_3A_WITH_TORCH_TIMEOUT_IN_NS, this.mScheduler, this.mCameraControl, new C0043x4440ab85(2));
        }

        public static /* synthetic */ Boolean lambda$preCapture$4(TotalCaptureResult totalCaptureResult) {
            return Boolean.FALSE;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public boolean isCaptureResultNeeded() {
            if (this.mFlashMode == 0) {
                return true;
            }
            return false;
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        public void postCapture() {
            if (this.mIsExecuted) {
                this.mCameraControl.getTorchControl().lambda$enableTorch$1(null, false);
                Logger.d(Camera2CapturePipeline.TAG, "Turning off torch");
                if (this.mTriggerAePrecapture) {
                    this.mCameraControl.getFocusMeteringControl().cancelAfAeTrigger(false, true);
                }
            }
        }

        @Override // androidx.camera.camera2.internal.Camera2CapturePipeline.PipelineTask
        @NonNull
        public ListenableFuture<Boolean> preCapture(@Nullable TotalCaptureResult totalCaptureResult) {
            Logger.d(Camera2CapturePipeline.TAG, "TorchTask#preCapture: isFlashRequired = " + Camera2CapturePipeline.isFlashRequired(this.mFlashMode, totalCaptureResult));
            if (Camera2CapturePipeline.isFlashRequired(this.mFlashMode, totalCaptureResult)) {
                if (this.mCameraControl.isTorchOn()) {
                    Logger.d(Camera2CapturePipeline.TAG, "Torch already on, not turn on");
                } else {
                    Logger.d(Camera2CapturePipeline.TAG, "Turn on torch");
                    this.mIsExecuted = true;
                    return FutureChain.from(CallbackToFutureAdapter.getFuture(new C0039x85f0360e(this, 5))).transformAsync(new C0047xec92ba90(this, 0), this.mExecutor).transformAsync(new C0047xec92ba90(this, 1), this.mExecutor).transform(new C0040xad53da1a(4), CameraXExecutors.directExecutor());
                }
            }
            return Futures.immediateFuture(Boolean.FALSE);
        }
    }

    public Camera2CapturePipeline(@NonNull Camera2CameraControlImpl camera2CameraControlImpl, @NonNull CameraCharacteristicsCompat cameraCharacteristicsCompat, @NonNull Quirks quirks, @NonNull Executor executor, @NonNull ScheduledExecutorService scheduledExecutorService) {
        this.mCameraControl = camera2CameraControlImpl;
        Integer num = (Integer) cameraCharacteristicsCompat.get(CameraCharacteristics.INFO_SUPPORTED_HARDWARE_LEVEL);
        this.mIsLegacyDevice = num != null && num.intValue() == 2;
        this.mExecutor = executor;
        this.mScheduler = scheduledExecutorService;
        this.mCameraQuirk = quirks;
        this.mUseTorchAsFlash = new UseTorchAsFlash(quirks);
        this.mHasFlashUnit = FlashAvailabilityChecker.isFlashAvailable(new C0419x35cc9f53(cameraCharacteristicsCompat, 4));
    }

    public static boolean is3AConverged(@Nullable TotalCaptureResult totalCaptureResult, boolean z) {
        if (totalCaptureResult == null) {
            return false;
        }
        return ConvergenceUtils.is3AConverged(new Camera2CameraCaptureResult(totalCaptureResult), z);
    }

    public static boolean isFlashRequired(int i, @Nullable TotalCaptureResult totalCaptureResult) {
        Integer num;
        Logger.d(TAG, "isFlashRequired: flashMode = " + i);
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return false;
                }
                if (i != 3) {
                    throw new AssertionError(i);
                }
            }
            return true;
        }
        if (totalCaptureResult != null) {
            num = (Integer) totalCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
        } else {
            num = null;
        }
        Logger.d(TAG, "isFlashRequired: aeState = " + num);
        if (num == null || num.intValue() != 4) {
            return false;
        }
        return true;
    }

    private boolean isTorchAsFlash(int i) {
        if (this.mUseTorchAsFlash.shouldUseTorchAsFlash() || this.mTemplate == 3 || i == 1) {
            return true;
        }
        return false;
    }

    @NonNull
    public static ListenableFuture<TotalCaptureResult> waitForResult(long j, @NonNull ScheduledExecutorService scheduledExecutorService, @NonNull Camera2CameraControlImpl camera2CameraControlImpl, @Nullable ResultListener.Checker checker) {
        return Futures.makeTimeoutFuture(TimeUnit.NANOSECONDS.toMillis(j), scheduledExecutorService, null, true, waitForResult(camera2CameraControlImpl, checker));
    }

    @VisibleForTesting
    public Pipeline createPipeline(int i, int i2, int i3) {
        boolean z;
        OverrideAeModeForStillCapture overrideAeModeForStillCapture = new OverrideAeModeForStillCapture(this.mCameraQuirk);
        Pipeline pipeline = new Pipeline(this.mTemplate, this.mExecutor, this.mScheduler, this.mCameraControl, this.mIsLegacyDevice, overrideAeModeForStillCapture);
        if (i == 0) {
            pipeline.addTask(new AfTask(this.mCameraControl));
        }
        if (i2 == 3) {
            pipeline.addTask(new ScreenFlashTask(this.mCameraControl, this.mExecutor, this.mScheduler, new UseFlashModeTorchFor3aUpdate(this.mCameraQuirk)));
        } else if (this.mHasFlashUnit) {
            if (isTorchAsFlash(i3)) {
                if (!this.mUseTorchAsFlash.shouldUseTorchAsFlash() && !this.mCameraControl.isInVideoUsage()) {
                    z = true;
                } else {
                    z = false;
                }
                pipeline.addTask(new TorchTask(this.mCameraControl, i2, this.mExecutor, this.mScheduler, z));
            } else {
                pipeline.addTask(new AePreCaptureTask(this.mCameraControl, i2, overrideAeModeForStillCapture));
            }
        }
        StringBuilder m2937x8c6fc18a = AbstractC0362x4440ab85.m2937x8c6fc18a(i, i2, "createPipeline: captureMode = ", ", flashMode = ", ", flashType = ");
        m2937x8c6fc18a.append(i3);
        m2937x8c6fc18a.append(", pipeline tasks = ");
        m2937x8c6fc18a.append(pipeline.mTasks);
        Logger.d(TAG, m2937x8c6fc18a.toString());
        return pipeline;
    }

    @NonNull
    public CameraCapturePipeline getCameraCapturePipeline(int i, int i2, int i3) {
        return new CameraCapturePipelineImpl(createPipeline(i, i2, i3), this.mExecutor, i2);
    }

    public void setTemplate(int i) {
        this.mTemplate = i;
    }

    @NonNull
    public ListenableFuture<List<Void>> submitStillCaptures(@NonNull List<CaptureConfig> list, int i, int i2, int i3) {
        return Futures.nonCancellationPropagating(createPipeline(i, i2, i3).executeCapture(list, i2));
    }

    @NonNull
    public static ListenableFuture<TotalCaptureResult> waitForResult(@NonNull Camera2CameraControlImpl camera2CameraControlImpl, @Nullable ResultListener.Checker checker) {
        ResultListener resultListener = new ResultListener(checker);
        camera2CameraControlImpl.addCaptureResultListener(resultListener);
        ListenableFuture<TotalCaptureResult> future = resultListener.getFuture();
        future.addListener(new RunnableC0026x1378447b(camera2CameraControlImpl, resultListener, 4), camera2CameraControlImpl.mExecutor);
        return future;
    }
}
