package androidx.camera.camera2.internal;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.camera2.internal.compat.CameraAccessExceptionCompat;
import androidx.camera.camera2.internal.compat.CameraManagerCompat;
import androidx.camera.camera2.internal.concurrent.Camera2CameraCoordinator;
import androidx.camera.core.CameraSelector;
import androidx.camera.core.Logger;
import androidx.camera.core.concurrent.CameraCoordinator;
import androidx.camera.core.impl.CameraFactory;
import androidx.camera.core.impl.CameraInternal;
import androidx.camera.core.impl.CameraStateRegistry;
import androidx.camera.core.impl.CameraThreadConfig;
import coil3.disk.DiskLruCache;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class Camera2CameraFactory implements CameraFactory {
    private static final int DEFAULT_ALLOWED_CONCURRENT_OPEN_CAMERAS = 1;
    private static final String TAG = "Camera2CameraFactory";
    private final List<String> mAvailableCameraIds;
    private final CameraCoordinator mCameraCoordinator;
    private final Map<String, Camera2CameraInfoImpl> mCameraInfos = new HashMap();
    private final CameraManagerCompat mCameraManager;
    private final long mCameraOpenRetryMaxTimeoutInMs;
    private final CameraStateRegistry mCameraStateRegistry;

    @NonNull
    private final Context mContext;
    private final DisplayInfoManager mDisplayInfoManager;
    private final CameraThreadConfig mThreadConfig;

    public Camera2CameraFactory(@NonNull Context context, @NonNull CameraThreadConfig cameraThreadConfig, @Nullable CameraSelector cameraSelector, long j) {
        this.mContext = context;
        this.mThreadConfig = cameraThreadConfig;
        CameraManagerCompat from = CameraManagerCompat.from(context, cameraThreadConfig.getSchedulerHandler());
        this.mCameraManager = from;
        this.mDisplayInfoManager = DisplayInfoManager.getInstance(context);
        this.mAvailableCameraIds = getBackwardCompatibleCameraIds(CameraSelectionOptimizer.getSelectedAvailableCameraIds(this, cameraSelector));
        Camera2CameraCoordinator camera2CameraCoordinator = new Camera2CameraCoordinator(from);
        this.mCameraCoordinator = camera2CameraCoordinator;
        CameraStateRegistry cameraStateRegistry = new CameraStateRegistry(camera2CameraCoordinator, 1);
        this.mCameraStateRegistry = cameraStateRegistry;
        camera2CameraCoordinator.addListener(cameraStateRegistry);
        this.mCameraOpenRetryMaxTimeoutInMs = j;
    }

    private List<String> getBackwardCompatibleCameraIds(@NonNull List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!str.equals("0") && !str.equals(DiskLruCache.VERSION)) {
                if (CameraIdUtil.isBackwardCompatible(this.mCameraManager, str)) {
                    arrayList.add(str);
                } else {
                    Logger.d(TAG, "Camera " + str + " is filtered out because its capabilities do not contain REQUEST_AVAILABLE_CAPABILITIES_BACKWARD_COMPATIBLE.");
                }
            } else {
                arrayList.add(str);
            }
        }
        return arrayList;
    }

    @Override // androidx.camera.core.impl.CameraFactory
    @NonNull
    public Set<String> getAvailableCameraIds() {
        return new LinkedHashSet(this.mAvailableCameraIds);
    }

    @Override // androidx.camera.core.impl.CameraFactory
    @NonNull
    public CameraInternal getCamera(@NonNull String str) {
        if (this.mAvailableCameraIds.contains(str)) {
            return new Camera2CameraImpl(this.mContext, this.mCameraManager, str, getCameraInfo(str), this.mCameraCoordinator, this.mCameraStateRegistry, this.mThreadConfig.getCameraExecutor(), this.mThreadConfig.getSchedulerHandler(), this.mDisplayInfoManager, this.mCameraOpenRetryMaxTimeoutInMs);
        }
        throw new IllegalArgumentException("The given camera id is not on the available camera id list.");
    }

    @Override // androidx.camera.core.impl.CameraFactory
    @NonNull
    public CameraCoordinator getCameraCoordinator() {
        return this.mCameraCoordinator;
    }

    public Camera2CameraInfoImpl getCameraInfo(@NonNull String str) {
        try {
            Camera2CameraInfoImpl camera2CameraInfoImpl = this.mCameraInfos.get(str);
            if (camera2CameraInfoImpl == null) {
                Camera2CameraInfoImpl camera2CameraInfoImpl2 = new Camera2CameraInfoImpl(str, this.mCameraManager);
                this.mCameraInfos.put(str, camera2CameraInfoImpl2);
                return camera2CameraInfoImpl2;
            }
            return camera2CameraInfoImpl;
        } catch (CameraAccessExceptionCompat e) {
            throw CameraUnavailableExceptionHelper.createFrom(e);
        }
    }

    @Override // androidx.camera.core.impl.CameraFactory
    @NonNull
    public CameraManagerCompat getCameraManager() {
        return this.mCameraManager;
    }
}
