package androidx.camera.camera2.internal.compat;

import android.content.Context;
import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraDevice;
import android.hardware.camera2.CameraManager;
import android.os.Handler;
import android.util.ArrayMap;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RequiresPermission;
import androidx.annotation.VisibleForTesting;
import androidx.camera.camera2.internal.compat.ApiCompat;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;
import androidx.camera.core.impl.utils.MainThreadAsyncHandler;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class CameraManagerCompat {

    @GuardedBy("mCameraCharacteristicsMap")
    private final Map<String, CameraCharacteristicsCompat> mCameraCharacteristicsMap = new ArrayMap(4);
    private final CameraManagerCompatImpl mImpl;

    /* loaded from: classes.dex */
    public static final class AvailabilityCallbackExecutorWrapper extends CameraManager.AvailabilityCallback {
        private final Executor mExecutor;
        final CameraManager.AvailabilityCallback mWrappedCallback;
        private final Object mLock = new Object();

        @GuardedBy("mLock")
        private boolean mDisabled = false;

        public AvailabilityCallbackExecutorWrapper(@NonNull Executor executor, @NonNull CameraManager.AvailabilityCallback availabilityCallback) {
            this.mExecutor = executor;
            this.mWrappedCallback = availabilityCallback;
        }

        public /* synthetic */ void lambda$onCameraAccessPrioritiesChanged$0() {
            ApiCompat.Api29Impl.onCameraAccessPrioritiesChanged(this.mWrappedCallback);
        }

        public /* synthetic */ void lambda$onCameraAvailable$1(String str) {
            this.mWrappedCallback.onCameraAvailable(str);
        }

        public /* synthetic */ void lambda$onCameraUnavailable$2(String str) {
            this.mWrappedCallback.onCameraUnavailable(str);
        }

        @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
        @RequiresApi(29)
        public void onCameraAccessPrioritiesChanged() {
            synchronized (this.mLock) {
                try {
                    if (!this.mDisabled) {
                        this.mExecutor.execute(new Runnable() { // from class: androidx.camera.camera2.internal.compat.뎨돸뒘둬땭돳땵돶됴듰뒼땐땋듨뒛돶둘땥땨뒨둔땲딠되뎨듻들딌둣땰도뒾딜둑땲뒐돛뎸딝땩딎듸뎹뒋듬딜땭뒛듟둬됫땔딎뒐땬뒙뒙딸돷딹돸돵딁땬땍듬득땅땫듸땍땝딀듨둡득뒀둡돶딽도뒤땐듰뎹딄뒙도돼뎰뒋뎻땸땲땸돨땨돰듻드둠돵뒼땤딠둘둔됩딁뒻땪땹돠뒷뒵되뎽뒋돨듼땸될땩돨돶땪돳돷땁딎
                            @Override // java.lang.Runnable
                            public final void run() {
                                CameraManagerCompat.AvailabilityCallbackExecutorWrapper.this.lambda$onCameraAccessPrioritiesChanged$0();
                            }
                        });
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
        public void onCameraAvailable(@NonNull String str) {
            synchronized (this.mLock) {
                try {
                    if (!this.mDisabled) {
                        this.mExecutor.execute(new RunnableC0021x3db60231(this, str, 0));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // android.hardware.camera2.CameraManager.AvailabilityCallback
        public void onCameraUnavailable(@NonNull String str) {
            synchronized (this.mLock) {
                try {
                    if (!this.mDisabled) {
                        this.mExecutor.execute(new RunnableC0021x3db60231(this, str, 1));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void setDisabled() {
            synchronized (this.mLock) {
                this.mDisabled = true;
            }
        }
    }

    /* loaded from: classes.dex */
    public interface CameraManagerCompatImpl {
        @NonNull
        CameraCharacteristics getCameraCharacteristics(@NonNull String str);

        @NonNull
        String[] getCameraIdList();

        @NonNull
        CameraManager getCameraManager();

        @NonNull
        Set<Set<String>> getConcurrentCameraIds();

        @RequiresPermission("android.permission.CAMERA")
        void openCamera(@NonNull String str, @NonNull Executor executor, @NonNull CameraDevice.StateCallback stateCallback);

        void registerAvailabilityCallback(@NonNull Executor executor, @NonNull CameraManager.AvailabilityCallback availabilityCallback);

        void unregisterAvailabilityCallback(@NonNull CameraManager.AvailabilityCallback availabilityCallback);
    }

    private CameraManagerCompat(CameraManagerCompatImpl cameraManagerCompatImpl) {
        this.mImpl = cameraManagerCompatImpl;
    }

    @NonNull
    public static CameraManagerCompat from(@NonNull Context context) {
        return from(context, MainThreadAsyncHandler.getInstance());
    }

    @NonNull
    public CameraCharacteristicsCompat getCameraCharacteristicsCompat(@NonNull String str) {
        CameraCharacteristicsCompat cameraCharacteristicsCompat;
        synchronized (this.mCameraCharacteristicsMap) {
            cameraCharacteristicsCompat = this.mCameraCharacteristicsMap.get(str);
            if (cameraCharacteristicsCompat == null) {
                try {
                    cameraCharacteristicsCompat = CameraCharacteristicsCompat.toCameraCharacteristicsCompat(this.mImpl.getCameraCharacteristics(str), str);
                    this.mCameraCharacteristicsMap.put(str, cameraCharacteristicsCompat);
                } catch (AssertionError e) {
                    throw new CameraAccessExceptionCompat(CameraAccessExceptionCompat.CAMERA_CHARACTERISTICS_CREATION_ERROR, e.getMessage(), e);
                }
            }
        }
        return cameraCharacteristicsCompat;
    }

    @NonNull
    public String[] getCameraIdList() {
        return this.mImpl.getCameraIdList();
    }

    @NonNull
    public Set<Set<String>> getConcurrentCameraIds() {
        return this.mImpl.getConcurrentCameraIds();
    }

    @RequiresPermission("android.permission.CAMERA")
    public void openCamera(@NonNull String str, @NonNull Executor executor, @NonNull CameraDevice.StateCallback stateCallback) {
        this.mImpl.openCamera(str, executor, stateCallback);
    }

    public void registerAvailabilityCallback(@NonNull Executor executor, @NonNull CameraManager.AvailabilityCallback availabilityCallback) {
        this.mImpl.registerAvailabilityCallback(executor, availabilityCallback);
    }

    public void unregisterAvailabilityCallback(@NonNull CameraManager.AvailabilityCallback availabilityCallback) {
        this.mImpl.unregisterAvailabilityCallback(availabilityCallback);
    }

    @NonNull
    public CameraManager unwrap() {
        return this.mImpl.getCameraManager();
    }

    @NonNull
    public static CameraManagerCompat from(@NonNull Context context, @NonNull Handler handler) {
        return new CameraManagerCompat(AbstractC0023x1db10c9d.m176xfbe0c504(context, handler));
    }

    @NonNull
    @VisibleForTesting
    public static CameraManagerCompat from(@NonNull CameraManagerCompatImpl cameraManagerCompatImpl) {
        return new CameraManagerCompat(cameraManagerCompatImpl);
    }
}
