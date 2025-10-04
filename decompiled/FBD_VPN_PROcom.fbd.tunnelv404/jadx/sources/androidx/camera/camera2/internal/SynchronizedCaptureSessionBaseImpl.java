package androidx.camera.camera2.internal;

import android.hardware.camera2.CameraCaptureSession;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CaptureRequest;
import android.os.Build;
import android.os.Handler;
import android.view.Surface;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.camera2.internal.SynchronizedCaptureSession;
import androidx.camera.camera2.internal.compat.CameraCaptureSessionCompat;
import androidx.camera.camera2.internal.compat.CameraDeviceCompat;
import androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat;
import androidx.camera.camera2.internal.compat.params.SessionConfigurationCompat;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.DeferrableSurface;
import androidx.camera.core.impl.DeferrableSurfaces;
import androidx.camera.core.impl.utils.executor.CameraXExecutors;
import androidx.camera.core.impl.utils.futures.FutureCallback;
import androidx.camera.core.impl.utils.futures.FutureChain;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.List;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public class SynchronizedCaptureSessionBaseImpl extends SynchronizedCaptureSession.StateCallback implements SynchronizedCaptureSession, SynchronizedCaptureSession.Opener {
    private static final String TAG = "SyncCaptureSessionBase";

    @Nullable
    CameraCaptureSessionCompat mCameraCaptureSessionCompat;

    @NonNull
    final CaptureSessionRepository mCaptureSessionRepository;

    @Nullable
    SynchronizedCaptureSession.StateCallback mCaptureSessionStateCallback;

    @NonNull
    final Handler mCompatHandler;

    @NonNull
    final Executor mExecutor;

    @Nullable
    @GuardedBy("mLock")
    CallbackToFutureAdapter.Completer<Void> mOpenCaptureSessionCompleter;

    @Nullable
    @GuardedBy("mLock")
    ListenableFuture<Void> mOpenCaptureSessionFuture;

    @NonNull
    private final ScheduledExecutorService mScheduledExecutorService;

    @Nullable
    @GuardedBy("mLock")
    private ListenableFuture<List<Surface>> mStartingSurface;
    final Object mLock = new Object();

    @Nullable
    @GuardedBy("mLock")
    private List<DeferrableSurface> mHeldDeferrableSurfaces = null;

    @GuardedBy("mLock")
    private boolean mClosed = false;

    @GuardedBy("mLock")
    private boolean mOpenerDisabled = false;

    @GuardedBy("mLock")
    private boolean mSessionFinished = false;

    /* renamed from: androidx.camera.camera2.internal.SynchronizedCaptureSessionBaseImpl$1 */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements FutureCallback<Void> {
        public AnonymousClass1() {
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onFailure(@NonNull Throwable th) {
            SynchronizedCaptureSessionBaseImpl.this.finishClose();
            SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = SynchronizedCaptureSessionBaseImpl.this;
            synchronizedCaptureSessionBaseImpl.mCaptureSessionRepository.onCaptureSessionConfigureFail(synchronizedCaptureSessionBaseImpl);
        }

        @Override // androidx.camera.core.impl.utils.futures.FutureCallback
        public void onSuccess(@Nullable Void r1) {
        }
    }

    /* renamed from: androidx.camera.camera2.internal.SynchronizedCaptureSessionBaseImpl$2 */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends CameraCaptureSession.StateCallback {
        public AnonymousClass2() {
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onActive(@NonNull CameraCaptureSession cameraCaptureSession) {
            SynchronizedCaptureSessionBaseImpl.this.createCaptureSessionCompat(cameraCaptureSession);
            SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = SynchronizedCaptureSessionBaseImpl.this;
            synchronizedCaptureSessionBaseImpl.onActive(synchronizedCaptureSessionBaseImpl);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        @RequiresApi(api = 26)
        public void onCaptureQueueEmpty(@NonNull CameraCaptureSession cameraCaptureSession) {
            SynchronizedCaptureSessionBaseImpl.this.createCaptureSessionCompat(cameraCaptureSession);
            SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = SynchronizedCaptureSessionBaseImpl.this;
            synchronizedCaptureSessionBaseImpl.onCaptureQueueEmpty(synchronizedCaptureSessionBaseImpl);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onClosed(@NonNull CameraCaptureSession cameraCaptureSession) {
            SynchronizedCaptureSessionBaseImpl.this.createCaptureSessionCompat(cameraCaptureSession);
            SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = SynchronizedCaptureSessionBaseImpl.this;
            synchronizedCaptureSessionBaseImpl.onClosed(synchronizedCaptureSessionBaseImpl);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigureFailed(@NonNull CameraCaptureSession cameraCaptureSession) {
            CallbackToFutureAdapter.Completer<Void> completer;
            try {
                SynchronizedCaptureSessionBaseImpl.this.createCaptureSessionCompat(cameraCaptureSession);
                SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = SynchronizedCaptureSessionBaseImpl.this;
                synchronizedCaptureSessionBaseImpl.onConfigureFailed(synchronizedCaptureSessionBaseImpl);
                synchronized (SynchronizedCaptureSessionBaseImpl.this.mLock) {
                    Preconditions.checkNotNull(SynchronizedCaptureSessionBaseImpl.this.mOpenCaptureSessionCompleter, "OpenCaptureSession completer should not null");
                    SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl2 = SynchronizedCaptureSessionBaseImpl.this;
                    completer = synchronizedCaptureSessionBaseImpl2.mOpenCaptureSessionCompleter;
                    synchronizedCaptureSessionBaseImpl2.mOpenCaptureSessionCompleter = null;
                }
                completer.setException(new IllegalStateException("onConfigureFailed"));
            } catch (Throwable th) {
                synchronized (SynchronizedCaptureSessionBaseImpl.this.mLock) {
                    Preconditions.checkNotNull(SynchronizedCaptureSessionBaseImpl.this.mOpenCaptureSessionCompleter, "OpenCaptureSession completer should not null");
                    SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl3 = SynchronizedCaptureSessionBaseImpl.this;
                    CallbackToFutureAdapter.Completer<Void> completer2 = synchronizedCaptureSessionBaseImpl3.mOpenCaptureSessionCompleter;
                    synchronizedCaptureSessionBaseImpl3.mOpenCaptureSessionCompleter = null;
                    completer2.setException(new IllegalStateException("onConfigureFailed"));
                    throw th;
                }
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onConfigured(@NonNull CameraCaptureSession cameraCaptureSession) {
            CallbackToFutureAdapter.Completer<Void> completer;
            try {
                SynchronizedCaptureSessionBaseImpl.this.createCaptureSessionCompat(cameraCaptureSession);
                SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = SynchronizedCaptureSessionBaseImpl.this;
                synchronizedCaptureSessionBaseImpl.onConfigured(synchronizedCaptureSessionBaseImpl);
                synchronized (SynchronizedCaptureSessionBaseImpl.this.mLock) {
                    Preconditions.checkNotNull(SynchronizedCaptureSessionBaseImpl.this.mOpenCaptureSessionCompleter, "OpenCaptureSession completer should not null");
                    SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl2 = SynchronizedCaptureSessionBaseImpl.this;
                    completer = synchronizedCaptureSessionBaseImpl2.mOpenCaptureSessionCompleter;
                    synchronizedCaptureSessionBaseImpl2.mOpenCaptureSessionCompleter = null;
                }
                completer.set(null);
            } catch (Throwable th) {
                synchronized (SynchronizedCaptureSessionBaseImpl.this.mLock) {
                    Preconditions.checkNotNull(SynchronizedCaptureSessionBaseImpl.this.mOpenCaptureSessionCompleter, "OpenCaptureSession completer should not null");
                    SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl3 = SynchronizedCaptureSessionBaseImpl.this;
                    CallbackToFutureAdapter.Completer<Void> completer2 = synchronizedCaptureSessionBaseImpl3.mOpenCaptureSessionCompleter;
                    synchronizedCaptureSessionBaseImpl3.mOpenCaptureSessionCompleter = null;
                    completer2.set(null);
                    throw th;
                }
            }
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        public void onReady(@NonNull CameraCaptureSession cameraCaptureSession) {
            SynchronizedCaptureSessionBaseImpl.this.createCaptureSessionCompat(cameraCaptureSession);
            SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = SynchronizedCaptureSessionBaseImpl.this;
            synchronizedCaptureSessionBaseImpl.onReady(synchronizedCaptureSessionBaseImpl);
        }

        @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
        @RequiresApi(api = 23)
        public void onSurfacePrepared(@NonNull CameraCaptureSession cameraCaptureSession, @NonNull Surface surface) {
            SynchronizedCaptureSessionBaseImpl.this.createCaptureSessionCompat(cameraCaptureSession);
            SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = SynchronizedCaptureSessionBaseImpl.this;
            synchronizedCaptureSessionBaseImpl.onSurfacePrepared(synchronizedCaptureSessionBaseImpl, surface);
        }
    }

    @RequiresApi(23)
    /* loaded from: classes.dex */
    public static class Api23Impl {
        private Api23Impl() {
        }

        public static Surface getInputSurface(CameraCaptureSession cameraCaptureSession) {
            Surface inputSurface;
            inputSurface = cameraCaptureSession.getInputSurface();
            return inputSurface;
        }
    }

    public SynchronizedCaptureSessionBaseImpl(@NonNull CaptureSessionRepository captureSessionRepository, @NonNull Executor executor, @NonNull ScheduledExecutorService scheduledExecutorService, @NonNull Handler handler) {
        this.mCaptureSessionRepository = captureSessionRepository;
        this.mCompatHandler = handler;
        this.mExecutor = executor;
        this.mScheduledExecutorService = scheduledExecutorService;
    }

    public /* synthetic */ void lambda$close$2() {
        onSessionFinished(this);
    }

    public /* synthetic */ void lambda$onClosed$3(SynchronizedCaptureSession synchronizedCaptureSession) {
        this.mCaptureSessionRepository.onCaptureSessionClosed(this);
        onSessionFinished(synchronizedCaptureSession);
        if (this.mCameraCaptureSessionCompat != null) {
            Objects.requireNonNull(this.mCaptureSessionStateCallback);
            this.mCaptureSessionStateCallback.onClosed(synchronizedCaptureSession);
        } else {
            Logger.w(TAG, "[" + this + "] Cannot call onClosed() when the CameraCaptureSession is not correctly configured.");
        }
    }

    public /* synthetic */ void lambda$onSessionFinished$4(SynchronizedCaptureSession synchronizedCaptureSession) {
        Objects.requireNonNull(this.mCaptureSessionStateCallback);
        this.mCaptureSessionStateCallback.onSessionFinished(synchronizedCaptureSession);
    }

    public /* synthetic */ Object lambda$openCaptureSession$0(List list, CameraDeviceCompat cameraDeviceCompat, SessionConfigurationCompat sessionConfigurationCompat, CallbackToFutureAdapter.Completer completer) {
        boolean z;
        String str;
        synchronized (this.mLock) {
            holdDeferrableSurfaces(list);
            if (this.mOpenCaptureSessionCompleter == null) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.checkState(z, "The openCaptureSessionCompleter can only set once!");
            this.mOpenCaptureSessionCompleter = completer;
            cameraDeviceCompat.createCaptureSession(sessionConfigurationCompat);
            str = "openCaptureSession[session=" + this + "]";
        }
        return str;
    }

    public /* synthetic */ ListenableFuture lambda$startWithDeferrableSurface$1(List list, List list2) {
        Logger.d(TAG, "[" + this + "] getSurface done with results: " + list2);
        if (list2.isEmpty()) {
            return Futures.immediateFailedFuture(new IllegalArgumentException("Unable to open capture session without surfaces"));
        }
        if (list2.contains(null)) {
            return Futures.immediateFailedFuture(new DeferrableSurface.SurfaceClosedException("Surface closed", (DeferrableSurface) list.get(list2.indexOf(null))));
        }
        return Futures.immediateFuture(list2);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public void abortCaptures() {
        Preconditions.checkNotNull(this.mCameraCaptureSessionCompat, "Need to call openCaptureSession before using this API.");
        this.mCameraCaptureSessionCompat.toCameraCaptureSession().abortCaptures();
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public int captureBurstRequests(@NonNull List<CaptureRequest> list, @NonNull CameraCaptureSession.CaptureCallback captureCallback) {
        Preconditions.checkNotNull(this.mCameraCaptureSessionCompat, "Need to call openCaptureSession before using this API.");
        return this.mCameraCaptureSessionCompat.captureBurstRequests(list, getExecutor(), captureCallback);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public int captureSingleRequest(@NonNull CaptureRequest captureRequest, @NonNull CameraCaptureSession.CaptureCallback captureCallback) {
        Preconditions.checkNotNull(this.mCameraCaptureSessionCompat, "Need to call openCaptureSession before using this API.");
        return this.mCameraCaptureSessionCompat.captureSingleRequest(captureRequest, getExecutor(), captureCallback);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public void close() {
        Preconditions.checkNotNull(this.mCameraCaptureSessionCompat, "Need to call openCaptureSession before using this API.");
        this.mCaptureSessionRepository.onCaptureSessionClosing(this);
        this.mCameraCaptureSessionCompat.toCameraCaptureSession().close();
        getExecutor().execute(new RunnableC0037x1aebc6d9(this, 6));
    }

    public void createCaptureSessionCompat(@NonNull CameraCaptureSession cameraCaptureSession) {
        if (this.mCameraCaptureSessionCompat == null) {
            this.mCameraCaptureSessionCompat = CameraCaptureSessionCompat.toCameraCaptureSessionCompat(cameraCaptureSession, this.mCompatHandler);
        }
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.Opener
    @NonNull
    public SessionConfigurationCompat createSessionConfigurationCompat(int i, @NonNull List<OutputConfigurationCompat> list, @NonNull SynchronizedCaptureSession.StateCallback stateCallback) {
        this.mCaptureSessionStateCallback = stateCallback;
        return new SessionConfigurationCompat(i, list, getExecutor(), new CameraCaptureSession.StateCallback() { // from class: androidx.camera.camera2.internal.SynchronizedCaptureSessionBaseImpl.2
            public AnonymousClass2() {
            }

            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onActive(@NonNull CameraCaptureSession cameraCaptureSession) {
                SynchronizedCaptureSessionBaseImpl.this.createCaptureSessionCompat(cameraCaptureSession);
                SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = SynchronizedCaptureSessionBaseImpl.this;
                synchronizedCaptureSessionBaseImpl.onActive(synchronizedCaptureSessionBaseImpl);
            }

            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            @RequiresApi(api = 26)
            public void onCaptureQueueEmpty(@NonNull CameraCaptureSession cameraCaptureSession) {
                SynchronizedCaptureSessionBaseImpl.this.createCaptureSessionCompat(cameraCaptureSession);
                SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = SynchronizedCaptureSessionBaseImpl.this;
                synchronizedCaptureSessionBaseImpl.onCaptureQueueEmpty(synchronizedCaptureSessionBaseImpl);
            }

            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onClosed(@NonNull CameraCaptureSession cameraCaptureSession) {
                SynchronizedCaptureSessionBaseImpl.this.createCaptureSessionCompat(cameraCaptureSession);
                SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = SynchronizedCaptureSessionBaseImpl.this;
                synchronizedCaptureSessionBaseImpl.onClosed(synchronizedCaptureSessionBaseImpl);
            }

            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onConfigureFailed(@NonNull CameraCaptureSession cameraCaptureSession) {
                CallbackToFutureAdapter.Completer<Void> completer;
                try {
                    SynchronizedCaptureSessionBaseImpl.this.createCaptureSessionCompat(cameraCaptureSession);
                    SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = SynchronizedCaptureSessionBaseImpl.this;
                    synchronizedCaptureSessionBaseImpl.onConfigureFailed(synchronizedCaptureSessionBaseImpl);
                    synchronized (SynchronizedCaptureSessionBaseImpl.this.mLock) {
                        Preconditions.checkNotNull(SynchronizedCaptureSessionBaseImpl.this.mOpenCaptureSessionCompleter, "OpenCaptureSession completer should not null");
                        SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl2 = SynchronizedCaptureSessionBaseImpl.this;
                        completer = synchronizedCaptureSessionBaseImpl2.mOpenCaptureSessionCompleter;
                        synchronizedCaptureSessionBaseImpl2.mOpenCaptureSessionCompleter = null;
                    }
                    completer.setException(new IllegalStateException("onConfigureFailed"));
                } catch (Throwable th) {
                    synchronized (SynchronizedCaptureSessionBaseImpl.this.mLock) {
                        Preconditions.checkNotNull(SynchronizedCaptureSessionBaseImpl.this.mOpenCaptureSessionCompleter, "OpenCaptureSession completer should not null");
                        SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl3 = SynchronizedCaptureSessionBaseImpl.this;
                        CallbackToFutureAdapter.Completer<Void> completer2 = synchronizedCaptureSessionBaseImpl3.mOpenCaptureSessionCompleter;
                        synchronizedCaptureSessionBaseImpl3.mOpenCaptureSessionCompleter = null;
                        completer2.setException(new IllegalStateException("onConfigureFailed"));
                        throw th;
                    }
                }
            }

            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onConfigured(@NonNull CameraCaptureSession cameraCaptureSession) {
                CallbackToFutureAdapter.Completer<Void> completer;
                try {
                    SynchronizedCaptureSessionBaseImpl.this.createCaptureSessionCompat(cameraCaptureSession);
                    SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = SynchronizedCaptureSessionBaseImpl.this;
                    synchronizedCaptureSessionBaseImpl.onConfigured(synchronizedCaptureSessionBaseImpl);
                    synchronized (SynchronizedCaptureSessionBaseImpl.this.mLock) {
                        Preconditions.checkNotNull(SynchronizedCaptureSessionBaseImpl.this.mOpenCaptureSessionCompleter, "OpenCaptureSession completer should not null");
                        SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl2 = SynchronizedCaptureSessionBaseImpl.this;
                        completer = synchronizedCaptureSessionBaseImpl2.mOpenCaptureSessionCompleter;
                        synchronizedCaptureSessionBaseImpl2.mOpenCaptureSessionCompleter = null;
                    }
                    completer.set(null);
                } catch (Throwable th) {
                    synchronized (SynchronizedCaptureSessionBaseImpl.this.mLock) {
                        Preconditions.checkNotNull(SynchronizedCaptureSessionBaseImpl.this.mOpenCaptureSessionCompleter, "OpenCaptureSession completer should not null");
                        SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl3 = SynchronizedCaptureSessionBaseImpl.this;
                        CallbackToFutureAdapter.Completer<Void> completer2 = synchronizedCaptureSessionBaseImpl3.mOpenCaptureSessionCompleter;
                        synchronizedCaptureSessionBaseImpl3.mOpenCaptureSessionCompleter = null;
                        completer2.set(null);
                        throw th;
                    }
                }
            }

            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            public void onReady(@NonNull CameraCaptureSession cameraCaptureSession) {
                SynchronizedCaptureSessionBaseImpl.this.createCaptureSessionCompat(cameraCaptureSession);
                SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = SynchronizedCaptureSessionBaseImpl.this;
                synchronizedCaptureSessionBaseImpl.onReady(synchronizedCaptureSessionBaseImpl);
            }

            @Override // android.hardware.camera2.CameraCaptureSession.StateCallback
            @RequiresApi(api = 23)
            public void onSurfacePrepared(@NonNull CameraCaptureSession cameraCaptureSession, @NonNull Surface surface) {
                SynchronizedCaptureSessionBaseImpl.this.createCaptureSessionCompat(cameraCaptureSession);
                SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = SynchronizedCaptureSessionBaseImpl.this;
                synchronizedCaptureSessionBaseImpl.onSurfacePrepared(synchronizedCaptureSessionBaseImpl, surface);
            }
        });
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public void finishClose() {
        releaseDeferrableSurfaces();
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    @NonNull
    public CameraDevice getDevice() {
        Preconditions.checkNotNull(this.mCameraCaptureSessionCompat);
        return this.mCameraCaptureSessionCompat.toCameraCaptureSession().getDevice();
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.Opener
    @NonNull
    public Executor getExecutor() {
        return this.mExecutor;
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    @Nullable
    public Surface getInputSurface() {
        Preconditions.checkNotNull(this.mCameraCaptureSessionCompat);
        if (Build.VERSION.SDK_INT >= 23) {
            return Api23Impl.getInputSurface(this.mCameraCaptureSessionCompat.toCameraCaptureSession());
        }
        return null;
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    @NonNull
    public ListenableFuture<Void> getOpeningBlocker() {
        return Futures.immediateFuture(null);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    @NonNull
    public SynchronizedCaptureSession.StateCallback getStateCallback() {
        return this;
    }

    public void holdDeferrableSurfaces(@NonNull List<DeferrableSurface> list) {
        synchronized (this.mLock) {
            releaseDeferrableSurfaces();
            DeferrableSurfaces.incrementAll(list);
            this.mHeldDeferrableSurfaces = list;
        }
    }

    public boolean isCameraCaptureSessionOpen() {
        boolean z;
        synchronized (this.mLock) {
            if (this.mOpenCaptureSessionFuture != null) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public void onActive(@NonNull SynchronizedCaptureSession synchronizedCaptureSession) {
        Objects.requireNonNull(this.mCaptureSessionStateCallback);
        this.mCaptureSessionStateCallback.onActive(synchronizedCaptureSession);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public void onCameraDeviceError(int i) {
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    @RequiresApi(api = 26)
    public void onCaptureQueueEmpty(@NonNull SynchronizedCaptureSession synchronizedCaptureSession) {
        Objects.requireNonNull(this.mCaptureSessionStateCallback);
        this.mCaptureSessionStateCallback.onCaptureQueueEmpty(synchronizedCaptureSession);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public void onClosed(@NonNull SynchronizedCaptureSession synchronizedCaptureSession) {
        ListenableFuture<Void> listenableFuture;
        synchronized (this.mLock) {
            try {
                if (!this.mClosed) {
                    this.mClosed = true;
                    Preconditions.checkNotNull(this.mOpenCaptureSessionFuture, "Need to call openCaptureSession before using this API.");
                    listenableFuture = this.mOpenCaptureSessionFuture;
                } else {
                    listenableFuture = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        finishClose();
        if (listenableFuture != null) {
            listenableFuture.addListener(new RunnableC0064x94cd9e7a(this, synchronizedCaptureSession, 1), CameraXExecutors.directExecutor());
        }
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public void onConfigureFailed(@NonNull SynchronizedCaptureSession synchronizedCaptureSession) {
        Objects.requireNonNull(this.mCaptureSessionStateCallback);
        finishClose();
        this.mCaptureSessionRepository.onCaptureSessionConfigureFail(this);
        this.mCaptureSessionStateCallback.onConfigureFailed(synchronizedCaptureSession);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public void onConfigured(@NonNull SynchronizedCaptureSession synchronizedCaptureSession) {
        Objects.requireNonNull(this.mCaptureSessionStateCallback);
        this.mCaptureSessionRepository.onCaptureSessionCreated(this);
        this.mCaptureSessionStateCallback.onConfigured(synchronizedCaptureSession);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public void onReady(@NonNull SynchronizedCaptureSession synchronizedCaptureSession) {
        Objects.requireNonNull(this.mCaptureSessionStateCallback);
        this.mCaptureSessionStateCallback.onReady(synchronizedCaptureSession);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    public void onSessionFinished(@NonNull SynchronizedCaptureSession synchronizedCaptureSession) {
        ListenableFuture<Void> listenableFuture;
        synchronized (this.mLock) {
            try {
                if (!this.mSessionFinished) {
                    this.mSessionFinished = true;
                    Preconditions.checkNotNull(this.mOpenCaptureSessionFuture, "Need to call openCaptureSession before using this API.");
                    listenableFuture = this.mOpenCaptureSessionFuture;
                } else {
                    listenableFuture = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (listenableFuture != null) {
            listenableFuture.addListener(new RunnableC0064x94cd9e7a(this, synchronizedCaptureSession, 0), CameraXExecutors.directExecutor());
        }
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.StateCallback
    @RequiresApi(api = 23)
    public void onSurfacePrepared(@NonNull SynchronizedCaptureSession synchronizedCaptureSession, @NonNull Surface surface) {
        Objects.requireNonNull(this.mCaptureSessionStateCallback);
        this.mCaptureSessionStateCallback.onSurfacePrepared(synchronizedCaptureSession, surface);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.Opener
    @NonNull
    public ListenableFuture<Void> openCaptureSession(@NonNull CameraDevice cameraDevice, @NonNull final SessionConfigurationCompat sessionConfigurationCompat, @NonNull final List<DeferrableSurface> list) {
        synchronized (this.mLock) {
            try {
                if (this.mOpenerDisabled) {
                    return Futures.immediateFailedFuture(new CancellationException("Opener is disabled"));
                }
                this.mCaptureSessionRepository.onCreateCaptureSession(this);
                final CameraDeviceCompat cameraDeviceCompat = CameraDeviceCompat.toCameraDeviceCompat(cameraDevice, this.mCompatHandler);
                ListenableFuture<Void> future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: androidx.camera.camera2.internal.뎹딜뒾땰땰두둔됨된둥뎽들뒉둣뒈땝돠뒤듐돠돶둘뒀딃듰둑도땁된돤땲둣둘땜됴딌듽듻딨돝둥뒷땫딌딜뒨뒾됴돳땯땠땔둡뒹둔땭땜돼땍뎠둔땜듰돛땄뒾땝듬돨땝딜땫땜둑둡따디뎰듼뒨되들뒼땟둠드뒋둬돶뎰땬됴됩됐딽든딀딄뎹땬득딠뒵땦따둥돨뎹뎨돤뒋둥땻듟뒾돛듟땩땳돵됨뎹딌땲디딨땔돵딌돵
                    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
                    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                        Object lambda$openCaptureSession$0;
                        lambda$openCaptureSession$0 = SynchronizedCaptureSessionBaseImpl.this.lambda$openCaptureSession$0(list, cameraDeviceCompat, sessionConfigurationCompat, completer);
                        return lambda$openCaptureSession$0;
                    }
                });
                this.mOpenCaptureSessionFuture = future;
                Futures.addCallback(future, new FutureCallback<Void>() { // from class: androidx.camera.camera2.internal.SynchronizedCaptureSessionBaseImpl.1
                    public AnonymousClass1() {
                    }

                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public void onFailure(@NonNull Throwable th) {
                        SynchronizedCaptureSessionBaseImpl.this.finishClose();
                        SynchronizedCaptureSessionBaseImpl synchronizedCaptureSessionBaseImpl = SynchronizedCaptureSessionBaseImpl.this;
                        synchronizedCaptureSessionBaseImpl.mCaptureSessionRepository.onCaptureSessionConfigureFail(synchronizedCaptureSessionBaseImpl);
                    }

                    @Override // androidx.camera.core.impl.utils.futures.FutureCallback
                    public void onSuccess(@Nullable Void r1) {
                    }
                }, CameraXExecutors.directExecutor());
                return Futures.nonCancellationPropagating(this.mOpenCaptureSessionFuture);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void releaseDeferrableSurfaces() {
        synchronized (this.mLock) {
            try {
                List<DeferrableSurface> list = this.mHeldDeferrableSurfaces;
                if (list != null) {
                    DeferrableSurfaces.decrementAll(list);
                    this.mHeldDeferrableSurfaces = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public int setRepeatingBurstRequests(@NonNull List<CaptureRequest> list, @NonNull CameraCaptureSession.CaptureCallback captureCallback) {
        Preconditions.checkNotNull(this.mCameraCaptureSessionCompat, "Need to call openCaptureSession before using this API.");
        return this.mCameraCaptureSessionCompat.setRepeatingBurstRequests(list, getExecutor(), captureCallback);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public int setSingleRepeatingRequest(@NonNull CaptureRequest captureRequest, @NonNull CameraCaptureSession.CaptureCallback captureCallback) {
        Preconditions.checkNotNull(this.mCameraCaptureSessionCompat, "Need to call openCaptureSession before using this API.");
        return this.mCameraCaptureSessionCompat.setSingleRepeatingRequest(captureRequest, getExecutor(), captureCallback);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.Opener
    @NonNull
    public ListenableFuture<List<Surface>> startWithDeferrableSurface(@NonNull List<DeferrableSurface> list, long j) {
        synchronized (this.mLock) {
            try {
                if (this.mOpenerDisabled) {
                    return Futures.immediateFailedFuture(new CancellationException("Opener is disabled"));
                }
                FutureChain transformAsync = FutureChain.from(DeferrableSurfaces.surfaceListWithTimeout(list, false, j, getExecutor(), this.mScheduledExecutorService)).transformAsync(new C0035xd2bcb0cf(this, list, 2), getExecutor());
                this.mStartingSurface = transformAsync;
                return Futures.nonCancellationPropagating(transformAsync);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession.Opener
    public boolean stop() {
        boolean z;
        ListenableFuture<List<Surface>> listenableFuture = null;
        try {
            synchronized (this.mLock) {
                try {
                    if (!this.mOpenerDisabled) {
                        ListenableFuture<List<Surface>> listenableFuture2 = this.mStartingSurface;
                        if (listenableFuture2 != null) {
                            listenableFuture = listenableFuture2;
                        }
                        this.mOpenerDisabled = true;
                    }
                    z = !isCameraCaptureSessionOpen();
                } finally {
                }
            }
            return z;
        } finally {
            if (listenableFuture != null) {
                listenableFuture.cancel(true);
            }
        }
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public void stopRepeating() {
        Preconditions.checkNotNull(this.mCameraCaptureSessionCompat, "Need to call openCaptureSession before using this API.");
        this.mCameraCaptureSessionCompat.toCameraCaptureSession().stopRepeating();
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    @NonNull
    public CameraCaptureSessionCompat toCameraCaptureSessionCompat() {
        Preconditions.checkNotNull(this.mCameraCaptureSessionCompat);
        return this.mCameraCaptureSessionCompat;
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public int captureBurstRequests(@NonNull List<CaptureRequest> list, @NonNull Executor executor, @NonNull CameraCaptureSession.CaptureCallback captureCallback) {
        Preconditions.checkNotNull(this.mCameraCaptureSessionCompat, "Need to call openCaptureSession before using this API.");
        return this.mCameraCaptureSessionCompat.captureBurstRequests(list, executor, captureCallback);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public int captureSingleRequest(@NonNull CaptureRequest captureRequest, @NonNull Executor executor, @NonNull CameraCaptureSession.CaptureCallback captureCallback) {
        Preconditions.checkNotNull(this.mCameraCaptureSessionCompat, "Need to call openCaptureSession before using this API.");
        return this.mCameraCaptureSessionCompat.captureSingleRequest(captureRequest, executor, captureCallback);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public int setRepeatingBurstRequests(@NonNull List<CaptureRequest> list, @NonNull Executor executor, @NonNull CameraCaptureSession.CaptureCallback captureCallback) {
        Preconditions.checkNotNull(this.mCameraCaptureSessionCompat, "Need to call openCaptureSession before using this API.");
        return this.mCameraCaptureSessionCompat.setRepeatingBurstRequests(list, executor, captureCallback);
    }

    @Override // androidx.camera.camera2.internal.SynchronizedCaptureSession
    public int setSingleRepeatingRequest(@NonNull CaptureRequest captureRequest, @NonNull Executor executor, @NonNull CameraCaptureSession.CaptureCallback captureCallback) {
        Preconditions.checkNotNull(this.mCameraCaptureSessionCompat, "Need to call openCaptureSession before using this API.");
        return this.mCameraCaptureSessionCompat.setSingleRepeatingRequest(captureRequest, executor, captureCallback);
    }
}
