package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.arch.core.util.Function;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.SynchronizedCaptureSession;
import androidx.camera.camera2.internal.compat.params.DynamicRangesCompat;
import androidx.camera.camera2.internal.compat.quirk.CaptureSessionShouldUseMrirQuirk;
import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.camera2.interop.ExperimentalCamera2Interop;
import androidx.camera.core.ImageAnalysis;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.Logger;
import androidx.camera.core.Preview;
import androidx.camera.core.impl.CameraCaptureCallback;
import androidx.camera.core.impl.CameraCaptureFailure;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.DeferrableSurfaces;
import androidx.camera.core.impl.OutputSurface;
import androidx.camera.core.impl.OutputSurfaceConfiguration;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.SessionProcessor;
import androidx.camera.core.impl.SessionProcessorSurface;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC1064x6e5ec593;
import defpackage.AbstractC1142x175ff0e1;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

@OptIn(markerClass = {ExperimentalCamera2Interop.class})
/* loaded from: classes.dex */
public final class ProcessingCaptureSession implements CaptureSessionInterface {
    private static final String TAG = "ProcessingCaptureSession";
    private static final long TIMEOUT_GET_SURFACE_IN_MS = 5000;
    private static List<DeferrableSurface> sHeldProcessorSurfaces = new ArrayList();
    private static int sNextInstanceId = 0;
    private final Camera2CameraInfoImpl mCamera2CameraInfoImpl;
    private final CaptureSession mCaptureSession;
    final Executor mExecutor;
    private int mInstanceId;

    @Nullable
    private SessionConfig mProcessorSessionConfig;
    private ProcessorState mProcessorState;

    @Nullable
    private Camera2RequestProcessor mRequestProcessor;
    private final ScheduledExecutorService mScheduledExecutorService;

    @Nullable
    private SessionConfig mSessionConfig;
    private final SessionProcessor mSessionProcessor;
    private final SessionProcessorCaptureCallback mSessionProcessorCaptureCallback;
    private List<DeferrableSurface> mOutputSurfaces = new ArrayList();

    @Nullable
    private volatile List<CaptureConfig> mPendingCaptureConfigs = null;
    private CaptureRequestOptions mSessionOptions = new CaptureRequestOptions.Builder().build();
    private CaptureRequestOptions mStillCaptureOptions = new CaptureRequestOptions.Builder().build();

    /* renamed from: androidx.camera.camera2.internal.ProcessingCaptureSession$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements FutureCallback<Void> {
        public AnonymousClass1() {
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
            Logger.e(ProcessingCaptureSession.TAG, "open session failed ", th);
            ProcessingCaptureSession.this.close();
            ProcessingCaptureSession.this.release(false);
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(@Nullable Void r1) {
        }
    }

    /* loaded from: classes.dex */
    public static class CaptureCallbackAdapter implements SessionProcessor.CaptureCallback {
        private List<CameraCaptureCallback> mCameraCaptureCallbacks;
        private final int mCaptureConfigId;
        private CameraCaptureResult mCaptureResult;

        public /* synthetic */ CaptureCallbackAdapter(int i, List list, AnonymousClass1 anonymousClass1) {
            this(i, list);
        }

        @Override // androidx.camera.core.impl.SessionProcessor.CaptureCallback
        public void onCaptureCompleted(long j, int i, @NonNull CameraCaptureResult cameraCaptureResult) {
            this.mCaptureResult = cameraCaptureResult;
        }

        @Override // androidx.camera.core.impl.SessionProcessor.CaptureCallback
        public void onCaptureFailed(int i) {
            Iterator<CameraCaptureCallback> it = this.mCameraCaptureCallbacks.iterator();
            while (it.hasNext()) {
                it.next().onCaptureFailed(this.mCaptureConfigId, new CameraCaptureFailure(CameraCaptureFailure.Reason.ERROR));
            }
        }

        @Override // androidx.camera.core.impl.SessionProcessor.CaptureCallback
        public void onCaptureProcessProgressed(int i) {
            Iterator<CameraCaptureCallback> it = this.mCameraCaptureCallbacks.iterator();
            while (it.hasNext()) {
                it.next().onCaptureProcessProgressed(this.mCaptureConfigId, i);
            }
        }

        @Override // androidx.camera.core.impl.SessionProcessor.CaptureCallback
        public final /* synthetic */ void onCaptureProcessStarted(int i) {
            AbstractC1142x175ff0e1.m3815x75d576dc(this, i);
        }

        @Override // androidx.camera.core.impl.SessionProcessor.CaptureCallback
        public final /* synthetic */ void onCaptureSequenceAborted(int i) {
            AbstractC1142x175ff0e1.m3816x9738a56c(this, i);
        }

        @Override // androidx.camera.core.impl.SessionProcessor.CaptureCallback
        public void onCaptureSequenceCompleted(int i) {
            CameraCaptureResult cameraCaptureResult = this.mCaptureResult;
            if (cameraCaptureResult == null) {
                cameraCaptureResult = new CameraCaptureResult.EmptyCameraCaptureResult();
            }
            Iterator<CameraCaptureCallback> it = this.mCameraCaptureCallbacks.iterator();
            while (it.hasNext()) {
                it.next().onCaptureCompleted(this.mCaptureConfigId, cameraCaptureResult);
            }
        }

        @Override // androidx.camera.core.impl.SessionProcessor.CaptureCallback
        public void onCaptureStarted(int i, long j) {
            Iterator<CameraCaptureCallback> it = this.mCameraCaptureCallbacks.iterator();
            while (it.hasNext()) {
                it.next().onCaptureStarted(this.mCaptureConfigId);
            }
        }

        private CaptureCallbackAdapter(int i, List<CameraCaptureCallback> list) {
            this.mCaptureResult = null;
            this.mCaptureConfigId = i;
            this.mCameraCaptureCallbacks = list;
        }
    }

    /* loaded from: classes.dex */
    public enum ProcessorState {
        UNINITIALIZED,
        SESSION_INITIALIZED,
        ON_CAPTURE_SESSION_STARTED,
        ON_CAPTURE_SESSION_ENDED,
        DE_INITIALIZED
    }

    /* loaded from: classes.dex */
    public static class SessionProcessorCaptureCallback implements SessionProcessor.CaptureCallback {
        @Override // androidx.camera.core.impl.SessionProcessor.CaptureCallback
        public void onCaptureCompleted(long j, int i, @NonNull CameraCaptureResult cameraCaptureResult) {
        }

        @Override // androidx.camera.core.impl.SessionProcessor.CaptureCallback
        public void onCaptureFailed(int i) {
        }

        @Override // androidx.camera.core.impl.SessionProcessor.CaptureCallback
        public final /* synthetic */ void onCaptureProcessProgressed(int i) {
            AbstractC1142x175ff0e1.m3814x1378447b(this, i);
        }

        @Override // androidx.camera.core.impl.SessionProcessor.CaptureCallback
        public void onCaptureProcessStarted(int i) {
        }

        @Override // androidx.camera.core.impl.SessionProcessor.CaptureCallback
        public void onCaptureSequenceAborted(int i) {
        }

        @Override // androidx.camera.core.impl.SessionProcessor.CaptureCallback
        public void onCaptureSequenceCompleted(int i) {
        }

        @Override // androidx.camera.core.impl.SessionProcessor.CaptureCallback
        public void onCaptureStarted(int i, long j) {
        }
    }

    public ProcessingCaptureSession(@NonNull SessionProcessor sessionProcessor, @NonNull Camera2CameraInfoImpl camera2CameraInfoImpl, @NonNull DynamicRangesCompat dynamicRangesCompat, @NonNull Executor executor, @NonNull ScheduledExecutorService scheduledExecutorService) {
        this.mInstanceId = 0;
        this.mCaptureSession = new CaptureSession(dynamicRangesCompat, DeviceQuirks.get(CaptureSessionShouldUseMrirQuirk.class) != null);
        this.mSessionProcessor = sessionProcessor;
        this.mCamera2CameraInfoImpl = camera2CameraInfoImpl;
        this.mExecutor = executor;
        this.mScheduledExecutorService = scheduledExecutorService;
        this.mProcessorState = ProcessorState.UNINITIALIZED;
        this.mSessionProcessorCaptureCallback = new SessionProcessorCaptureCallback();
        int i = sNextInstanceId;
        sNextInstanceId = i + 1;
        this.mInstanceId = i;
        Logger.d(TAG, "New ProcessingCaptureSession (id=" + this.mInstanceId + ")");
    }

    private static void cancelRequests(@NonNull List<CaptureConfig> list) {
        for (CaptureConfig captureConfig : list) {
            Iterator<CameraCaptureCallback> it = captureConfig.getCameraCaptureCallbacks().iterator();
            while (it.hasNext()) {
                it.next().onCaptureCancelled(captureConfig.getId());
            }
        }
    }

    private static List<SessionProcessorSurface> getSessionProcessorSurfaceList(List<DeferrableSurface> list) {
        ArrayList arrayList = new ArrayList();
        for (DeferrableSurface deferrableSurface : list) {
            Preconditions.checkArgument(deferrableSurface instanceof SessionProcessorSurface, "Surface must be SessionProcessorSurface");
            arrayList.add((SessionProcessorSurface) deferrableSurface);
        }
        return arrayList;
    }

    private static boolean hasPreviewSurface(@NonNull CaptureConfig captureConfig) {
        for (DeferrableSurface deferrableSurface : captureConfig.getSurfaces()) {
            if (isPreview(deferrableSurface) || isStreamSharing(deferrableSurface)) {
                return true;
            }
        }
        return false;
    }

    private static boolean isImageAnalysis(@NonNull DeferrableSurface deferrableSurface) {
        return Objects.equals(deferrableSurface.getContainerClass(), ImageAnalysis.class);
    }

    private static boolean isImageCapture(@NonNull DeferrableSurface deferrableSurface) {
        return Objects.equals(deferrableSurface.getContainerClass(), ImageCapture.class);
    }

    private static boolean isPreview(@NonNull DeferrableSurface deferrableSurface) {
        return Objects.equals(deferrableSurface.getContainerClass(), Preview.class);
    }

    private static boolean isStreamSharing(@NonNull DeferrableSurface deferrableSurface) {
        return Objects.equals(deferrableSurface.getContainerClass(), StreamSharing.class);
    }

    private boolean isTemplateTypeForStillCapture(int i) {
        return i == 2 || i == 4;
    }

    public /* synthetic */ void lambda$open$0(DeferrableSurface deferrableSurface) {
        DeferrableSurfaces.decrementAll(this.mOutputSurfaces);
        if (deferrableSurface != null) {
            deferrableSurface.decrementUseCount();
        }
    }

    public static /* synthetic */ void lambda$open$1(DeferrableSurface deferrableSurface) {
        sHeldProcessorSurfaces.remove(deferrableSurface);
    }

    public /* synthetic */ ListenableFuture lambda$open$2(SessionConfig sessionConfig, CameraDevice cameraDevice, SynchronizedCaptureSession.Opener opener, List list) {
        OutputSurface outputSurface;
        Logger.d(TAG, "-- getSurfaces done, start init (id=" + this.mInstanceId + ")");
        if (this.mProcessorState == ProcessorState.DE_INITIALIZED) {
            return Futures.immediateFailedFuture(new IllegalStateException("SessionProcessorCaptureSession is closed."));
        }
        DeferrableSurface deferrableSurface = null;
        if (list.contains(null)) {
            return Futures.immediateFailedFuture(new DeferrableSurface.SurfaceClosedException("Surface closed", sessionConfig.getSurfaces().get(list.indexOf(null))));
        }
        OutputSurface outputSurface2 = null;
        OutputSurface outputSurface3 = null;
        OutputSurface outputSurface4 = null;
        for (int i = 0; i < sessionConfig.getSurfaces().size(); i++) {
            DeferrableSurface deferrableSurface2 = sessionConfig.getSurfaces().get(i);
            if (!isPreview(deferrableSurface2) && !isStreamSharing(deferrableSurface2)) {
                if (isImageCapture(deferrableSurface2)) {
                    outputSurface3 = OutputSurface.create(deferrableSurface2.getSurface().get(), deferrableSurface2.getPrescribedSize(), deferrableSurface2.getPrescribedStreamFormat());
                } else if (isImageAnalysis(deferrableSurface2)) {
                    outputSurface4 = OutputSurface.create(deferrableSurface2.getSurface().get(), deferrableSurface2.getPrescribedSize(), deferrableSurface2.getPrescribedStreamFormat());
                }
            } else {
                outputSurface2 = OutputSurface.create(deferrableSurface2.getSurface().get(), deferrableSurface2.getPrescribedSize(), deferrableSurface2.getPrescribedStreamFormat());
            }
        }
        if (sessionConfig.getPostviewOutputConfig() != null) {
            deferrableSurface = sessionConfig.getPostviewOutputConfig().getSurface();
            outputSurface = OutputSurface.create(deferrableSurface.getSurface().get(), deferrableSurface.getPrescribedSize(), deferrableSurface.getPrescribedStreamFormat());
        } else {
            outputSurface = null;
        }
        this.mProcessorState = ProcessorState.SESSION_INITIALIZED;
        try {
            ArrayList arrayList = new ArrayList(this.mOutputSurfaces);
            if (deferrableSurface != null) {
                arrayList.add(deferrableSurface);
            }
            DeferrableSurfaces.incrementAll(arrayList);
            Logger.w(TAG, "== initSession (id=" + this.mInstanceId + ")");
            try {
                SessionConfig initSession = this.mSessionProcessor.initSession(this.mCamera2CameraInfoImpl, OutputSurfaceConfiguration.create(outputSurface2, outputSurface3, outputSurface4, outputSurface));
                this.mProcessorSessionConfig = initSession;
                initSession.getSurfaces().get(0).getTerminationFuture().addListener(new RunnableC0026x1378447b(this, deferrableSurface, 5), CameraXExecutors.directExecutor());
                for (DeferrableSurface deferrableSurface3 : this.mProcessorSessionConfig.getSurfaces()) {
                    sHeldProcessorSurfaces.add(deferrableSurface3);
                    deferrableSurface3.getTerminationFuture().addListener(new RunnableC0037x1aebc6d9(deferrableSurface3, 5), this.mExecutor);
                }
                SessionConfig.ValidatingBuilder validatingBuilder = new SessionConfig.ValidatingBuilder();
                validatingBuilder.add(sessionConfig);
                validatingBuilder.clearSurfaces();
                validatingBuilder.add(this.mProcessorSessionConfig);
                Preconditions.checkArgument(validatingBuilder.isValid(), "Cannot transform the SessionConfig");
                ListenableFuture<Void> open = this.mCaptureSession.open(validatingBuilder.build(), (CameraDevice) Preconditions.checkNotNull(cameraDevice), opener);
                Futures.addCallback(open, new FutureCallback<Void>() { // from class: androidx.camera.camera2.internal.ProcessingCaptureSession.1
                    public AnonymousClass1() {
                    }

                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public void onFailure(@NonNull Throwable th) {
                        Logger.e(ProcessingCaptureSession.TAG, "open session failed ", th);
                        ProcessingCaptureSession.this.close();
                        ProcessingCaptureSession.this.release(false);
                    }

                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public void onSuccess(@Nullable Void r1) {
                    }
                }, this.mExecutor);
                return open;
            } catch (Throwable th) {
                Logger.e(TAG, "initSession failed", th);
                DeferrableSurfaces.decrementAll(this.mOutputSurfaces);
                if (deferrableSurface != null) {
                    deferrableSurface.decrementUseCount();
                }
                throw th;
            }
        } catch (DeferrableSurface.SurfaceClosedException e) {
            return Futures.immediateFailedFuture(e);
        }
    }

    public /* synthetic */ Void lambda$open$3(Void r1) {
        onConfigured(this.mCaptureSession);
        return null;
    }

    public /* synthetic */ void lambda$release$4() {
        Logger.d(TAG, "== deInitSession (id=" + this.mInstanceId + ")");
        this.mSessionProcessor.deInitSession();
    }

    private void updateParameters(@NonNull CaptureRequestOptions captureRequestOptions, @NonNull CaptureRequestOptions captureRequestOptions2) {
        Camera2ImplConfig.Builder builder = new Camera2ImplConfig.Builder();
        builder.insertAllOptions(captureRequestOptions);
        builder.insertAllOptions(captureRequestOptions2);
        this.mSessionProcessor.setParameters(builder.build());
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public void cancelIssuedCaptureRequests() {
        Logger.d(TAG, "cancelIssuedCaptureRequests (id=" + this.mInstanceId + ")");
        if (this.mPendingCaptureConfigs != null) {
            for (CaptureConfig captureConfig : this.mPendingCaptureConfigs) {
                Iterator<CameraCaptureCallback> it = captureConfig.getCameraCaptureCallbacks().iterator();
                while (it.hasNext()) {
                    it.next().onCaptureCancelled(captureConfig.getId());
                }
            }
            this.mPendingCaptureConfigs = null;
        }
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public void close() {
        Logger.d(TAG, "close (id=" + this.mInstanceId + ") state=" + this.mProcessorState);
        if (this.mProcessorState == ProcessorState.ON_CAPTURE_SESSION_STARTED) {
            Logger.d(TAG, "== onCaptureSessionEnd (id = " + this.mInstanceId + ")");
            this.mSessionProcessor.onCaptureSessionEnd();
            Camera2RequestProcessor camera2RequestProcessor = this.mRequestProcessor;
            if (camera2RequestProcessor != null) {
                camera2RequestProcessor.close();
            }
            this.mProcessorState = ProcessorState.ON_CAPTURE_SESSION_ENDED;
        }
        this.mCaptureSession.close();
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    @NonNull
    public List<CaptureConfig> getCaptureConfigs() {
        if (this.mPendingCaptureConfigs != null) {
            return this.mPendingCaptureConfigs;
        }
        return Collections.emptyList();
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    @Nullable
    public SessionConfig getSessionConfig() {
        return this.mSessionConfig;
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public boolean isInOpenState() {
        return this.mCaptureSession.isInOpenState();
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public void issueCaptureRequests(@NonNull List<CaptureConfig> list) {
        if (list.isEmpty()) {
            return;
        }
        Logger.d(TAG, "issueCaptureRequests (id=" + this.mInstanceId + ") + state =" + this.mProcessorState);
        int ordinal = this.mProcessorState.ordinal();
        if (ordinal != 0 && ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal == 3 || ordinal == 4) {
                    Logger.d(TAG, "Run issueCaptureRequests in wrong state, state = " + this.mProcessorState);
                    cancelRequests(list);
                    return;
                }
                return;
            }
            for (CaptureConfig captureConfig : list) {
                if (isTemplateTypeForStillCapture(captureConfig.getTemplateType())) {
                    issueStillCaptureRequest(captureConfig);
                } else {
                    issueTriggerRequest(captureConfig);
                }
            }
            return;
        }
        if (this.mPendingCaptureConfigs != null) {
            cancelRequests(list);
            Logger.d(TAG, "cancel the request because are pending un-submitted request");
        } else {
            this.mPendingCaptureConfigs = list;
        }
    }

    public void issueStillCaptureRequest(@NonNull CaptureConfig captureConfig) {
        CaptureRequestOptions.Builder from = CaptureRequestOptions.Builder.from(captureConfig.getImplementationOptions());
        Config implementationOptions = captureConfig.getImplementationOptions();
        Config.Option<Integer> option = CaptureConfig.OPTION_ROTATION;
        if (implementationOptions.containsOption(option)) {
            from.setCaptureRequestOption(CaptureRequest.JPEG_ORIENTATION, (Integer) captureConfig.getImplementationOptions().retrieveOption(option));
        }
        Config implementationOptions2 = captureConfig.getImplementationOptions();
        Config.Option<Integer> option2 = CaptureConfig.OPTION_JPEG_QUALITY;
        if (implementationOptions2.containsOption(option2)) {
            from.setCaptureRequestOption(CaptureRequest.JPEG_QUALITY, Byte.valueOf(((Integer) captureConfig.getImplementationOptions().retrieveOption(option2)).byteValue()));
        }
        CaptureRequestOptions build = from.build();
        this.mStillCaptureOptions = build;
        updateParameters(this.mSessionOptions, build);
        this.mSessionProcessor.startCapture(captureConfig.isPostviewEnabled(), captureConfig.getTagBundle(), new CaptureCallbackAdapter(captureConfig.getId(), captureConfig.getCameraCaptureCallbacks()));
    }

    public void issueTriggerRequest(@NonNull CaptureConfig captureConfig) {
        Logger.d(TAG, "issueTriggerRequest");
        CaptureRequestOptions build = CaptureRequestOptions.Builder.from(captureConfig.getImplementationOptions()).build();
        build.getClass();
        Iterator it = AbstractC1064x6e5ec593.m3778x9738a56c(build).iterator();
        while (it.hasNext()) {
            CaptureRequest.Key key = (CaptureRequest.Key) ((Config.Option) it.next()).getToken();
            if (key.equals(CaptureRequest.CONTROL_AF_TRIGGER) || key.equals(CaptureRequest.CONTROL_AE_PRECAPTURE_TRIGGER)) {
                this.mSessionProcessor.startTrigger(build, captureConfig.getTagBundle(), new CaptureCallbackAdapter(captureConfig.getId(), captureConfig.getCameraCaptureCallbacks()));
                return;
            }
        }
        cancelRequests(Arrays.asList(captureConfig));
    }

    public void onConfigured(@NonNull CaptureSession captureSession) {
        if (this.mProcessorState != ProcessorState.SESSION_INITIALIZED) {
            return;
        }
        this.mRequestProcessor = new Camera2RequestProcessor(captureSession, getSessionProcessorSurfaceList(this.mProcessorSessionConfig.getSurfaces()));
        Logger.d(TAG, "== onCaptureSessinStarted (id = " + this.mInstanceId + ")");
        this.mSessionProcessor.onCaptureSessionStart(this.mRequestProcessor);
        this.mProcessorState = ProcessorState.ON_CAPTURE_SESSION_STARTED;
        SessionConfig sessionConfig = this.mSessionConfig;
        if (sessionConfig != null) {
            setSessionConfig(sessionConfig);
        }
        if (this.mPendingCaptureConfigs != null) {
            issueCaptureRequests(this.mPendingCaptureConfigs);
            this.mPendingCaptureConfigs = null;
        }
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    @NonNull
    public ListenableFuture<Void> open(@NonNull SessionConfig sessionConfig, @NonNull CameraDevice cameraDevice, @NonNull SynchronizedCaptureSession.Opener opener) {
        boolean z;
        if (this.mProcessorState == ProcessorState.UNINITIALIZED) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "Invalid state state:" + this.mProcessorState);
        Preconditions.checkArgument(sessionConfig.getSurfaces().isEmpty() ^ true, "SessionConfig contains no surfaces");
        Logger.d(TAG, "open (id=" + this.mInstanceId + ")");
        List<DeferrableSurface> surfaces = sessionConfig.getSurfaces();
        this.mOutputSurfaces = surfaces;
        return FutureChain.from(DeferrableSurfaces.surfaceListWithTimeout(surfaces, false, 5000L, this.mExecutor, this.mScheduledExecutorService)).transformAsync(new C0062x16164b23(this, sessionConfig, cameraDevice, opener), this.mExecutor).transform(new Function() { // from class: androidx.camera.camera2.internal.뎹돠듰뎽돼땃딄따듨뎬땻딽뎡듽딸뒝둡따땦돝딟뒉딸딞디듻뎬딨딅뒀딹됩돷뒤득딹뒻땔딀될딠딨듰땯뎽땦땄땄뒻뒀뎠뎹딻돷땦뒈뒷땭뎻뒾뒝땲땦뒛땍딐듌돳됩땫따땱땥듨딀뒹뒋되땀딜듬땁땸딜든듬뒝딅두땜뒈되땤됴땦돷뒻듰땡땧땮뒈든둣딌뒉돰딐뎰땹디득뒨딤땍듨뎻뒹됩땜돛되뒼땧뎹딜뎨뎨뒤딞
            @Override // androidx.arch.core.util.Function
            public final Object apply(Object obj) {
                Void lambda$open$3;
                lambda$open$3 = ProcessingCaptureSession.this.lambda$open$3((Void) obj);
                return lambda$open$3;
            }
        }, this.mExecutor);
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    @NonNull
    public ListenableFuture<Void> release(boolean z) {
        Logger.d(TAG, "release (id=" + this.mInstanceId + ") mProcessorState=" + this.mProcessorState);
        ListenableFuture<Void> release = this.mCaptureSession.release(z);
        int ordinal = this.mProcessorState.ordinal();
        if (ordinal == 1 || ordinal == 3) {
            release.addListener(new RunnableC0037x1aebc6d9(this, 4), CameraXExecutors.directExecutor());
        }
        this.mProcessorState = ProcessorState.DE_INITIALIZED;
        return release;
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public void setSessionConfig(@Nullable SessionConfig sessionConfig) {
        Logger.d(TAG, "setSessionConfig (id=" + this.mInstanceId + ")");
        this.mSessionConfig = sessionConfig;
        if (sessionConfig == null) {
            return;
        }
        Camera2RequestProcessor camera2RequestProcessor = this.mRequestProcessor;
        if (camera2RequestProcessor != null) {
            camera2RequestProcessor.updateSessionConfig(sessionConfig);
        }
        if (this.mProcessorState == ProcessorState.ON_CAPTURE_SESSION_STARTED) {
            CaptureRequestOptions build = CaptureRequestOptions.Builder.from(sessionConfig.getImplementationOptions()).build();
            this.mSessionOptions = build;
            updateParameters(build, this.mStillCaptureOptions);
            if (!hasPreviewSurface(sessionConfig.getRepeatingCaptureConfig())) {
                this.mSessionProcessor.stopRepeating();
            } else {
                this.mSessionProcessor.startRepeating(sessionConfig.getRepeatingCaptureConfig().getTagBundle(), this.mSessionProcessorCaptureCallback);
            }
        }
    }

    @Override // androidx.camera.camera2.internal.CaptureSessionInterface
    public void setStreamUseCaseMap(@NonNull Map<DeferrableSurface, Long> map) {
    }
}
