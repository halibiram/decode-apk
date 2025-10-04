package androidx.camera.core.impl;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.camera.core.Camera;
import androidx.camera.core.Logger;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.CameraInternal;
import androidx.core.util.Preconditions;
import androidx.tracing.Trace;
import defpackage.RunnableC0450xb2a4f6ac;
import j$.util.Objects;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes.dex */
public final class CameraStateRegistry implements CameraCoordinator.ConcurrentCameraModeListener {
    private static final int MAX_ALLOWED_CONCURRENT_CAMERAS_IN_CONCURRENT_MODE = 2;
    private static final int MAX_ALLOWED_CONCURRENT_CAMERAS_IN_SINGLE_MODE = 1;
    private static final String TAG = "CameraStateRegistry";

    @GuardedBy("mLock")
    private int mAvailableCameras;

    @GuardedBy("mLock")
    private final CameraCoordinator mCameraCoordinator;

    @GuardedBy("mLock")
    private final Map<Camera, CameraRegistration> mCameraStates;
    private final StringBuilder mDebugString = new StringBuilder();
    private final Object mLock;
    private int mMaxAllowedOpenedCameras;

    /* loaded from: classes.dex */
    public static class CameraRegistration {
        private final Executor mNotifyExecutor;
        private final OnConfigureAvailableListener mOnConfigureAvailableListener;
        private final OnOpenAvailableListener mOnOpenAvailableListener;
        private CameraInternal.State mState;

        public CameraRegistration(@Nullable CameraInternal.State state, @NonNull Executor executor, @NonNull OnConfigureAvailableListener onConfigureAvailableListener, @NonNull OnOpenAvailableListener onOpenAvailableListener) {
            this.mState = state;
            this.mNotifyExecutor = executor;
            this.mOnConfigureAvailableListener = onConfigureAvailableListener;
            this.mOnOpenAvailableListener = onOpenAvailableListener;
        }

        public CameraInternal.State getState() {
            return this.mState;
        }

        public void notifyOnConfigureAvailableListener() {
            try {
                Executor executor = this.mNotifyExecutor;
                OnConfigureAvailableListener onConfigureAvailableListener = this.mOnConfigureAvailableListener;
                Objects.requireNonNull(onConfigureAvailableListener);
                executor.execute(new RunnableC0450xb2a4f6ac(onConfigureAvailableListener, 6));
            } catch (RejectedExecutionException e) {
                Logger.e(CameraStateRegistry.TAG, "Unable to notify camera to configure.", e);
            }
        }

        public void notifyOnOpenAvailableListener() {
            try {
                Executor executor = this.mNotifyExecutor;
                OnOpenAvailableListener onOpenAvailableListener = this.mOnOpenAvailableListener;
                Objects.requireNonNull(onOpenAvailableListener);
                executor.execute(new RunnableC0450xb2a4f6ac(onOpenAvailableListener, 5));
            } catch (RejectedExecutionException e) {
                Logger.e(CameraStateRegistry.TAG, "Unable to notify camera to open.", e);
            }
        }

        public CameraInternal.State setState(@Nullable CameraInternal.State state) {
            CameraInternal.State state2 = this.mState;
            this.mState = state;
            return state2;
        }
    }

    /* loaded from: classes.dex */
    public interface OnConfigureAvailableListener {
        void onConfigureAvailable();
    }

    /* loaded from: classes.dex */
    public interface OnOpenAvailableListener {
        void onOpenAvailable();
    }

    public CameraStateRegistry(@NonNull CameraCoordinator cameraCoordinator, int i) {
        Object obj = new Object();
        this.mLock = obj;
        this.mCameraStates = new HashMap();
        this.mMaxAllowedOpenedCameras = i;
        synchronized (obj) {
            this.mCameraCoordinator = cameraCoordinator;
            this.mAvailableCameras = this.mMaxAllowedOpenedCameras;
        }
    }

    @Nullable
    @GuardedBy("mLock")
    private CameraRegistration getCameraRegistration(@NonNull String str) {
        for (Camera camera : this.mCameraStates.keySet()) {
            if (str.equals(((CameraInfoInternal) camera.getCameraInfo()).getCameraId())) {
                return this.mCameraStates.get(camera);
            }
        }
        return null;
    }

    private static boolean isOpen(@Nullable CameraInternal.State state) {
        if (state != null && state.holdsCameraSlot()) {
            return true;
        }
        return false;
    }

    @GuardedBy("mLock")
    @WorkerThread
    private void recalculateAvailableCameras() {
        String str;
        if (Logger.isDebugEnabled(TAG)) {
            this.mDebugString.setLength(0);
            this.mDebugString.append("Recalculating open cameras:\n");
            this.mDebugString.append(String.format(Locale.US, "%-45s%-22s\n", "Camera", "State"));
            this.mDebugString.append("-------------------------------------------------------------------\n");
        }
        int i = 0;
        for (Map.Entry<Camera, CameraRegistration> entry : this.mCameraStates.entrySet()) {
            if (Logger.isDebugEnabled(TAG)) {
                if (entry.getValue().getState() != null) {
                    str = entry.getValue().getState().toString();
                } else {
                    str = "UNKNOWN";
                }
                this.mDebugString.append(String.format(Locale.US, "%-45s%-22s\n", entry.getKey().toString(), str));
            }
            if (isOpen(entry.getValue().getState())) {
                i++;
            }
        }
        if (Logger.isDebugEnabled(TAG)) {
            this.mDebugString.append("-------------------------------------------------------------------\n");
            StringBuilder sb = this.mDebugString;
            Locale locale = Locale.US;
            sb.append("Open count: " + i + " (Max allowed: " + this.mMaxAllowedOpenedCameras + ")");
            Logger.d(TAG, this.mDebugString.toString());
        }
        this.mAvailableCameras = Math.max(this.mMaxAllowedOpenedCameras - i, 0);
    }

    private static void traceState(Camera camera, CameraInternal.State state) {
        if (Trace.isEnabled()) {
            Trace.setCounter("CX:State[" + camera + "]", state.ordinal());
        }
    }

    @Nullable
    @GuardedBy("mLock")
    private CameraInternal.State unregisterCamera(@NonNull Camera camera) {
        CameraRegistration remove = this.mCameraStates.remove(camera);
        if (remove != null) {
            recalculateAvailableCameras();
            return remove.getState();
        }
        return null;
    }

    @Nullable
    @GuardedBy("mLock")
    private CameraInternal.State updateAndVerifyState(@NonNull Camera camera, @NonNull CameraInternal.State state) {
        boolean z;
        CameraInternal.State state2 = ((CameraRegistration) Preconditions.checkNotNull(this.mCameraStates.get(camera), "Cannot update state of camera which has not yet been registered. Register with CameraStateRegistry.registerCamera()")).setState(state);
        CameraInternal.State state3 = CameraInternal.State.OPENING;
        if (state == state3) {
            if (!isOpen(state) && state2 != state3) {
                z = false;
            } else {
                z = true;
            }
            Preconditions.checkState(z, "Cannot mark camera as opening until camera was successful at calling CameraStateRegistry.tryOpenCamera()");
        }
        if (state2 != state) {
            traceState(camera, state);
            recalculateAvailableCameras();
        }
        return state2;
    }

    public boolean isCameraClosing() {
        synchronized (this.mLock) {
            try {
                Iterator<Map.Entry<Camera, CameraRegistration>> it = this.mCameraStates.entrySet().iterator();
                while (it.hasNext()) {
                    if (it.next().getValue().getState() == CameraInternal.State.CLOSING) {
                        return true;
                    }
                }
                return false;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void markCameraState(@NonNull Camera camera, @NonNull CameraInternal.State state) {
        markCameraState(camera, state, true);
    }

    @Override // androidx.camera.core.concurrent.CameraCoordinator.ConcurrentCameraModeListener
    public void onCameraOperatingModeUpdated(int i, int i2) {
        int i3;
        boolean z;
        synchronized (this.mLock) {
            boolean z2 = true;
            if (i2 == 2) {
                i3 = 2;
            } else {
                i3 = 1;
            }
            this.mMaxAllowedOpenedCameras = i3;
            if (i != 2 && i2 == 2) {
                z = true;
            } else {
                z = false;
            }
            if (i != 2 || i2 == 2) {
                z2 = false;
            }
            if (z || z2) {
                recalculateAvailableCameras();
            }
        }
    }

    public void registerCamera(@NonNull Camera camera, @NonNull Executor executor, @NonNull OnConfigureAvailableListener onConfigureAvailableListener, @NonNull OnOpenAvailableListener onOpenAvailableListener) {
        synchronized (this.mLock) {
            Preconditions.checkState(!this.mCameraStates.containsKey(camera), "Camera is already registered: " + camera);
            this.mCameraStates.put(camera, new CameraRegistration(null, executor, onConfigureAvailableListener, onOpenAvailableListener));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0078 A[Catch: all -> 0x0055, TryCatch #0 {all -> 0x0055, blocks: (B:4:0x0007, B:6:0x001f, B:7:0x0057, B:9:0x005b, B:13:0x0070, B:15:0x0078, B:18:0x0083, B:21:0x0097, B:22:0x009a, B:26:0x0068), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0097 A[Catch: all -> 0x0055, TryCatch #0 {all -> 0x0055, blocks: (B:4:0x0007, B:6:0x001f, B:7:0x0057, B:9:0x005b, B:13:0x0070, B:15:0x0078, B:18:0x0083, B:21:0x0097, B:22:0x009a, B:26:0x0068), top: B:3:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean tryOpenCamera(@NonNull Camera camera) {
        String str;
        boolean z = true;
        synchronized (this.mLock) {
            try {
                CameraRegistration cameraRegistration = (CameraRegistration) Preconditions.checkNotNull(this.mCameraStates.get(camera), "Camera must first be registered with registerCamera()");
                if (Logger.isDebugEnabled(TAG)) {
                    this.mDebugString.setLength(0);
                    this.mDebugString.append(String.format(Locale.US, "tryOpenCamera(%s) [Available Cameras: %d, Already Open: %b (Previous state: %s)]", camera, Integer.valueOf(this.mAvailableCameras), Boolean.valueOf(isOpen(cameraRegistration.getState())), cameraRegistration.getState()));
                }
                if (this.mAvailableCameras <= 0 && !isOpen(cameraRegistration.getState())) {
                    z = false;
                    if (Logger.isDebugEnabled(TAG)) {
                        StringBuilder sb = this.mDebugString;
                        Locale locale = Locale.US;
                        if (z) {
                            str = "SUCCESS";
                        } else {
                            str = "FAIL";
                        }
                        sb.append(" --> ".concat(str));
                        Logger.d(TAG, this.mDebugString.toString());
                    }
                    if (z) {
                        recalculateAvailableCameras();
                    }
                }
                CameraInternal.State state = CameraInternal.State.OPENING;
                cameraRegistration.setState(state);
                traceState(camera, state);
                if (Logger.isDebugEnabled(TAG)) {
                }
                if (z) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0055 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean tryOpenCaptureSession(@NonNull String str, @Nullable String str2) {
        CameraInternal.State state;
        CameraRegistration cameraRegistration;
        boolean z;
        boolean z2;
        synchronized (this.mLock) {
            try {
                boolean z3 = true;
                if (this.mCameraCoordinator.getCameraOperatingMode() != 2) {
                    return true;
                }
                CameraRegistration cameraRegistration2 = getCameraRegistration(str);
                CameraInternal.State state2 = null;
                if (cameraRegistration2 != null) {
                    state = cameraRegistration2.getState();
                } else {
                    state = null;
                }
                if (str2 != null) {
                    cameraRegistration = getCameraRegistration(str2);
                } else {
                    cameraRegistration = null;
                }
                if (cameraRegistration != null) {
                    state2 = cameraRegistration.getState();
                }
                CameraInternal.State state3 = CameraInternal.State.OPEN;
                if (!state3.equals(state) && !CameraInternal.State.CONFIGURED.equals(state)) {
                    z = false;
                    if (!state3.equals(state2) && !CameraInternal.State.CONFIGURED.equals(state2)) {
                        z2 = false;
                        if (z || !z2) {
                            z3 = false;
                        }
                        return z3;
                    }
                    z2 = true;
                    if (z) {
                    }
                    z3 = false;
                    return z3;
                }
                z = true;
                if (!state3.equals(state2)) {
                    z2 = false;
                    if (z) {
                    }
                    z3 = false;
                    return z3;
                }
                z2 = true;
                if (z) {
                }
                z3 = false;
                return z3;
            } finally {
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void markCameraState(@NonNull Camera camera, @NonNull CameraInternal.State state, boolean z) {
        CameraInternal.State updateAndVerifyState;
        CameraRegistration cameraRegistration;
        synchronized (this.mLock) {
            try {
                int i = this.mAvailableCameras;
                if (state == CameraInternal.State.RELEASED) {
                    updateAndVerifyState = unregisterCamera(camera);
                } else {
                    updateAndVerifyState = updateAndVerifyState(camera, state);
                }
                if (updateAndVerifyState == state) {
                    return;
                }
                HashMap hashMap = null;
                if (this.mCameraCoordinator.getCameraOperatingMode() == 2 && state == CameraInternal.State.CONFIGURED) {
                    String pairedConcurrentCameraId = this.mCameraCoordinator.getPairedConcurrentCameraId(((CameraInfoInternal) camera.getCameraInfo()).getCameraId());
                    if (pairedConcurrentCameraId != null) {
                        cameraRegistration = getCameraRegistration(pairedConcurrentCameraId);
                        if (i >= 1 && this.mAvailableCameras > 0) {
                            hashMap = new HashMap();
                            for (Map.Entry<Camera, CameraRegistration> entry : this.mCameraStates.entrySet()) {
                                if (entry.getValue().getState() == CameraInternal.State.PENDING_OPEN) {
                                    hashMap.put(entry.getKey(), entry.getValue());
                                }
                            }
                        } else if (state == CameraInternal.State.PENDING_OPEN && this.mAvailableCameras > 0) {
                            hashMap = new HashMap();
                            hashMap.put(camera, this.mCameraStates.get(camera));
                        }
                        if (hashMap != null && !z) {
                            hashMap.remove(camera);
                        }
                        if (hashMap != null) {
                            Iterator it = hashMap.values().iterator();
                            while (it.hasNext()) {
                                ((CameraRegistration) it.next()).notifyOnOpenAvailableListener();
                            }
                        }
                        if (cameraRegistration == null) {
                            cameraRegistration.notifyOnConfigureAvailableListener();
                            return;
                        }
                        return;
                    }
                }
                cameraRegistration = null;
                if (i >= 1) {
                }
                if (state == CameraInternal.State.PENDING_OPEN) {
                    hashMap = new HashMap();
                    hashMap.put(camera, this.mCameraStates.get(camera));
                }
                if (hashMap != null) {
                    hashMap.remove(camera);
                }
                if (hashMap != null) {
                }
                if (cameraRegistration == null) {
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
