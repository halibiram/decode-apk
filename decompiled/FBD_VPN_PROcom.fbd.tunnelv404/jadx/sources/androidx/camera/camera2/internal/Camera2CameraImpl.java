package androidx.camera.camera2.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.SurfaceTexture;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.media.CamcorderProfile;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Rational;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.OptIn;
import androidx.annotation.VisibleForTesting;
import androidx.camera.camera2.internal.SynchronizedCaptureSession;
import androidx.camera.camera2.internal.compat.ApiCompat;
import androidx.camera.camera2.internal.compat.CameraAccessExceptionCompat;
import androidx.camera.camera2.internal.compat.CameraCharacteristicsCompat;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;
import androidx.camera.camera2.internal.compat.params.DynamicRangesCompat;
import androidx.camera.camera2.internal.compat.quirk.DeviceQuirks;
import androidx.camera.camera2.internal.compat.quirk.LegacyCameraOutputConfigNullPointerQuirk;
import androidx.camera.camera2.internal.compat.quirk.LegacyCameraSurfaceCleanupQuirk;
import androidx.camera.camera2.interop.ExperimentalCamera2Interop;
import androidx.camera.core.CameraControl;
import androidx.camera.core.CameraInfo;
import androidx.camera.core.CameraState;
import androidx.camera.core.Logger;
import androidx.camera.core.Preview;
import androidx.camera.core.UseCase;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.AttachedSurfaceInfo;
import androidx.camera.core.impl.CameraConfig;
import androidx.camera.core.impl.CameraConfigs;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.CameraInfoInternal;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraStateRegistry;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.ImmediateSurface;
import androidx.camera.core.impl.LiveDataObservable;
import androidx.camera.core.impl.Observable;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.SessionProcessor;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseAttachState;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.camera.core.streamsharing.StreamSharing;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import androidx.tracing.Trace;
import app.tunnel.logger.utils.TrafficData;
import com.google.auto.value.AutoValue;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0485xc376ff23;
import defpackage.AbstractC0507xb350540f;
import defpackage.RunnableC0450xb2a4f6ac;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class Camera2CameraImpl implements CameraInternal {
    private static final int ERROR_NONE = 0;
    private static final String TAG = "Camera2CameraImpl";

    @NonNull
    final CameraAvailability mCameraAvailability;

    @NonNull
    private final CameraCharacteristicsCompat mCameraCharacteristicsCompat;

    @NonNull
    private CameraConfig mCameraConfig;

    @NonNull
    final CameraConfigureAvailable mCameraConfigureAvailable;
    private final Camera2CameraControlImpl mCameraControlInternal;

    @NonNull
    final CameraCoordinator mCameraCoordinator;

    @Nullable
    CameraDevice mCameraDevice;
    int mCameraDeviceError;

    @NonNull
    final Camera2CameraInfoImpl mCameraInfoInternal;
    private final CameraManagerCompat mCameraManager;
    private final CameraStateMachine mCameraStateMachine;

    @NonNull
    final CameraStateRegistry mCameraStateRegistry;
    CaptureSessionInterface mCaptureSession;

    @NonNull
    private final SynchronizedCaptureSession.OpenerBuilder mCaptureSessionOpenerBuilder;

    @NonNull
    private final CaptureSessionRepository mCaptureSessionRepository;
    private final boolean mCloseCameraBeforeCreateNewSessionQuirk;
    private final boolean mConfigAndCloseQuirk;

    @NonNull
    private final DisplayInfoManager mDisplayInfoManager;

    @NonNull
    private final DynamicRangesCompat mDynamicRangesCompat;
    private final ErrorTimeoutReopenScheduler mErrorTimeoutReopenScheduler;
    private final Executor mExecutor;
    boolean mIsActiveResumingMode;
    private boolean mIsConfigAndCloseRequired;
    private boolean mIsConfiguringForClose;
    private boolean mIsPrimary;
    final Object mLock;
    private MeteringRepeatingSession mMeteringRepeatingSession;
    private final Set<String> mNotifyStateAttachedSet;
    private final LiveDataObservable<CameraInternal.State> mObservableState;
    final AtomicInteger mReleaseRequestCount;
    final Map<CaptureSessionInterface, ListenableFuture<Void>> mReleasedCaptureSessions;
    private final ScheduledExecutorService mScheduledExecutorService;

    @Nullable
    @GuardedBy("mLock")
    private SessionProcessor mSessionProcessor;
    volatile InternalState mState = InternalState.INITIALIZED;
    private final StateCallback mStateCallback;

    @NonNull
    private final SupportedSurfaceCombination mSupportedSurfaceCombination;
    private int mTraceStateErrorCount;
    private final UseCaseAttachState mUseCaseAttachState;
    ListenableFuture<Void> mUserReleaseFuture;
    CallbackToFutureAdapter.Completer<Void> mUserReleaseNotifier;

    /* renamed from: androidx.camera.camera2.internal.Camera2CameraImpl$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements CamcorderProfileHelper {
        public AnonymousClass1() {
        }

        @Override // androidx.camera.camera2.internal.CamcorderProfileHelper
        public CamcorderProfile get(int i, int i2) {
            return CamcorderProfile.get(i, i2);
        }

        @Override // androidx.camera.camera2.internal.CamcorderProfileHelper
        public boolean hasProfile(int i, int i2) {
            return CamcorderProfile.hasProfile(i, i2);
        }
    }

    /* renamed from: androidx.camera.camera2.internal.Camera2CameraImpl$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends CameraDevice.StateCallback {
        final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;

        public AnonymousClass2(CallbackToFutureAdapter.Completer completer) {
            r2 = completer;
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onClosed(@NonNull CameraDevice cameraDevice) {
            Camera2CameraImpl.this.debugLog("openCameraConfigAndClose camera closed");
            r2.set(null);
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(@NonNull CameraDevice cameraDevice) {
            Camera2CameraImpl.this.debugLog("openCameraConfigAndClose camera disconnected");
            r2.set(null);
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(@NonNull CameraDevice cameraDevice, int i) {
            Camera2CameraImpl.this.debugLog(AbstractC0362x4440ab85.m2929x9738a56c(i, "openCameraConfigAndClose camera error "));
            r2.set(null);
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(@NonNull CameraDevice cameraDevice) {
            Camera2CameraImpl.this.debugLog("openCameraConfigAndClose camera opened");
            ListenableFuture configAndClose = Camera2CameraImpl.this.configAndClose(cameraDevice);
            Objects.requireNonNull(cameraDevice);
            configAndClose.addListener(new RunnableC0450xb2a4f6ac(cameraDevice, 3), Camera2CameraImpl.this.mExecutor);
        }
    }

    /* renamed from: androidx.camera.camera2.internal.Camera2CameraImpl$3 */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements FutureCallback<Void> {
        final /* synthetic */ CaptureSessionInterface val$captureSession;

        public AnonymousClass3(CaptureSessionInterface captureSessionInterface) {
            r2 = captureSessionInterface;
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(@Nullable Void r2) {
            Camera2CameraImpl.this.mReleasedCaptureSessions.remove(r2);
            int ordinal = Camera2CameraImpl.this.mState.ordinal();
            if (ordinal != 1 && ordinal != 4) {
                if (ordinal != 5 && (ordinal != 6 || Camera2CameraImpl.this.mCameraDeviceError == 0)) {
                    return;
                } else {
                    Camera2CameraImpl.this.debugLog("Camera reopen required. Checking if the current camera can be closed safely.");
                }
            }
            if (Camera2CameraImpl.this.isSessionCloseComplete()) {
                Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
                if (camera2CameraImpl.mCameraDevice != null) {
                    camera2CameraImpl.debugLog("closing camera");
                    ApiCompat.Api21Impl.close(Camera2CameraImpl.this.mCameraDevice);
                    Camera2CameraImpl.this.mCameraDevice = null;
                }
            }
        }
    }

    /* renamed from: androidx.camera.camera2.internal.Camera2CameraImpl$4 */
    /* loaded from: classes.dex */
    public class AnonymousClass4 implements FutureCallback<Void> {
        final /* synthetic */ CaptureSessionInterface val$captureSession;

        public AnonymousClass4(CaptureSessionInterface captureSessionInterface) {
            r2 = captureSessionInterface;
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
            if (th instanceof DeferrableSurface.SurfaceClosedException) {
                SessionConfig findSessionConfigForSurface = Camera2CameraImpl.this.findSessionConfigForSurface(((DeferrableSurface.SurfaceClosedException) th).getDeferrableSurface());
                if (findSessionConfigForSurface != null) {
                    Camera2CameraImpl.this.postSurfaceClosedError(findSessionConfigForSurface);
                    return;
                }
                return;
            }
            if (th instanceof CancellationException) {
                Camera2CameraImpl.this.debugLog("Unable to configure camera cancelled");
                return;
            }
            InternalState internalState = Camera2CameraImpl.this.mState;
            InternalState internalState2 = InternalState.OPENED;
            if (internalState == internalState2) {
                Camera2CameraImpl.this.setState(internalState2, CameraState.StateError.create(4, th));
            }
            Logger.e(Camera2CameraImpl.TAG, "Unable to configure camera " + Camera2CameraImpl.this, th);
            Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
            if (camera2CameraImpl.mCaptureSession == r2) {
                camera2CameraImpl.resetCaptureSession(false);
            }
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(@Nullable Void r2) {
            if (Camera2CameraImpl.this.mCameraCoordinator.getCameraOperatingMode() == 2 && Camera2CameraImpl.this.mState == InternalState.OPENED) {
                Camera2CameraImpl.this.setState(InternalState.CONFIGURED);
            }
        }
    }

    /* loaded from: classes.dex */
    public final class CameraAvailability extends CameraManager.AvailabilityCallback implements CameraStateRegistry.OnOpenAvailableListener {
        private boolean mCameraAvailable = true;
        private final String mCameraId;

        public CameraAvailability(String str) {
            this.mCameraId = str;
        }

        public boolean isCameraAvailable() {
            return this.mCameraAvailable;
        }

        @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
        public void onCameraAvailable(@NonNull String str) {
            if (!this.mCameraId.equals(str)) {
                return;
            }
            this.mCameraAvailable = true;
            if (Camera2CameraImpl.this.mState == InternalState.PENDING_OPEN) {
                Camera2CameraImpl.this.tryOpenCameraDevice(false);
            }
        }

        @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
        public void onCameraUnavailable(@NonNull String str) {
            if (!this.mCameraId.equals(str)) {
                return;
            }
            this.mCameraAvailable = false;
        }

        @Override // androidx.camera.core.impl.CameraStateRegistry.OnOpenAvailableListener
        public void onOpenAvailable() {
            if (Camera2CameraImpl.this.mState == InternalState.PENDING_OPEN) {
                Camera2CameraImpl.this.tryOpenCameraDevice(false);
            }
        }
    }

    /* loaded from: classes.dex */
    public final class CameraConfigureAvailable implements CameraStateRegistry.OnConfigureAvailableListener {
        public CameraConfigureAvailable() {
        }

        @Override // androidx.camera.core.impl.CameraStateRegistry.OnConfigureAvailableListener
        public void onConfigureAvailable() {
            if (Camera2CameraImpl.this.mState == InternalState.OPENED) {
                Camera2CameraImpl.this.openCaptureSession();
            }
        }
    }

    /* loaded from: classes.dex */
    public final class ControlUpdateListenerInternal implements CameraControlInternal.ControlUpdateCallback {
        public ControlUpdateListenerInternal() {
        }

        @Override // androidx.camera.core.impl.CameraControlInternal.ControlUpdateCallback
        public void onCameraControlCaptureRequests(@NonNull List<CaptureConfig> list) {
            Camera2CameraImpl.this.submitCaptureRequests((List) Preconditions.checkNotNull(list));
        }

        @Override // androidx.camera.core.impl.CameraControlInternal.ControlUpdateCallback
        public void onCameraControlUpdateSessionConfig() {
            Camera2CameraImpl.this.updateCaptureSessionConfig();
        }
    }

    /* loaded from: classes.dex */
    public enum InternalState {
        RELEASED,
        RELEASING,
        INITIALIZED,
        PENDING_OPEN,
        CLOSING,
        REOPENING_QUIRK,
        REOPENING,
        OPENING,
        OPENED,
        CONFIGURED
    }

    /* loaded from: classes.dex */
    public final class StateCallback extends CameraDevice.StateCallback {

        @NonNull
        private final CameraReopenMonitor mCameraReopenMonitor;
        private final Executor mExecutor;
        ScheduledFuture<?> mScheduledReopenHandle;
        private ScheduledReopen mScheduledReopenRunnable;
        private final ScheduledExecutorService mScheduler;

        /* loaded from: classes.dex */
        public class CameraReopenMonitor {
            static final int ACTIVE_REOPEN_DELAY_BASE_MS = 1000;
            static final int ACTIVE_REOPEN_LIMIT_MS = 1800000;
            static final int INVALID_TIME = -1;
            static final int REOPEN_DELAY_MS = 700;
            static final int REOPEN_LIMIT_MS = 10000;
            private final long mCameraOpenRetryMaxTimeoutInMs;
            private long mFirstReopenTime = -1;

            public CameraReopenMonitor(long j) {
                this.mCameraOpenRetryMaxTimeoutInMs = j;
            }

            public boolean canScheduleCameraReopen() {
                if (getElapsedTime() >= getReopenLimitMs()) {
                    reset();
                    return false;
                }
                return true;
            }

            public long getElapsedTime() {
                long uptimeMillis = SystemClock.uptimeMillis();
                if (this.mFirstReopenTime == -1) {
                    this.mFirstReopenTime = uptimeMillis;
                }
                return uptimeMillis - this.mFirstReopenTime;
            }

            public int getReopenDelayMs() {
                if (!StateCallback.this.shouldActiveResume()) {
                    return 700;
                }
                long elapsedTime = getElapsedTime();
                if (elapsedTime <= 120000) {
                    return 1000;
                }
                if (elapsedTime <= 300000) {
                    return TrafficData.INTERVAL_TIME;
                }
                return 4000;
            }

            public int getReopenLimitMs() {
                if (!StateCallback.this.shouldActiveResume()) {
                    long j = this.mCameraOpenRetryMaxTimeoutInMs;
                    if (j <= 0) {
                        return REOPEN_LIMIT_MS;
                    }
                    return Math.min((int) j, REOPEN_LIMIT_MS);
                }
                long j2 = this.mCameraOpenRetryMaxTimeoutInMs;
                if (j2 <= 0) {
                    return ACTIVE_REOPEN_LIMIT_MS;
                }
                return Math.min((int) j2, ACTIVE_REOPEN_LIMIT_MS);
            }

            public void reset() {
                this.mFirstReopenTime = -1L;
            }
        }

        /* loaded from: classes.dex */
        public class ScheduledReopen implements Runnable {
            private boolean mCancelled = false;
            private Executor mExecutor;

            public ScheduledReopen(@NonNull Executor executor) {
                this.mExecutor = executor;
            }

            public /* synthetic */ void lambda$run$0() {
                boolean z;
                if (!this.mCancelled) {
                    if (Camera2CameraImpl.this.mState != InternalState.REOPENING && Camera2CameraImpl.this.mState != InternalState.REOPENING_QUIRK) {
                        z = false;
                    } else {
                        z = true;
                    }
                    Preconditions.checkState(z);
                    if (StateCallback.this.shouldActiveResume()) {
                        Camera2CameraImpl.this.tryForceOpenCameraDevice(true);
                    } else {
                        Camera2CameraImpl.this.tryOpenCameraDevice(true);
                    }
                }
            }

            public void cancel() {
                this.mCancelled = true;
            }

            @Override // java.lang.Runnable
            public void run() {
                this.mExecutor.execute(new RunnableC0037x1aebc6d9(this, 0));
            }
        }

        public StateCallback(@NonNull Executor executor, @NonNull ScheduledExecutorService scheduledExecutorService, long j) {
            this.mExecutor = executor;
            this.mScheduler = scheduledExecutorService;
            this.mCameraReopenMonitor = new CameraReopenMonitor(j);
        }

        private void handleErrorOnOpen(@NonNull CameraDevice cameraDevice, int i) {
            boolean z;
            int i2;
            if (Camera2CameraImpl.this.mState != InternalState.OPENING && Camera2CameraImpl.this.mState != InternalState.OPENED && Camera2CameraImpl.this.mState != InternalState.CONFIGURED && Camera2CameraImpl.this.mState != InternalState.REOPENING && Camera2CameraImpl.this.mState != InternalState.REOPENING_QUIRK) {
                z = false;
            } else {
                z = true;
            }
            Preconditions.checkState(z, "Attempt to handle open error from non open state: " + Camera2CameraImpl.this.mState);
            if (i != 1 && i != 2 && i != 4) {
                Logger.e(Camera2CameraImpl.TAG, "Error observed on open (or opening) camera device " + cameraDevice.getId() + ": " + Camera2CameraImpl.getErrorMessage(i) + " closing camera.");
                if (i == 3) {
                    i2 = 5;
                } else {
                    i2 = 6;
                }
                Camera2CameraImpl.this.setState(InternalState.CLOSING, CameraState.StateError.create(i2));
                Camera2CameraImpl.this.closeCamera(false);
                return;
            }
            Logger.d(Camera2CameraImpl.TAG, "Attempt to reopen camera[" + cameraDevice.getId() + "] after error[" + Camera2CameraImpl.getErrorMessage(i) + "]");
            reopenCameraAfterError(i);
        }

        private void reopenCameraAfterError(int i) {
            boolean z;
            int i2 = 1;
            if (Camera2CameraImpl.this.mCameraDeviceError != 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, "Can only reopen camera device after error if the camera device is actually in an error state.");
            if (i != 1) {
                if (i != 2) {
                    i2 = 3;
                }
            } else {
                i2 = 2;
            }
            Camera2CameraImpl.this.setState(InternalState.REOPENING, CameraState.StateError.create(i2));
            Camera2CameraImpl.this.closeCamera(false);
        }

        public boolean cancelScheduledReopen() {
            if (this.mScheduledReopenHandle == null) {
                return false;
            }
            Camera2CameraImpl.this.debugLog("Cancelling scheduled re-open: " + this.mScheduledReopenRunnable);
            this.mScheduledReopenRunnable.cancel();
            this.mScheduledReopenRunnable = null;
            this.mScheduledReopenHandle.cancel(false);
            this.mScheduledReopenHandle = null;
            return true;
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onClosed(@NonNull CameraDevice cameraDevice) {
            boolean z;
            Camera2CameraImpl.this.debugLog("CameraDevice.onClosed()");
            if (Camera2CameraImpl.this.mCameraDevice == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, "Unexpected onClose callback on camera device: " + cameraDevice);
            int ordinal = Camera2CameraImpl.this.mState.ordinal();
            if (ordinal != 1 && ordinal != 4) {
                if (ordinal != 5 && ordinal != 6) {
                    throw new IllegalStateException("Camera closed while in state: " + Camera2CameraImpl.this.mState);
                }
                Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
                if (camera2CameraImpl.mCameraDeviceError != 0) {
                    camera2CameraImpl.debugLog("Camera closed due to error: " + Camera2CameraImpl.getErrorMessage(Camera2CameraImpl.this.mCameraDeviceError));
                    scheduleCameraReopen();
                    return;
                }
                camera2CameraImpl.tryOpenCameraDevice(false);
                return;
            }
            Preconditions.checkState(Camera2CameraImpl.this.isSessionCloseComplete());
            Camera2CameraImpl.this.configAndCloseIfNeeded();
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onDisconnected(@NonNull CameraDevice cameraDevice) {
            Camera2CameraImpl.this.debugLog("CameraDevice.onDisconnected()");
            onError(cameraDevice, 1);
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onError(@NonNull CameraDevice cameraDevice, int i) {
            Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
            camera2CameraImpl.mCameraDevice = cameraDevice;
            camera2CameraImpl.mCameraDeviceError = i;
            camera2CameraImpl.mErrorTimeoutReopenScheduler.deviceOnError();
            int ordinal = Camera2CameraImpl.this.mState.ordinal();
            if (ordinal != 1) {
                switch (ordinal) {
                    case 4:
                        break;
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                        String id = cameraDevice.getId();
                        String errorMessage = Camera2CameraImpl.getErrorMessage(i);
                        String name = Camera2CameraImpl.this.mState.name();
                        StringBuilder m2944x4440ab85 = AbstractC0362x4440ab85.m2944x4440ab85("CameraDevice.onError(): ", id, " failed with ", errorMessage, " while in ");
                        m2944x4440ab85.append(name);
                        m2944x4440ab85.append(" state. Will attempt recovering from error.");
                        Logger.d(Camera2CameraImpl.TAG, m2944x4440ab85.toString());
                        handleErrorOnOpen(cameraDevice, i);
                        return;
                    default:
                        throw new IllegalStateException("onError() should not be possible from state: " + Camera2CameraImpl.this.mState);
                }
            }
            String id2 = cameraDevice.getId();
            String errorMessage2 = Camera2CameraImpl.getErrorMessage(i);
            String name2 = Camera2CameraImpl.this.mState.name();
            StringBuilder m2944x4440ab852 = AbstractC0362x4440ab85.m2944x4440ab85("CameraDevice.onError(): ", id2, " failed with ", errorMessage2, " while in ");
            m2944x4440ab852.append(name2);
            m2944x4440ab852.append(" state. Will finish closing camera.");
            Logger.e(Camera2CameraImpl.TAG, m2944x4440ab852.toString());
            Camera2CameraImpl.this.closeCamera(false);
        }

        @Override // android.hardware.camera2.CameraDevice.StateCallback
        public void onOpened(@NonNull CameraDevice cameraDevice) {
            Camera2CameraImpl.this.debugLog("CameraDevice.onOpened()");
            Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
            camera2CameraImpl.mCameraDevice = cameraDevice;
            camera2CameraImpl.mCameraDeviceError = 0;
            resetReopenMonitor();
            int ordinal = Camera2CameraImpl.this.mState.ordinal();
            if (ordinal != 1 && ordinal != 4) {
                if (ordinal != 5 && ordinal != 6 && ordinal != 7) {
                    throw new IllegalStateException("onOpened() should not be possible from state: " + Camera2CameraImpl.this.mState);
                }
                Camera2CameraImpl.this.setState(InternalState.OPENED);
                CameraStateRegistry cameraStateRegistry = Camera2CameraImpl.this.mCameraStateRegistry;
                String id = cameraDevice.getId();
                Camera2CameraImpl camera2CameraImpl2 = Camera2CameraImpl.this;
                if (cameraStateRegistry.tryOpenCaptureSession(id, camera2CameraImpl2.mCameraCoordinator.getPairedConcurrentCameraId(camera2CameraImpl2.mCameraDevice.getId()))) {
                    Camera2CameraImpl.this.openCaptureSession();
                    return;
                }
                return;
            }
            Preconditions.checkState(Camera2CameraImpl.this.isSessionCloseComplete());
            Camera2CameraImpl.this.mCameraDevice.close();
            Camera2CameraImpl.this.mCameraDevice = null;
        }

        public void resetReopenMonitor() {
            this.mCameraReopenMonitor.reset();
        }

        public void scheduleCameraReopen() {
            boolean z;
            boolean z2 = true;
            if (this.mScheduledReopenRunnable == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z);
            if (this.mScheduledReopenHandle != null) {
                z2 = false;
            }
            Preconditions.checkState(z2);
            if (this.mCameraReopenMonitor.canScheduleCameraReopen()) {
                this.mScheduledReopenRunnable = new ScheduledReopen(this.mExecutor);
                Camera2CameraImpl.this.debugLog("Attempting camera re-open in " + this.mCameraReopenMonitor.getReopenDelayMs() + "ms: " + this.mScheduledReopenRunnable + " activeResuming = " + Camera2CameraImpl.this.mIsActiveResumingMode);
                this.mScheduledReopenHandle = this.mScheduler.schedule(this.mScheduledReopenRunnable, (long) this.mCameraReopenMonitor.getReopenDelayMs(), TimeUnit.MILLISECONDS);
                return;
            }
            Logger.e(Camera2CameraImpl.TAG, "Camera reopening attempted for " + this.mCameraReopenMonitor.getReopenLimitMs() + "ms without success.");
            Camera2CameraImpl.this.setState(InternalState.PENDING_OPEN, null, false);
        }

        public boolean shouldActiveResume() {
            int i;
            Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
            if (camera2CameraImpl.mIsActiveResumingMode && ((i = camera2CameraImpl.mCameraDeviceError) == 1 || i == 2)) {
                return true;
            }
            return false;
        }
    }

    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class UseCaseInfo {
        @NonNull
        public static UseCaseInfo create(@NonNull String str, @NonNull Class<?> cls, @NonNull SessionConfig sessionConfig, @NonNull UseCaseConfig<?> useCaseConfig, @Nullable Size size, @Nullable StreamSpec streamSpec, @Nullable List<UseCaseConfigFactory.CaptureType> list) {
            return new AutoValue_Camera2CameraImpl_UseCaseInfo(str, cls, sessionConfig, useCaseConfig, size, streamSpec, list);
        }

        @NonNull
        public static UseCaseInfo from(@NonNull UseCase useCase, boolean z) {
            SessionConfig secondarySessionConfig;
            String useCaseId = Camera2CameraImpl.getUseCaseId(useCase);
            Class<?> cls = useCase.getClass();
            if (z) {
                secondarySessionConfig = useCase.getSessionConfig();
            } else {
                secondarySessionConfig = useCase.getSecondarySessionConfig();
            }
            return create(useCaseId, cls, secondarySessionConfig, useCase.getCurrentConfig(), useCase.getAttachedSurfaceResolution(), useCase.getAttachedStreamSpec(), Camera2CameraImpl.getCaptureTypes(useCase));
        }

        @Nullable
        public abstract List<UseCaseConfigFactory.CaptureType> getCaptureTypes();

        @NonNull
        public abstract SessionConfig getSessionConfig();

        @Nullable
        public abstract StreamSpec getStreamSpec();

        @Nullable
        public abstract Size getSurfaceResolution();

        @NonNull
        public abstract UseCaseConfig<?> getUseCaseConfig();

        @NonNull
        public abstract String getUseCaseId();

        @NonNull
        public abstract Class<?> getUseCaseType();
    }

    public Camera2CameraImpl(@NonNull Context context, @NonNull CameraManagerCompat cameraManagerCompat, @NonNull String str, @NonNull Camera2CameraInfoImpl camera2CameraInfoImpl, @NonNull CameraCoordinator cameraCoordinator, @NonNull CameraStateRegistry cameraStateRegistry, @NonNull Executor executor, @NonNull Handler handler, @NonNull DisplayInfoManager displayInfoManager, long j) {
        LiveDataObservable<CameraInternal.State> liveDataObservable = new LiveDataObservable<>();
        this.mObservableState = liveDataObservable;
        this.mCameraDeviceError = 0;
        this.mReleaseRequestCount = new AtomicInteger(0);
        this.mReleasedCaptureSessions = new LinkedHashMap();
        this.mTraceStateErrorCount = 0;
        this.mIsConfigAndCloseRequired = false;
        this.mIsConfiguringForClose = false;
        this.mIsPrimary = true;
        this.mNotifyStateAttachedSet = new HashSet();
        this.mCameraConfig = CameraConfigs.defaultConfig();
        this.mLock = new Object();
        this.mIsActiveResumingMode = false;
        this.mErrorTimeoutReopenScheduler = new ErrorTimeoutReopenScheduler();
        this.mCameraManager = cameraManagerCompat;
        this.mCameraCoordinator = cameraCoordinator;
        this.mCameraStateRegistry = cameraStateRegistry;
        ScheduledExecutorService newHandlerExecutor = CameraXExecutors.newHandlerExecutor(handler);
        this.mScheduledExecutorService = newHandlerExecutor;
        Executor newSequentialExecutor = CameraXExecutors.newSequentialExecutor(executor);
        this.mExecutor = newSequentialExecutor;
        this.mStateCallback = new StateCallback(newSequentialExecutor, newHandlerExecutor, j);
        this.mUseCaseAttachState = new UseCaseAttachState(str);
        liveDataObservable.postValue(CameraInternal.State.CLOSED);
        CameraStateMachine cameraStateMachine = new CameraStateMachine(cameraStateRegistry);
        this.mCameraStateMachine = cameraStateMachine;
        CaptureSessionRepository captureSessionRepository = new CaptureSessionRepository(newSequentialExecutor);
        this.mCaptureSessionRepository = captureSessionRepository;
        this.mDisplayInfoManager = displayInfoManager;
        try {
            CameraCharacteristicsCompat cameraCharacteristicsCompat = cameraManagerCompat.getCameraCharacteristicsCompat(str);
            this.mCameraCharacteristicsCompat = cameraCharacteristicsCompat;
            Camera2CameraControlImpl camera2CameraControlImpl = new Camera2CameraControlImpl(cameraCharacteristicsCompat, newHandlerExecutor, newSequentialExecutor, new ControlUpdateListenerInternal(), camera2CameraInfoImpl.getCameraQuirks());
            this.mCameraControlInternal = camera2CameraControlImpl;
            this.mCameraInfoInternal = camera2CameraInfoImpl;
            camera2CameraInfoImpl.linkWithCameraControl(camera2CameraControlImpl);
            camera2CameraInfoImpl.setCameraStateSource(cameraStateMachine.getStateLiveData());
            this.mDynamicRangesCompat = DynamicRangesCompat.fromCameraCharacteristics(cameraCharacteristicsCompat);
            this.mCaptureSession = newCaptureSession();
            this.mCaptureSessionOpenerBuilder = new SynchronizedCaptureSession.OpenerBuilder(newSequentialExecutor, newHandlerExecutor, handler, captureSessionRepository, camera2CameraInfoImpl.getCameraQuirks(), DeviceQuirks.getAll());
            this.mCloseCameraBeforeCreateNewSessionQuirk = camera2CameraInfoImpl.getCameraQuirks().contains(LegacyCameraOutputConfigNullPointerQuirk.class);
            this.mConfigAndCloseQuirk = camera2CameraInfoImpl.getCameraQuirks().contains(LegacyCameraSurfaceCleanupQuirk.class);
            CameraAvailability cameraAvailability = new CameraAvailability(str);
            this.mCameraAvailability = cameraAvailability;
            CameraConfigureAvailable cameraConfigureAvailable = new CameraConfigureAvailable();
            this.mCameraConfigureAvailable = cameraConfigureAvailable;
            cameraStateRegistry.registerCamera(this, newSequentialExecutor, cameraConfigureAvailable, cameraAvailability);
            cameraManagerCompat.registerAvailabilityCallback(newSequentialExecutor, cameraAvailability);
            this.mSupportedSurfaceCombination = new SupportedSurfaceCombination(context, str, cameraManagerCompat, new CamcorderProfileHelper() { // from class: androidx.camera.camera2.internal.Camera2CameraImpl.1
                public AnonymousClass1() {
                }

                @Override // androidx.camera.camera2.internal.CamcorderProfileHelper
                public CamcorderProfile get(int i, int i2) {
                    return CamcorderProfile.get(i, i2);
                }

                @Override // androidx.camera.camera2.internal.CamcorderProfileHelper
                public boolean hasProfile(int i, int i2) {
                    return CamcorderProfile.hasProfile(i, i2);
                }
            });
        } catch (CameraAccessExceptionCompat e) {
            throw CameraUnavailableExceptionHelper.createFrom(e);
        }
    }

    private void addMeteringRepeating() {
        MeteringRepeatingSession meteringRepeatingSession = this.mMeteringRepeatingSession;
        if (meteringRepeatingSession != null) {
            String meteringRepeatingId = getMeteringRepeatingId(meteringRepeatingSession);
            UseCaseAttachState useCaseAttachState = this.mUseCaseAttachState;
            SessionConfig sessionConfig = this.mMeteringRepeatingSession.getSessionConfig();
            UseCaseConfig<?> useCaseConfig = this.mMeteringRepeatingSession.getUseCaseConfig();
            UseCaseConfigFactory.CaptureType captureType = UseCaseConfigFactory.CaptureType.METERING_REPEATING;
            useCaseAttachState.setUseCaseAttached(meteringRepeatingId, sessionConfig, useCaseConfig, null, Collections.singletonList(captureType));
            this.mUseCaseAttachState.setUseCaseActive(meteringRepeatingId, this.mMeteringRepeatingSession.getSessionConfig(), this.mMeteringRepeatingSession.getUseCaseConfig(), null, Collections.singletonList(captureType));
        }
    }

    private void addOrRemoveMeteringRepeatingUseCase() {
        SessionConfig build = this.mUseCaseAttachState.getAttachedBuilder().build();
        CaptureConfig repeatingCaptureConfig = build.getRepeatingCaptureConfig();
        int size = repeatingCaptureConfig.getSurfaces().size();
        int size2 = build.getSurfaces().size();
        if (!build.getSurfaces().isEmpty()) {
            if (repeatingCaptureConfig.getSurfaces().isEmpty()) {
                if (this.mMeteringRepeatingSession == null) {
                    this.mMeteringRepeatingSession = new MeteringRepeatingSession(this.mCameraInfoInternal.getCameraCharacteristicsCompat(), this.mDisplayInfoManager, new C0028x9738a56c(this, 1));
                }
                if (isSurfaceCombinationWithMeteringRepeatingSupported()) {
                    addMeteringRepeating();
                    return;
                } else {
                    Logger.e(TAG, "Failed to add a repeating surface, CameraControl and ImageCapture may encounter issues due to the absence of repeating surface. Please add a UseCase (Preview or ImageAnalysis) that can provide a repeating surface for CameraControl and ImageCapture to function properly.");
                    return;
                }
            }
            if (size2 == 1 && size == 1) {
                removeMeteringRepeating();
                return;
            }
            if (size >= 2) {
                removeMeteringRepeating();
                return;
            }
            if (this.mMeteringRepeatingSession != null && !isSurfaceCombinationWithMeteringRepeatingSupported()) {
                removeMeteringRepeating();
                return;
            }
            Logger.d(TAG, "No need to remove a previous mMeteringRepeating, SessionConfig Surfaces: " + size2 + ", CaptureConfig Surfaces: " + size);
        }
    }

    private boolean checkAndAttachRepeatingSurface(CaptureConfig.Builder builder) {
        if (!builder.getSurfaces().isEmpty()) {
            Logger.w(TAG, "The capture config builder already has surface inside.");
            return false;
        }
        Iterator<SessionConfig> it = this.mUseCaseAttachState.getActiveAndAttachedSessionConfigs().iterator();
        while (it.hasNext()) {
            CaptureConfig repeatingCaptureConfig = it.next().getRepeatingCaptureConfig();
            List<DeferrableSurface> surfaces = repeatingCaptureConfig.getSurfaces();
            if (!surfaces.isEmpty()) {
                if (repeatingCaptureConfig.getPreviewStabilizationMode() != 0) {
                    builder.setPreviewStabilization(repeatingCaptureConfig.getPreviewStabilizationMode());
                }
                if (repeatingCaptureConfig.getVideoStabilizationMode() != 0) {
                    builder.setVideoStabilization(repeatingCaptureConfig.getVideoStabilizationMode());
                }
                Iterator<DeferrableSurface> it2 = surfaces.iterator();
                while (it2.hasNext()) {
                    builder.addSurface(it2.next());
                }
            }
        }
        if (builder.getSurfaces().isEmpty()) {
            Logger.w(TAG, "Unable to find a repeating surface to attach to CaptureConfig");
            return false;
        }
        return true;
    }

    public void closeInternal() {
        debugLog("Closing camera.");
        boolean z = true;
        switch (this.mState.ordinal()) {
            case 3:
                if (this.mCameraDevice != null) {
                    z = false;
                }
                Preconditions.checkState(z);
                setState(InternalState.INITIALIZED);
                return;
            case 4:
            default:
                debugLog("close() ignored due to being in state: " + this.mState);
                return;
            case 5:
            case 6:
            case 7:
                if (!this.mStateCallback.cancelScheduledReopen() && !this.mErrorTimeoutReopenScheduler.isErrorHandling()) {
                    z = false;
                }
                this.mErrorTimeoutReopenScheduler.cancel();
                setState(InternalState.CLOSING);
                if (z) {
                    Preconditions.checkState(isSessionCloseComplete());
                    configAndCloseIfNeeded();
                    return;
                }
                return;
            case 8:
            case 9:
                setState(InternalState.CLOSING);
                closeCamera(false);
                return;
        }
    }

    @NonNull
    public ListenableFuture<Void> configAndClose(@NonNull CameraDevice cameraDevice) {
        CaptureSession captureSession = new CaptureSession(this.mDynamicRangesCompat);
        SurfaceTexture surfaceTexture = new SurfaceTexture(0);
        surfaceTexture.setDefaultBufferSize(640, 480);
        Surface surface = new Surface(surfaceTexture);
        ImmediateSurface immediateSurface = new ImmediateSurface(surface);
        immediateSurface.getTerminationFuture().addListener(new RunnableC0026x1378447b(surface, surfaceTexture, 2), CameraXExecutors.directExecutor());
        SessionConfig.Builder builder = new SessionConfig.Builder();
        builder.addNonRepeatingSurface(immediateSurface);
        builder.setTemplateType(1);
        debugLog("Start configAndClose.");
        return FutureChain.from(Futures.transformAsyncOnCompletion(captureSession.open(builder.build(), cameraDevice, this.mCaptureSessionOpenerBuilder.build()))).transformAsync(new C0035xd2bcb0cf(captureSession, immediateSurface, 0), this.mExecutor);
    }

    public void configAndCloseIfNeeded() {
        boolean z;
        if (this.mState != InternalState.RELEASING && this.mState != InternalState.CLOSING) {
            z = false;
        } else {
            z = true;
        }
        Preconditions.checkState(z);
        Preconditions.checkState(this.mReleasedCaptureSessions.isEmpty());
        if (!this.mIsConfigAndCloseRequired) {
            finishClose();
            return;
        }
        if (this.mIsConfiguringForClose) {
            debugLog("Ignored since configAndClose is processing");
            return;
        }
        if (!this.mCameraAvailability.isCameraAvailable()) {
            this.mIsConfigAndCloseRequired = false;
            finishClose();
            debugLog("Ignore configAndClose and finish the close flow directly since camera is unavailable.");
        } else {
            debugLog("Open camera to configAndClose");
            ListenableFuture<Void> openCameraConfigAndClose = openCameraConfigAndClose();
            this.mIsConfiguringForClose = true;
            openCameraConfigAndClose.addListener(new RunnableC0034x1db10c9d(this, 1), this.mExecutor);
        }
    }

    private CameraDevice.StateCallback createDeviceStateCallback() {
        ArrayList arrayList = new ArrayList(this.mUseCaseAttachState.getAttachedBuilder().build().getDeviceStateCallbacks());
        arrayList.add(this.mCaptureSessionRepository.getCameraStateCallback());
        arrayList.add(this.mStateCallback);
        return CameraDeviceStateCallbacks.createComboCallback(arrayList);
    }

    private int getCameraMode() {
        synchronized (this.mLock) {
            try {
                if (this.mCameraCoordinator.getCameraOperatingMode() == 2) {
                    return 1;
                }
                return 0;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Nullable
    public static List<UseCaseConfigFactory.CaptureType> getCaptureTypes(@NonNull UseCase useCase) {
        if (useCase.getCamera() == null) {
            return null;
        }
        return StreamSharing.getCaptureTypes(useCase);
    }

    public static String getErrorMessage(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                return "UNKNOWN ERROR";
                            }
                            return "ERROR_CAMERA_SERVICE";
                        }
                        return "ERROR_CAMERA_DEVICE";
                    }
                    return "ERROR_CAMERA_DISABLED";
                }
                return "ERROR_MAX_CAMERAS_IN_USE";
            }
            return "ERROR_CAMERA_IN_USE";
        }
        return "ERROR_NONE";
    }

    @NonNull
    public static String getMeteringRepeatingId(@NonNull MeteringRepeatingSession meteringRepeatingSession) {
        return meteringRepeatingSession.getName() + meteringRepeatingSession.hashCode();
    }

    private ListenableFuture<Void> getOrCreateUserReleaseFuture() {
        if (this.mUserReleaseFuture == null) {
            if (this.mState != InternalState.RELEASED) {
                this.mUserReleaseFuture = CallbackToFutureAdapter.getFuture(new C0028x9738a56c(this, 2));
            } else {
                this.mUserReleaseFuture = Futures.immediateFuture(null);
            }
        }
        return this.mUserReleaseFuture;
    }

    @NonNull
    public static String getUseCaseId(@NonNull UseCase useCase) {
        return useCase.getName() + useCase.hashCode();
    }

    private boolean isSurfaceCombinationWithMeteringRepeatingSupported() {
        ArrayList arrayList = new ArrayList();
        int cameraMode = getCameraMode();
        for (UseCaseAttachState.UseCaseAttachInfo useCaseAttachInfo : this.mUseCaseAttachState.getAttachedUseCaseInfo()) {
            if (useCaseAttachInfo.getCaptureTypes() == null || useCaseAttachInfo.getCaptureTypes().get(0) != UseCaseConfigFactory.CaptureType.METERING_REPEATING) {
                if (useCaseAttachInfo.getStreamSpec() != null && useCaseAttachInfo.getCaptureTypes() != null) {
                    SessionConfig sessionConfig = useCaseAttachInfo.getSessionConfig();
                    UseCaseConfig<?> useCaseConfig = useCaseAttachInfo.getUseCaseConfig();
                    for (DeferrableSurface deferrableSurface : sessionConfig.getSurfaces()) {
                        arrayList.add(AttachedSurfaceInfo.create(this.mSupportedSurfaceCombination.transformSurfaceConfig(cameraMode, useCaseConfig.getInputFormat(), deferrableSurface.getPrescribedSize()), useCaseConfig.getInputFormat(), deferrableSurface.getPrescribedSize(), useCaseAttachInfo.getStreamSpec().getDynamicRange(), useCaseAttachInfo.getCaptureTypes(), useCaseAttachInfo.getStreamSpec().getImplementationOptions(), useCaseConfig.getTargetFrameRate(null)));
                    }
                } else {
                    Logger.w(TAG, "Invalid stream spec or capture types in " + useCaseAttachInfo);
                    return false;
                }
            }
        }
        Preconditions.checkNotNull(this.mMeteringRepeatingSession);
        HashMap hashMap = new HashMap();
        hashMap.put(this.mMeteringRepeatingSession.getUseCaseConfig(), Collections.singletonList(this.mMeteringRepeatingSession.getMeteringRepeatingSize()));
        try {
            this.mSupportedSurfaceCombination.getSuggestedStreamSpecifications(cameraMode, arrayList, hashMap, false, false);
            debugLog("Surface combination with metering repeating supported!");
            return true;
        } catch (IllegalArgumentException e) {
            debugLog("Surface combination with metering repeating  not supported!", e);
            return false;
        }
    }

    public /* synthetic */ void lambda$addOrRemoveMeteringRepeatingUseCase$17() {
        if (!isMeteringRepeatingAttached()) {
            return;
        }
        resetUseCase(getMeteringRepeatingId(this.mMeteringRepeatingSession), this.mMeteringRepeatingSession.getSessionConfig(), this.mMeteringRepeatingSession.getUseCaseConfig(), null, Collections.singletonList(UseCaseConfigFactory.CaptureType.METERING_REPEATING));
    }

    public /* synthetic */ void lambda$attachUseCases$15(List list) {
        try {
            tryAttachUseCases(list);
        } finally {
            this.mCameraControlInternal.decrementUseCount();
        }
    }

    public static /* synthetic */ void lambda$configAndClose$2(Surface surface, SurfaceTexture surfaceTexture) {
        surface.release();
        surfaceTexture.release();
    }

    public static /* synthetic */ ListenableFuture lambda$configAndClose$3(CaptureSession captureSession, DeferrableSurface deferrableSurface, Void r2) {
        captureSession.close();
        deferrableSurface.close();
        return captureSession.release(false);
    }

    public /* synthetic */ void lambda$configAndCloseIfNeeded$0() {
        this.mIsConfiguringForClose = false;
        this.mIsConfigAndCloseRequired = false;
        debugLog("OpenCameraConfigAndClose is done, state: " + this.mState);
        int ordinal = this.mState.ordinal();
        if (ordinal != 1 && ordinal != 4) {
            if (ordinal != 6) {
                debugLog("OpenCameraConfigAndClose finished while in state: " + this.mState);
                return;
            } else {
                if (this.mCameraDeviceError != 0) {
                    debugLog("OpenCameraConfigAndClose in error: " + getErrorMessage(this.mCameraDeviceError));
                    this.mStateCallback.scheduleCameraReopen();
                    return;
                }
                tryOpenCameraDevice(false);
                return;
            }
        }
        Preconditions.checkState(isSessionCloseComplete());
        finishClose();
    }

    public /* synthetic */ Object lambda$getOrCreateUserReleaseFuture$6(CallbackToFutureAdapter.Completer completer) {
        boolean z;
        if (this.mUserReleaseNotifier == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, "Camera can only be released once, so release completer should be null on creation.");
        this.mUserReleaseNotifier = completer;
        return "Release[camera=" + this + "]";
    }

    public /* synthetic */ void lambda$isMeteringRepeatingAttached$13(CallbackToFutureAdapter.Completer completer) {
        MeteringRepeatingSession meteringRepeatingSession = this.mMeteringRepeatingSession;
        if (meteringRepeatingSession == null) {
            completer.set(Boolean.FALSE);
        } else {
            completer.set(Boolean.valueOf(this.mUseCaseAttachState.isUseCaseAttached(getMeteringRepeatingId(meteringRepeatingSession))));
        }
    }

    public /* synthetic */ Object lambda$isMeteringRepeatingAttached$14(CallbackToFutureAdapter.Completer completer) {
        try {
            this.mExecutor.execute(new RunnableC0033x9d12c1f4(this, completer, 1));
            return "isMeteringRepeatingAttached";
        } catch (RejectedExecutionException unused) {
            completer.setException(new RuntimeException("Unable to check if MeteringRepeating is attached. Camera executor shut down."));
            return "isMeteringRepeatingAttached";
        }
    }

    public /* synthetic */ void lambda$isUseCaseAttached$11(CallbackToFutureAdapter.Completer completer, String str) {
        completer.set(Boolean.valueOf(this.mUseCaseAttachState.isUseCaseAttached(str)));
    }

    public /* synthetic */ Object lambda$isUseCaseAttached$12(String str, CallbackToFutureAdapter.Completer completer) {
        try {
            this.mExecutor.execute(new RunnableC0027x75d576dc(this, completer, str));
            return "isUseCaseAttached";
        } catch (RejectedExecutionException unused) {
            completer.setException(new RuntimeException("Unable to check if use case is attached. Camera executor shut down."));
            return "isUseCaseAttached";
        }
    }

    public /* synthetic */ void lambda$onUseCaseActive$7(String str, SessionConfig sessionConfig, UseCaseConfig useCaseConfig, StreamSpec streamSpec, List list) {
        debugLog(AbstractC0362x4440ab85.m2932x95f25580("Use case ", str, " ACTIVE"));
        this.mUseCaseAttachState.setUseCaseActive(str, sessionConfig, useCaseConfig, streamSpec, list);
        this.mUseCaseAttachState.updateUseCase(str, sessionConfig, useCaseConfig, streamSpec, list);
        updateCaptureSessionConfig();
    }

    public /* synthetic */ void lambda$onUseCaseInactive$8(String str) {
        debugLog(AbstractC0362x4440ab85.m2932x95f25580("Use case ", str, " INACTIVE"));
        this.mUseCaseAttachState.setUseCaseInactive(str);
        updateCaptureSessionConfig();
    }

    public /* synthetic */ void lambda$onUseCaseUpdated$9(String str, SessionConfig sessionConfig, UseCaseConfig useCaseConfig, StreamSpec streamSpec, List list) {
        debugLog(AbstractC0362x4440ab85.m2932x95f25580("Use case ", str, " UPDATED"));
        this.mUseCaseAttachState.updateUseCase(str, sessionConfig, useCaseConfig, streamSpec, list);
        updateCaptureSessionConfig();
    }

    public /* synthetic */ Object lambda$openCameraConfigAndClose$1(CallbackToFutureAdapter.Completer completer) {
        try {
            ArrayList arrayList = new ArrayList(this.mUseCaseAttachState.getAttachedBuilder().build().getDeviceStateCallbacks());
            arrayList.add(this.mCaptureSessionRepository.getCameraStateCallback());
            arrayList.add(new CameraDevice.StateCallback() { // from class: androidx.camera.camera2.internal.Camera2CameraImpl.2
                final /* synthetic */ CallbackToFutureAdapter.Completer val$completer;

                public AnonymousClass2(CallbackToFutureAdapter.Completer completer2) {
                    r2 = completer2;
                }

                @Override // android.hardware.camera2.CameraDevice.StateCallback
                public void onClosed(@NonNull CameraDevice cameraDevice) {
                    Camera2CameraImpl.this.debugLog("openCameraConfigAndClose camera closed");
                    r2.set(null);
                }

                @Override // android.hardware.camera2.CameraDevice.StateCallback
                public void onDisconnected(@NonNull CameraDevice cameraDevice) {
                    Camera2CameraImpl.this.debugLog("openCameraConfigAndClose camera disconnected");
                    r2.set(null);
                }

                @Override // android.hardware.camera2.CameraDevice.StateCallback
                public void onError(@NonNull CameraDevice cameraDevice, int i) {
                    Camera2CameraImpl.this.debugLog(AbstractC0362x4440ab85.m2929x9738a56c(i, "openCameraConfigAndClose camera error "));
                    r2.set(null);
                }

                @Override // android.hardware.camera2.CameraDevice.StateCallback
                public void onOpened(@NonNull CameraDevice cameraDevice) {
                    Camera2CameraImpl.this.debugLog("openCameraConfigAndClose camera opened");
                    ListenableFuture configAndClose = Camera2CameraImpl.this.configAndClose(cameraDevice);
                    Objects.requireNonNull(cameraDevice);
                    configAndClose.addListener(new RunnableC0450xb2a4f6ac(cameraDevice, 3), Camera2CameraImpl.this.mExecutor);
                }
            });
            this.mCameraManager.openCamera(this.mCameraInfoInternal.getCameraId(), this.mExecutor, CameraDeviceStateCallbacks.createComboCallback(arrayList));
            return "configAndCloseTask";
        } catch (CameraAccessExceptionCompat | SecurityException e) {
            debugLog("Unable to open camera for configAndClose: " + e.getMessage(), e);
            completer2.setException(e);
            return "configAndCloseTask";
        }
    }

    public static /* synthetic */ void lambda$postSurfaceClosedError$19(SessionConfig.ErrorListener errorListener, SessionConfig sessionConfig) {
        errorListener.onError(sessionConfig, SessionConfig.SessionError.SESSION_ERROR_SURFACE_NEEDS_RESET);
    }

    public /* synthetic */ void lambda$release$4(CallbackToFutureAdapter.Completer completer) {
        Futures.propagate(releaseInternal(), completer);
    }

    public /* synthetic */ Object lambda$release$5(CallbackToFutureAdapter.Completer completer) {
        this.mExecutor.execute(new RunnableC0033x9d12c1f4(this, completer, 0));
        return "Release[request=" + this.mReleaseRequestCount.getAndIncrement() + "]";
    }

    public /* synthetic */ void lambda$resetUseCase$10(String str, SessionConfig sessionConfig, UseCaseConfig useCaseConfig, StreamSpec streamSpec, List list) {
        debugLog(AbstractC0362x4440ab85.m2932x95f25580("Use case ", str, " RESET"));
        this.mUseCaseAttachState.updateUseCase(str, sessionConfig, useCaseConfig, streamSpec, list);
        addOrRemoveMeteringRepeatingUseCase();
        resetCaptureSession(false);
        updateCaptureSessionConfig();
        if (this.mState == InternalState.OPENED) {
            openCaptureSession();
        }
    }

    public /* synthetic */ void lambda$setActiveResumingMode$18(boolean z) {
        this.mIsActiveResumingMode = z;
        if (z && this.mState == InternalState.PENDING_OPEN) {
            tryForceOpenCameraDevice(false);
        }
    }

    @NonNull
    private CaptureSessionInterface newCaptureSession() {
        synchronized (this.mLock) {
            try {
                if (this.mSessionProcessor == null) {
                    return new CaptureSession(this.mDynamicRangesCompat, this.mCameraInfoInternal.getCameraQuirks());
                }
                return new ProcessingCaptureSession(this.mSessionProcessor, this.mCameraInfoInternal, this.mDynamicRangesCompat, this.mExecutor, this.mScheduledExecutorService);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void notifyStateAttachedAndCameraControlReady(List<UseCase> list) {
        for (UseCase useCase : list) {
            String useCaseId = getUseCaseId(useCase);
            if (!this.mNotifyStateAttachedSet.contains(useCaseId)) {
                this.mNotifyStateAttachedSet.add(useCaseId);
                useCase.onStateAttached();
                useCase.onCameraControlReady();
            }
        }
    }

    private void notifyStateDetachedToUseCases(List<UseCase> list) {
        for (UseCase useCase : list) {
            String useCaseId = getUseCaseId(useCase);
            if (this.mNotifyStateAttachedSet.contains(useCaseId)) {
                useCase.onStateDetached();
                this.mNotifyStateAttachedSet.remove(useCaseId);
            }
        }
    }

    @NonNull
    @SuppressLint({"MissingPermission"})
    private ListenableFuture<Void> openCameraConfigAndClose() {
        return CallbackToFutureAdapter.getFuture(new C0028x9738a56c(this, 3));
    }

    @SuppressLint({"MissingPermission"})
    private void openCameraDevice(boolean z) {
        if (!z) {
            this.mStateCallback.resetReopenMonitor();
        }
        this.mStateCallback.cancelScheduledReopen();
        this.mErrorTimeoutReopenScheduler.cancel();
        debugLog("Opening camera.");
        setState(InternalState.OPENING);
        try {
            this.mCameraManager.openCamera(this.mCameraInfoInternal.getCameraId(), this.mExecutor, createDeviceStateCallback());
        } catch (CameraAccessExceptionCompat e) {
            debugLog("Unable to open camera due to " + e.getMessage());
            if (e.getReason() != 10001) {
                this.mErrorTimeoutReopenScheduler.start();
            } else {
                setState(InternalState.INITIALIZED, CameraState.StateError.create(7, e));
            }
        } catch (SecurityException e2) {
            debugLog("Unable to open camera due to " + e2.getMessage());
            setState(InternalState.REOPENING);
            this.mStateCallback.scheduleCameraReopen();
        }
    }

    public void openInternal() {
        int ordinal = this.mState.ordinal();
        boolean z = false;
        if (ordinal != 2 && ordinal != 3) {
            if (ordinal != 4) {
                debugLog("open() ignored due to being in state: " + this.mState);
                return;
            }
            setState(InternalState.REOPENING);
            if (!isSessionCloseComplete() && !this.mIsConfiguringForClose && this.mCameraDeviceError == 0) {
                if (this.mCameraDevice != null) {
                    z = true;
                }
                Preconditions.checkState(z, "Camera Device should be open if session close is not complete");
                setState(InternalState.OPENED);
                openCaptureSession();
                return;
            }
            return;
        }
        tryForceOpenCameraDevice(false);
    }

    private ListenableFuture<Void> releaseInternal() {
        ListenableFuture<Void> orCreateUserReleaseFuture = getOrCreateUserReleaseFuture();
        boolean z = true;
        switch (this.mState.ordinal()) {
            case 1:
            case 4:
            case 5:
            case 6:
            case 7:
                if (!this.mStateCallback.cancelScheduledReopen() && !this.mErrorTimeoutReopenScheduler.isErrorHandling()) {
                    z = false;
                }
                this.mErrorTimeoutReopenScheduler.cancel();
                setState(InternalState.RELEASING);
                if (z) {
                    Preconditions.checkState(isSessionCloseComplete());
                    configAndCloseIfNeeded();
                }
                return orCreateUserReleaseFuture;
            case 2:
            case 3:
                if (this.mCameraDevice != null) {
                    z = false;
                }
                Preconditions.checkState(z);
                setState(InternalState.RELEASING);
                Preconditions.checkState(isSessionCloseComplete());
                configAndCloseIfNeeded();
                return orCreateUserReleaseFuture;
            case 8:
            case 9:
                setState(InternalState.RELEASING);
                closeCamera(false);
                return orCreateUserReleaseFuture;
            default:
                debugLog("release() ignored due to being in state: " + this.mState);
                return orCreateUserReleaseFuture;
        }
    }

    private void removeMeteringRepeating() {
        if (this.mMeteringRepeatingSession != null) {
            this.mUseCaseAttachState.setUseCaseDetached(this.mMeteringRepeatingSession.getName() + this.mMeteringRepeatingSession.hashCode());
            this.mUseCaseAttachState.setUseCaseInactive(this.mMeteringRepeatingSession.getName() + this.mMeteringRepeatingSession.hashCode());
            this.mMeteringRepeatingSession.clear();
            this.mMeteringRepeatingSession = null;
        }
    }

    private void resetUseCase(@NonNull String str, @NonNull SessionConfig sessionConfig, @NonNull UseCaseConfig<?> useCaseConfig, @Nullable StreamSpec streamSpec, @Nullable List<UseCaseConfigFactory.CaptureType> list) {
        this.mExecutor.execute(new RunnableC0031x95f25580(this, str, sessionConfig, useCaseConfig, streamSpec, list, 0));
    }

    @NonNull
    private Collection<UseCaseInfo> toUseCaseInfos(@NonNull Collection<UseCase> collection) {
        ArrayList arrayList = new ArrayList();
        Iterator<UseCase> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(UseCaseInfo.from(it.next(), this.mIsPrimary));
        }
        return arrayList;
    }

    private void tryAttachUseCases(@NonNull Collection<UseCaseInfo> collection) {
        Size surfaceResolution;
        boolean isEmpty = this.mUseCaseAttachState.getAttachedSessionConfigs().isEmpty();
        ArrayList arrayList = new ArrayList();
        Rational rational = null;
        for (UseCaseInfo useCaseInfo : collection) {
            if (!this.mUseCaseAttachState.isUseCaseAttached(useCaseInfo.getUseCaseId())) {
                this.mUseCaseAttachState.setUseCaseAttached(useCaseInfo.getUseCaseId(), useCaseInfo.getSessionConfig(), useCaseInfo.getUseCaseConfig(), useCaseInfo.getStreamSpec(), useCaseInfo.getCaptureTypes());
                arrayList.add(useCaseInfo.getUseCaseId());
                if (useCaseInfo.getUseCaseType() == Preview.class && (surfaceResolution = useCaseInfo.getSurfaceResolution()) != null) {
                    rational = new Rational(surfaceResolution.getWidth(), surfaceResolution.getHeight());
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        debugLog("Use cases [" + TextUtils.join(", ", arrayList) + "] now ATTACHED");
        if (isEmpty) {
            this.mCameraControlInternal.setActive(true);
            this.mCameraControlInternal.incrementUseCount();
        }
        addOrRemoveMeteringRepeatingUseCase();
        updateZslDisabledByUseCaseConfigStatus();
        updateCaptureSessionConfig();
        resetCaptureSession(false);
        if (this.mState == InternalState.OPENED) {
            openCaptureSession();
        } else {
            openInternal();
        }
        if (rational != null) {
            this.mCameraControlInternal.setPreviewAspectRatio(rational);
        }
    }

    /* renamed from: tryDetachUseCases */
    public void lambda$detachUseCases$16(@NonNull Collection<UseCaseInfo> collection) {
        ArrayList arrayList = new ArrayList();
        boolean z = false;
        for (UseCaseInfo useCaseInfo : collection) {
            if (this.mUseCaseAttachState.isUseCaseAttached(useCaseInfo.getUseCaseId())) {
                this.mUseCaseAttachState.removeUseCase(useCaseInfo.getUseCaseId());
                arrayList.add(useCaseInfo.getUseCaseId());
                if (useCaseInfo.getUseCaseType() == Preview.class) {
                    z = true;
                }
            }
        }
        if (arrayList.isEmpty()) {
            return;
        }
        debugLog("Use cases [" + TextUtils.join(", ", arrayList) + "] now DETACHED for camera");
        if (z) {
            this.mCameraControlInternal.setPreviewAspectRatio(null);
        }
        addOrRemoveMeteringRepeatingUseCase();
        if (this.mUseCaseAttachState.getAttachedUseCaseConfigs().isEmpty()) {
            this.mCameraControlInternal.setZslDisabledByUserCaseConfig(false);
        } else {
            updateZslDisabledByUseCaseConfigStatus();
        }
        if (this.mUseCaseAttachState.getAttachedSessionConfigs().isEmpty()) {
            this.mCameraControlInternal.decrementUseCount();
            resetCaptureSession(false);
            this.mCameraControlInternal.setActive(false);
            this.mCaptureSession = newCaptureSession();
            closeInternal();
            return;
        }
        updateCaptureSessionConfig();
        resetCaptureSession(false);
        if (this.mState == InternalState.OPENED) {
            openCaptureSession();
        }
    }

    private void updateZslDisabledByUseCaseConfigStatus() {
        Iterator<UseCaseConfig<?>> it = this.mUseCaseAttachState.getAttachedUseCaseConfigs().iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= it.next().isZslDisabled(false);
        }
        this.mCameraControlInternal.setZslDisabledByUserCaseConfig(z);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void attachUseCases(@NonNull Collection<UseCase> collection) {
        ArrayList arrayList = new ArrayList(collection);
        if (arrayList.isEmpty()) {
            return;
        }
        this.mCameraControlInternal.incrementUseCount();
        notifyStateAttachedAndCameraControlReady(new ArrayList<>(arrayList));
        try {
            this.mExecutor.execute(new RunnableC0030x34271fae(this, new ArrayList(toUseCaseInfos(arrayList)), 1));
        } catch (RejectedExecutionException e) {
            debugLog("Unable to attach use cases.", e);
            this.mCameraControlInternal.decrementUseCount();
        }
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void close() {
        this.mExecutor.execute(new RunnableC0034x1db10c9d(this, 2));
    }

    public void closeCamera(boolean z) {
        boolean z2;
        if (this.mState != InternalState.CLOSING && this.mState != InternalState.RELEASING && (this.mState != InternalState.REOPENING || this.mCameraDeviceError == 0)) {
            z2 = false;
        } else {
            z2 = true;
        }
        Preconditions.checkState(z2, "closeCamera should only be called in a CLOSING, RELEASING or REOPENING (with error) state. Current state: " + this.mState + " (error: " + getErrorMessage(this.mCameraDeviceError) + ")");
        resetCaptureSession(z);
        this.mCaptureSession.cancelIssuedCaptureRequests();
    }

    public void debugLog(@NonNull String str) {
        debugLog(str, null);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void detachUseCases(@NonNull Collection<UseCase> collection) {
        ArrayList arrayList = new ArrayList(collection);
        if (arrayList.isEmpty()) {
            return;
        }
        ArrayList arrayList2 = new ArrayList(toUseCaseInfos(arrayList));
        notifyStateDetachedToUseCases(new ArrayList<>(arrayList));
        this.mExecutor.execute(new RunnableC0030x34271fae(this, arrayList2, 0));
    }

    @Nullable
    public SessionConfig findSessionConfigForSurface(@NonNull DeferrableSurface deferrableSurface) {
        for (SessionConfig sessionConfig : this.mUseCaseAttachState.getAttachedSessionConfigs()) {
            if (sessionConfig.getSurfaces().contains(deferrableSurface)) {
                return sessionConfig;
            }
        }
        return null;
    }

    public void finishClose() {
        boolean z;
        if (this.mState != InternalState.RELEASING && this.mState != InternalState.CLOSING) {
            z = false;
        } else {
            z = true;
        }
        Preconditions.checkState(z);
        Preconditions.checkState(this.mReleasedCaptureSessions.isEmpty());
        this.mCameraDevice = null;
        if (this.mState == InternalState.CLOSING) {
            setState(InternalState.INITIALIZED);
            return;
        }
        this.mCameraManager.unregisterAvailabilityCallback(this.mCameraAvailability);
        setState(InternalState.RELEASED);
        CallbackToFutureAdapter.Completer<Void> completer = this.mUserReleaseNotifier;
        if (completer != null) {
            completer.set(null);
            this.mUserReleaseNotifier = null;
        }
    }

    @NonNull
    @VisibleForTesting
    public CameraAvailability getCameraAvailability() {
        return this.mCameraAvailability;
    }

    @Override // androidx.camera.core.impl.CameraInternal, androidx.camera.core.Camera
    public final /* synthetic */ CameraControl getCameraControl() {
        return AbstractC0507xb350540f.m3145xfbe0c504(this);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    @NonNull
    public CameraControlInternal getCameraControlInternal() {
        return this.mCameraControlInternal;
    }

    @Override // androidx.camera.core.impl.CameraInternal, androidx.camera.core.Camera
    public final /* synthetic */ CameraInfo getCameraInfo() {
        return AbstractC0507xb350540f.m3146x3271d0aa(this);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    @NonNull
    public CameraInfoInternal getCameraInfoInternal() {
        return this.mCameraInfoInternal;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    @NonNull
    public Observable<CameraInternal.State> getCameraState() {
        return this.mObservableState;
    }

    @Override // androidx.camera.core.impl.CameraInternal, androidx.camera.core.Camera
    @NonNull
    public CameraConfig getExtendedConfig() {
        return this.mCameraConfig;
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final /* synthetic */ boolean getHasTransform() {
        return AbstractC0507xb350540f.m3148x75d576dc(this);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public final /* synthetic */ boolean isFrontFacing() {
        return AbstractC0507xb350540f.m3149x9738a56c(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @VisibleForTesting
    public boolean isMeteringRepeatingAttached() {
        try {
            return ((Boolean) CallbackToFutureAdapter.getFuture(new C0028x9738a56c(this, 4)).get()).booleanValue();
        } catch (InterruptedException | ExecutionException e) {
            throw new RuntimeException("Unable to check if MeteringRepeating is attached.", e);
        }
    }

    public boolean isSessionCloseComplete() {
        return this.mReleasedCaptureSessions.isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @VisibleForTesting
    public boolean isUseCaseAttached(@NonNull UseCase useCase) {
        try {
            return ((Boolean) CallbackToFutureAdapter.getFuture(new C0029x9e171bf9(this, getUseCaseId(useCase), 0)).get()).booleanValue();
        } catch (InterruptedException | ExecutionException e) {
            throw new RuntimeException("Unable to check if use case is attached.", e);
        }
    }

    @Override // androidx.camera.core.Camera
    public final /* synthetic */ boolean isUseCasesCombinationSupported(boolean z, UseCase... useCaseArr) {
        return AbstractC0485xc376ff23.m3117xfbe0c504(this, z, useCaseArr);
    }

    @Override // androidx.camera.core.Camera
    public final /* synthetic */ boolean isUseCasesCombinationSupportedByFramework(UseCase... useCaseArr) {
        return AbstractC0485xc376ff23.m3119x1378447b(this, useCaseArr);
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseActive(@NonNull UseCase useCase) {
        SessionConfig secondarySessionConfig;
        Preconditions.checkNotNull(useCase);
        String useCaseId = getUseCaseId(useCase);
        if (this.mIsPrimary) {
            secondarySessionConfig = useCase.getSessionConfig();
        } else {
            secondarySessionConfig = useCase.getSecondarySessionConfig();
        }
        SessionConfig sessionConfig = secondarySessionConfig;
        this.mExecutor.execute(new RunnableC0031x95f25580(this, useCaseId, sessionConfig, useCase.getCurrentConfig(), useCase.getAttachedStreamSpec(), getCaptureTypes(useCase), 2));
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseInactive(@NonNull UseCase useCase) {
        Preconditions.checkNotNull(useCase);
        this.mExecutor.execute(new RunnableC0026x1378447b(this, getUseCaseId(useCase), 3));
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseReset(@NonNull UseCase useCase) {
        SessionConfig secondarySessionConfig;
        Preconditions.checkNotNull(useCase);
        if (this.mIsPrimary) {
            secondarySessionConfig = useCase.getSessionConfig();
        } else {
            secondarySessionConfig = useCase.getSecondarySessionConfig();
        }
        SessionConfig sessionConfig = secondarySessionConfig;
        resetUseCase(getUseCaseId(useCase), sessionConfig, useCase.getCurrentConfig(), useCase.getAttachedStreamSpec(), getCaptureTypes(useCase));
    }

    @Override // androidx.camera.core.UseCase.StateChangeCallback
    public void onUseCaseUpdated(@NonNull UseCase useCase) {
        SessionConfig secondarySessionConfig;
        Preconditions.checkNotNull(useCase);
        String useCaseId = getUseCaseId(useCase);
        if (this.mIsPrimary) {
            secondarySessionConfig = useCase.getSessionConfig();
        } else {
            secondarySessionConfig = useCase.getSecondarySessionConfig();
        }
        SessionConfig sessionConfig = secondarySessionConfig;
        this.mExecutor.execute(new RunnableC0031x95f25580(this, useCaseId, sessionConfig, useCase.getCurrentConfig(), useCase.getAttachedStreamSpec(), getCaptureTypes(useCase), 1));
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void open() {
        this.mExecutor.execute(new RunnableC0034x1db10c9d(this, 0));
    }

    @OptIn(markerClass = {ExperimentalCamera2Interop.class})
    public void openCaptureSession() {
        boolean z;
        if (this.mState == InternalState.OPENED) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z);
        SessionConfig.ValidatingBuilder attachedBuilder = this.mUseCaseAttachState.getAttachedBuilder();
        if (!attachedBuilder.isValid()) {
            debugLog("Unable to create capture session due to conflicting configurations");
            return;
        }
        if (!this.mCameraStateRegistry.tryOpenCaptureSession(this.mCameraDevice.getId(), this.mCameraCoordinator.getPairedConcurrentCameraId(this.mCameraDevice.getId()))) {
            debugLog("Unable to create capture session in camera operating mode = " + this.mCameraCoordinator.getCameraOperatingMode());
        } else {
            HashMap hashMap = new HashMap();
            StreamUseCaseUtil.populateSurfaceToStreamUseCaseMapping(this.mUseCaseAttachState.getAttachedSessionConfigs(), this.mUseCaseAttachState.getAttachedUseCaseConfigs(), hashMap);
            this.mCaptureSession.setStreamUseCaseMap(hashMap);
            CaptureSessionInterface captureSessionInterface = this.mCaptureSession;
            Futures.addCallback(captureSessionInterface.open(attachedBuilder.build(), (CameraDevice) Preconditions.checkNotNull(this.mCameraDevice), this.mCaptureSessionOpenerBuilder.build()), new FutureCallback<Void>() { // from class: androidx.camera.camera2.internal.Camera2CameraImpl.4
                final /* synthetic */ CaptureSessionInterface val$captureSession;

                public AnonymousClass4(CaptureSessionInterface captureSessionInterface2) {
                    r2 = captureSessionInterface2;
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public void onFailure(@NonNull Throwable th) {
                    if (th instanceof DeferrableSurface.SurfaceClosedException) {
                        SessionConfig findSessionConfigForSurface = Camera2CameraImpl.this.findSessionConfigForSurface(((DeferrableSurface.SurfaceClosedException) th).getDeferrableSurface());
                        if (findSessionConfigForSurface != null) {
                            Camera2CameraImpl.this.postSurfaceClosedError(findSessionConfigForSurface);
                            return;
                        }
                        return;
                    }
                    if (th instanceof CancellationException) {
                        Camera2CameraImpl.this.debugLog("Unable to configure camera cancelled");
                        return;
                    }
                    InternalState internalState = Camera2CameraImpl.this.mState;
                    InternalState internalState2 = InternalState.OPENED;
                    if (internalState == internalState2) {
                        Camera2CameraImpl.this.setState(internalState2, CameraState.StateError.create(4, th));
                    }
                    Logger.e(Camera2CameraImpl.TAG, "Unable to configure camera " + Camera2CameraImpl.this, th);
                    Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
                    if (camera2CameraImpl.mCaptureSession == r2) {
                        camera2CameraImpl.resetCaptureSession(false);
                    }
                }

                @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                public void onSuccess(@Nullable Void r2) {
                    if (Camera2CameraImpl.this.mCameraCoordinator.getCameraOperatingMode() == 2 && Camera2CameraImpl.this.mState == InternalState.OPENED) {
                        Camera2CameraImpl.this.setState(InternalState.CONFIGURED);
                    }
                }
            }, this.mExecutor);
        }
    }

    public void postSurfaceClosedError(@NonNull SessionConfig sessionConfig) {
        ScheduledExecutorService mainThreadExecutor = CameraXExecutors.mainThreadExecutor();
        SessionConfig.ErrorListener errorListener = sessionConfig.getErrorListener();
        if (errorListener != null) {
            debugLog("Posting surface closed", new Throwable());
            mainThreadExecutor.execute(new RunnableC0026x1378447b(errorListener, sessionConfig, 1));
        }
    }

    @Override // androidx.camera.core.impl.CameraInternal
    @NonNull
    public ListenableFuture<Void> release() {
        return CallbackToFutureAdapter.getFuture(new C0028x9738a56c(this, 0));
    }

    public ListenableFuture<Void> releaseSession(@NonNull CaptureSessionInterface captureSessionInterface, boolean z) {
        captureSessionInterface.close();
        ListenableFuture<Void> release = captureSessionInterface.release(z);
        debugLog("Releasing session in state " + this.mState.name());
        this.mReleasedCaptureSessions.put(captureSessionInterface, release);
        Futures.addCallback(release, new FutureCallback<Void>() { // from class: androidx.camera.camera2.internal.Camera2CameraImpl.3
            final /* synthetic */ CaptureSessionInterface val$captureSession;

            public AnonymousClass3(CaptureSessionInterface captureSessionInterface2) {
                r2 = captureSessionInterface2;
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onFailure(@NonNull Throwable th) {
            }

            @Override // androidx.camera.core.impl.utils.futures.FutureCallback
            public void onSuccess(@Nullable Void r2) {
                Camera2CameraImpl.this.mReleasedCaptureSessions.remove(r2);
                int ordinal = Camera2CameraImpl.this.mState.ordinal();
                if (ordinal != 1 && ordinal != 4) {
                    if (ordinal != 5 && (ordinal != 6 || Camera2CameraImpl.this.mCameraDeviceError == 0)) {
                        return;
                    } else {
                        Camera2CameraImpl.this.debugLog("Camera reopen required. Checking if the current camera can be closed safely.");
                    }
                }
                if (Camera2CameraImpl.this.isSessionCloseComplete()) {
                    Camera2CameraImpl camera2CameraImpl = Camera2CameraImpl.this;
                    if (camera2CameraImpl.mCameraDevice != null) {
                        camera2CameraImpl.debugLog("closing camera");
                        ApiCompat.Api21Impl.close(Camera2CameraImpl.this.mCameraDevice);
                        Camera2CameraImpl.this.mCameraDevice = null;
                    }
                }
            }
        }, CameraXExecutors.directExecutor());
        return release;
    }

    public void resetCaptureSession(boolean z) {
        boolean z2;
        if (this.mCaptureSession != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        Preconditions.checkState(z2);
        debugLog("Resetting Capture Session");
        CaptureSessionInterface captureSessionInterface = this.mCaptureSession;
        SessionConfig sessionConfig = captureSessionInterface.getSessionConfig();
        List<CaptureConfig> captureConfigs = captureSessionInterface.getCaptureConfigs();
        CaptureSessionInterface newCaptureSession = newCaptureSession();
        this.mCaptureSession = newCaptureSession;
        newCaptureSession.setSessionConfig(sessionConfig);
        this.mCaptureSession.issueCaptureRequests(captureConfigs);
        if (this.mState.ordinal() != 8) {
            debugLog("Skipping Capture Session state check due to current camera state: " + this.mState + " and previous session status: " + captureSessionInterface.isInOpenState());
        } else if (this.mCloseCameraBeforeCreateNewSessionQuirk && captureSessionInterface.isInOpenState()) {
            debugLog("Close camera before creating new session");
            setState(InternalState.REOPENING_QUIRK);
        }
        if (this.mConfigAndCloseQuirk && captureSessionInterface.isInOpenState()) {
            debugLog("ConfigAndClose is required when close the camera.");
            this.mIsConfigAndCloseRequired = true;
        }
        releaseSession(captureSessionInterface, z);
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void setActiveResumingMode(final boolean z) {
        this.mExecutor.execute(new Runnable() { // from class: androidx.camera.camera2.internal.뎨돶땰딎땵딃됨드땭두뒹듟땭땧될땤돝땡땟땡득땫땟듌둑듔뒐둔뒨딽땪돵둥뒬돝뒼뒹땻딹둡듔든땐땰땜땠돳땔될땪두땃딄되돸든돵뎬둘땨딀둡땲뎽땬듬딝딃땜뒼됨땤딝돴듽돰듻땲됫듸든둬듰듰듸뒈땳땠뎰딽둬딽뒼딎땃돸돳딠뒷뒛땯듬뎬땅땀되될딅땩땵됨땐땧뎰뎨땥됩뒋됐딟따됐땮뎡돛듰딸뎬뒙돷
            @Override // java.lang.Runnable
            public final void run() {
                Camera2CameraImpl.this.lambda$setActiveResumingMode$18(z);
            }
        });
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void setExtendedConfig(@Nullable CameraConfig cameraConfig) {
        if (cameraConfig == null) {
            cameraConfig = CameraConfigs.defaultConfig();
        }
        SessionProcessor sessionProcessor = cameraConfig.getSessionProcessor(null);
        this.mCameraConfig = cameraConfig;
        synchronized (this.mLock) {
            this.mSessionProcessor = sessionProcessor;
        }
    }

    @Override // androidx.camera.core.impl.CameraInternal
    public void setPrimary(boolean z) {
        this.mIsPrimary = z;
    }

    public void setState(@NonNull InternalState internalState) {
        setState(internalState, null);
    }

    public void submitCaptureRequests(@NonNull List<CaptureConfig> list) {
        ArrayList arrayList = new ArrayList();
        for (CaptureConfig captureConfig : list) {
            CaptureConfig.Builder from = CaptureConfig.Builder.from(captureConfig);
            if (captureConfig.getTemplateType() == 5 && captureConfig.getCameraCaptureResult() != null) {
                from.setCameraCaptureResult(captureConfig.getCameraCaptureResult());
            }
            if (!captureConfig.getSurfaces().isEmpty() || !captureConfig.isUseRepeatingSurface() || checkAndAttachRepeatingSurface(from)) {
                arrayList.add(from.build());
            }
        }
        debugLog("Issue capture request");
        this.mCaptureSession.issueCaptureRequests(arrayList);
    }

    @NonNull
    public String toString() {
        return String.format(Locale.US, "Camera@%x[id=%s]", Integer.valueOf(hashCode()), this.mCameraInfoInternal.getCameraId());
    }

    public void traceInternalState(@NonNull InternalState internalState, @Nullable CameraState.StateError stateError) {
        int i;
        if (Trace.isEnabled()) {
            Trace.setCounter("CX:C2State[" + this + "]", internalState.ordinal());
            if (stateError != null) {
                this.mTraceStateErrorCount++;
            }
            if (this.mTraceStateErrorCount > 0) {
                String str = "CX:C2StateErrorCode[" + this + "]";
                if (stateError != null) {
                    i = stateError.getCode();
                } else {
                    i = 0;
                }
                Trace.setCounter(str, i);
            }
        }
    }

    public void tryForceOpenCameraDevice(boolean z) {
        debugLog("Attempting to force open the camera.");
        if (!this.mCameraStateRegistry.tryOpenCamera(this)) {
            debugLog("No cameras available. Waiting for available camera before opening camera.");
            setState(InternalState.PENDING_OPEN);
        } else {
            openCameraDevice(z);
        }
    }

    public void tryOpenCameraDevice(boolean z) {
        debugLog("Attempting to open the camera.");
        if (this.mCameraAvailability.isCameraAvailable() && this.mCameraStateRegistry.tryOpenCamera(this)) {
            openCameraDevice(z);
        } else {
            debugLog("No cameras available. Waiting for available camera before opening camera.");
            setState(InternalState.PENDING_OPEN);
        }
    }

    public void updateCaptureSessionConfig() {
        SessionConfig.ValidatingBuilder activeAndAttachedBuilder = this.mUseCaseAttachState.getActiveAndAttachedBuilder();
        if (activeAndAttachedBuilder.isValid()) {
            this.mCameraControlInternal.setTemplate(activeAndAttachedBuilder.build().getTemplateType());
            activeAndAttachedBuilder.add(this.mCameraControlInternal.getSessionConfig());
            this.mCaptureSession.setSessionConfig(activeAndAttachedBuilder.build());
            return;
        }
        this.mCameraControlInternal.resetTemplate();
        this.mCaptureSession.setSessionConfig(this.mCameraControlInternal.getSessionConfig());
    }

    /* loaded from: classes.dex */
    public class ErrorTimeoutReopenScheduler {
        private static final long ERROR_TIMEOUT_MILLIS = 2000;

        @Nullable
        private ScheduleNode mScheduleNode;

        /* loaded from: classes.dex */
        public class ScheduleNode {
            private final AtomicBoolean mIsDone = new AtomicBoolean(false);
            private final ScheduledFuture<?> mScheduledFuture;

            public ScheduleNode() {
                this.mScheduledFuture = Camera2CameraImpl.this.mScheduledExecutorService.schedule(new RunnableC0036x8c6fc18a(this, 0), ErrorTimeoutReopenScheduler.ERROR_TIMEOUT_MILLIS, TimeUnit.MILLISECONDS);
            }

            public void execute() {
                if (this.mIsDone.getAndSet(true)) {
                    return;
                }
                Camera2CameraImpl.this.mExecutor.execute(new RunnableC0036x8c6fc18a(this, 1));
            }

            public void executeInternal() {
                if (Camera2CameraImpl.this.mState != InternalState.OPENING) {
                    Camera2CameraImpl.this.debugLog("Camera skip reopen at state: " + Camera2CameraImpl.this.mState);
                    return;
                }
                Camera2CameraImpl.this.debugLog("Camera onError timeout, reopen it.");
                Camera2CameraImpl.this.setState(InternalState.REOPENING);
                Camera2CameraImpl.this.mStateCallback.scheduleCameraReopen();
            }

            public void cancel() {
                this.mIsDone.set(true);
                this.mScheduledFuture.cancel(true);
            }

            public boolean isDone() {
                return this.mIsDone.get();
            }
        }

        private ErrorTimeoutReopenScheduler() {
            this.mScheduleNode = null;
        }

        public void cancel() {
            ScheduleNode scheduleNode = this.mScheduleNode;
            if (scheduleNode != null) {
                scheduleNode.cancel();
            }
            this.mScheduleNode = null;
        }

        public void deviceOnError() {
            Camera2CameraImpl.this.debugLog("Camera receive onErrorCallback");
            cancel();
        }

        public boolean isErrorHandling() {
            ScheduleNode scheduleNode = this.mScheduleNode;
            if (scheduleNode != null && !scheduleNode.isDone()) {
                return true;
            }
            return false;
        }

        public void start() {
            if (Camera2CameraImpl.this.mState != InternalState.OPENING) {
                Camera2CameraImpl.this.debugLog("Don't need the onError timeout handler.");
                return;
            }
            Camera2CameraImpl.this.debugLog("Camera waiting for onError.");
            cancel();
            this.mScheduleNode = new ScheduleNode();
        }

        public /* synthetic */ ErrorTimeoutReopenScheduler(Camera2CameraImpl camera2CameraImpl, AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    private void debugLog(@NonNull String str, @Nullable Throwable th) {
        Logger.d(TAG, "{" + toString() + "} " + str, th);
    }

    @Override // androidx.camera.core.Camera
    public final /* synthetic */ boolean isUseCasesCombinationSupported(UseCase... useCaseArr) {
        return AbstractC0485xc376ff23.m3118x3271d0aa(this, useCaseArr);
    }

    public void setState(@NonNull InternalState internalState, @Nullable CameraState.StateError stateError) {
        setState(internalState, stateError, true);
    }

    public void setState(@NonNull InternalState internalState, @Nullable CameraState.StateError stateError, boolean z) {
        CameraInternal.State state;
        debugLog("Transitioning camera internal state: " + this.mState + " --> " + internalState);
        traceInternalState(internalState, stateError);
        this.mState = internalState;
        switch (internalState) {
            case RELEASED:
                state = CameraInternal.State.RELEASED;
                break;
            case RELEASING:
                state = CameraInternal.State.RELEASING;
                break;
            case INITIALIZED:
                state = CameraInternal.State.CLOSED;
                break;
            case PENDING_OPEN:
                state = CameraInternal.State.PENDING_OPEN;
                break;
            case CLOSING:
            case REOPENING_QUIRK:
                state = CameraInternal.State.CLOSING;
                break;
            case REOPENING:
            case OPENING:
                state = CameraInternal.State.OPENING;
                break;
            case OPENED:
                state = CameraInternal.State.OPEN;
                break;
            case CONFIGURED:
                state = CameraInternal.State.CONFIGURED;
                break;
            default:
                throw new IllegalStateException("Unknown state: " + internalState);
        }
        this.mCameraStateRegistry.markCameraState(this, state, z);
        this.mObservableState.postValue(state);
        this.mCameraStateMachine.updateState(state, stateError);
    }
}
