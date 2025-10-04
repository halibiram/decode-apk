package androidx.camera.camera2.interop;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.camera.camera2.impl.Camera2ImplConfig;
import androidx.camera.camera2.internal.Camera2CameraControlImpl;
import androidx.camera.camera2.interop.CaptureRequestOptions;
import androidx.camera.core.CameraControl;
import androidx.camera.core.impl.CameraControlInternal;
import androidx.camera.core.impl.Config;
import androidx.camera.core.impl.utils.futures.Futures;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.core.util.Preconditions;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.C0487xd0ecd21f;
import defpackage.RunnableC0395x2fa10a30;
import defpackage.RunnableC0450xb2a4f6ac;
import defpackage.RunnableC0486xf79086ed;
import java.util.concurrent.Executor;

@ExperimentalCamera2Interop
/* loaded from: classes.dex */
public final class Camera2CameraControl {
    private final Camera2CameraControlImpl mCamera2CameraControlImpl;
    CallbackToFutureAdapter.Completer<Void> mCompleter;
    final Executor mExecutor;
    private boolean mIsActive = false;
    private boolean mPendingUpdate = false;
    final Object mLock = new Object();

    @GuardedBy("mLock")
    private Camera2ImplConfig.Builder mBuilder = new Camera2ImplConfig.Builder();

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Camera2CameraControl(@NonNull Camera2CameraControlImpl camera2CameraControlImpl, @NonNull Executor executor) {
        this.mCamera2CameraControlImpl = camera2CameraControlImpl;
        this.mExecutor = executor;
    }

    private void addCaptureRequestOptionsInternal(@NonNull CaptureRequestOptions captureRequestOptions) {
        synchronized (this.mLock) {
            this.mBuilder.insertAllOptions(captureRequestOptions);
        }
    }

    private void clearCaptureRequestOptionsInternal() {
        synchronized (this.mLock) {
            this.mBuilder = new Camera2ImplConfig.Builder();
        }
    }

    public void completeInFlightUpdate() {
        CallbackToFutureAdapter.Completer<Void> completer = this.mCompleter;
        if (completer != null) {
            completer.set(null);
            this.mCompleter = null;
        }
    }

    private void failInFlightUpdate(@Nullable Exception exc) {
        CallbackToFutureAdapter.Completer<Void> completer = this.mCompleter;
        if (completer != null) {
            if (exc == null) {
                exc = new Exception("Camera2CameraControl failed with unknown error.");
            }
            completer.setException(exc);
            this.mCompleter = null;
        }
    }

    @NonNull
    public static Camera2CameraControl from(@NonNull CameraControl cameraControl) {
        CameraControlInternal implementation = ((CameraControlInternal) cameraControl).getImplementation();
        Preconditions.checkArgument(implementation instanceof Camera2CameraControlImpl, "CameraControl doesn't contain Camera2 implementation.");
        return ((Camera2CameraControlImpl) implementation).getCamera2CameraControl();
    }

    public /* synthetic */ Object lambda$addCaptureRequestOptions$3(CallbackToFutureAdapter.Completer completer) {
        this.mExecutor.execute(new RunnableC0486xf79086ed(this, completer, 2));
        return "addCaptureRequestOptions";
    }

    public /* synthetic */ Object lambda$clearCaptureRequestOptions$5(CallbackToFutureAdapter.Completer completer) {
        this.mExecutor.execute(new RunnableC0486xf79086ed(this, completer, 0));
        return "clearCaptureRequestOptions";
    }

    public /* synthetic */ Object lambda$setCaptureRequestOptions$1(CallbackToFutureAdapter.Completer completer) {
        this.mExecutor.execute(new RunnableC0486xf79086ed(this, completer, 1));
        return "setCaptureRequestOptions";
    }

    /* renamed from: setActiveInternal */
    public void lambda$setActive$6(boolean z) {
        if (this.mIsActive == z) {
            return;
        }
        this.mIsActive = z;
        if (z) {
            if (this.mPendingUpdate) {
                updateSession();
                return;
            }
            return;
        }
        failInFlightUpdate(new CameraControl.OperationCanceledException("The camera control has became inactive."));
    }

    /* renamed from: updateConfig, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public void lambda$setCaptureRequestOptions$0(@NonNull CallbackToFutureAdapter.Completer<Void> completer) {
        this.mPendingUpdate = true;
        failInFlightUpdate(new CameraControl.OperationCanceledException("Camera2CameraControl was updated with new options."));
        this.mCompleter = completer;
        if (this.mIsActive) {
            updateSession();
        }
    }

    private void updateSession() {
        this.mCamera2CameraControlImpl.updateSessionConfigAsync().addListener(new RunnableC0450xb2a4f6ac(this, 1), this.mExecutor);
        this.mPendingUpdate = false;
    }

    @NonNull
    public ListenableFuture<Void> addCaptureRequestOptions(@NonNull CaptureRequestOptions captureRequestOptions) {
        addCaptureRequestOptionsInternal(captureRequestOptions);
        return Futures.nonCancellationPropagating(CallbackToFutureAdapter.getFuture(new C0487xd0ecd21f(this, 0)));
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void applyOptionsToBuilder(@NonNull Camera2ImplConfig.Builder builder) {
        synchronized (this.mLock) {
            builder.insertAllOptions(this.mBuilder.getMutableConfig(), Config.OptionPriority.ALWAYS_OVERRIDE);
        }
    }

    @NonNull
    public ListenableFuture<Void> clearCaptureRequestOptions() {
        clearCaptureRequestOptionsInternal();
        return Futures.nonCancellationPropagating(CallbackToFutureAdapter.getFuture(new C0487xd0ecd21f(this, 2)));
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public Camera2ImplConfig getCamera2ImplConfig() {
        Camera2ImplConfig build;
        synchronized (this.mLock) {
            build = this.mBuilder.build();
        }
        return build;
    }

    @NonNull
    public CaptureRequestOptions getCaptureRequestOptions() {
        CaptureRequestOptions build;
        synchronized (this.mLock) {
            build = CaptureRequestOptions.Builder.from(this.mBuilder.build()).build();
        }
        return build;
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public void setActive(boolean z) {
        this.mExecutor.execute(new RunnableC0395x2fa10a30(2, this, z));
    }

    @NonNull
    public ListenableFuture<Void> setCaptureRequestOptions(@NonNull CaptureRequestOptions captureRequestOptions) {
        clearCaptureRequestOptionsInternal();
        addCaptureRequestOptionsInternal(captureRequestOptions);
        return Futures.nonCancellationPropagating(CallbackToFutureAdapter.getFuture(new C0487xd0ecd21f(this, 1)));
    }
}
