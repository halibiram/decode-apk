package androidx.camera.camera2.internal.compat.params;

import android.annotation.SuppressLint;
import android.os.Build;
import android.util.Size;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat;
import androidx.camera.core.Logger;
import androidx.core.util.Preconditions;
import j$.util.Objects;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class OutputConfigurationCompatBaseImpl implements OutputConfigurationCompat.OutputConfigurationCompatImpl {
    static final String TAG = "OutputConfigCompat";
    final Object mObject;

    /* loaded from: classes.dex */
    public static final class OutputConfigurationParamsApi21 {
        private static final String DETECT_SURFACE_TYPE_METHOD = "detectSurfaceType";
        private static final String GET_GENERATION_ID_METHOD = "getGenerationId";
        private static final String GET_SURFACE_SIZE_METHOD = "getSurfaceSize";
        private static final String LEGACY_CAMERA_DEVICE_CLASS = "android.hardware.camera2.legacy.LegacyCameraDevice";
        static final int MAX_SURFACES_COUNT = 1;
        final int mConfiguredFormat;
        final int mConfiguredGenerationId;
        final Size mConfiguredSize;

        @Nullable
        String mPhysicalCameraId;
        final List<Surface> mSurfaces;
        boolean mIsShared = false;
        long mDynamicRangeProfile = 1;

        public OutputConfigurationParamsApi21(@NonNull Surface surface) {
            Preconditions.checkNotNull(surface, "Surface must not be null");
            this.mSurfaces = Collections.singletonList(surface);
            this.mConfiguredSize = getSurfaceSize(surface);
            this.mConfiguredFormat = getSurfaceFormat(surface);
            this.mConfiguredGenerationId = getSurfaceGenerationId(surface);
        }

        @SuppressLint({"BlockedPrivateApi", "BanUncheckedReflection"})
        private static int getSurfaceFormat(@NonNull Surface surface) {
            try {
                Method declaredMethod = Class.forName(LEGACY_CAMERA_DEVICE_CLASS).getDeclaredMethod(DETECT_SURFACE_TYPE_METHOD, Surface.class);
                if (Build.VERSION.SDK_INT < 22) {
                    declaredMethod.setAccessible(true);
                }
                return ((Integer) declaredMethod.invoke(null, surface)).intValue();
            } catch (ClassNotFoundException e) {
                e = e;
                Logger.e(OutputConfigurationCompatBaseImpl.TAG, "Unable to retrieve surface format.", e);
                return 0;
            } catch (IllegalAccessException e2) {
                e = e2;
                Logger.e(OutputConfigurationCompatBaseImpl.TAG, "Unable to retrieve surface format.", e);
                return 0;
            } catch (NoSuchMethodException e3) {
                e = e3;
                Logger.e(OutputConfigurationCompatBaseImpl.TAG, "Unable to retrieve surface format.", e);
                return 0;
            } catch (InvocationTargetException e4) {
                e = e4;
                Logger.e(OutputConfigurationCompatBaseImpl.TAG, "Unable to retrieve surface format.", e);
                return 0;
            }
        }

        @SuppressLint({"SoonBlockedPrivateApi", "BlockedPrivateApi", "BanUncheckedReflection"})
        private static int getSurfaceGenerationId(@NonNull Surface surface) {
            try {
                return ((Integer) Surface.class.getDeclaredMethod(GET_GENERATION_ID_METHOD, null).invoke(surface, null)).intValue();
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                Logger.e(OutputConfigurationCompatBaseImpl.TAG, "Unable to retrieve surface generation id.", e);
                return -1;
            }
        }

        @SuppressLint({"BlockedPrivateApi", "BanUncheckedReflection"})
        private static Size getSurfaceSize(@NonNull Surface surface) {
            try {
                Method declaredMethod = Class.forName(LEGACY_CAMERA_DEVICE_CLASS).getDeclaredMethod(GET_SURFACE_SIZE_METHOD, Surface.class);
                declaredMethod.setAccessible(true);
                return (Size) declaredMethod.invoke(null, surface);
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                Logger.e(OutputConfigurationCompatBaseImpl.TAG, "Unable to retrieve surface size.", e);
                return null;
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof OutputConfigurationParamsApi21)) {
                return false;
            }
            OutputConfigurationParamsApi21 outputConfigurationParamsApi21 = (OutputConfigurationParamsApi21) obj;
            if (!this.mConfiguredSize.equals(outputConfigurationParamsApi21.mConfiguredSize) || this.mConfiguredFormat != outputConfigurationParamsApi21.mConfiguredFormat || this.mConfiguredGenerationId != outputConfigurationParamsApi21.mConfiguredGenerationId || this.mIsShared != outputConfigurationParamsApi21.mIsShared || this.mDynamicRangeProfile != outputConfigurationParamsApi21.mDynamicRangeProfile || !Objects.equals(this.mPhysicalCameraId, outputConfigurationParamsApi21.mPhysicalCameraId)) {
                return false;
            }
            int min = Math.min(this.mSurfaces.size(), outputConfigurationParamsApi21.mSurfaces.size());
            for (int i = 0; i < min; i++) {
                if (this.mSurfaces.get(i) != outputConfigurationParamsApi21.mSurfaces.get(i)) {
                    return false;
                }
            }
            return true;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.mSurfaces.hashCode() ^ 31;
            int i = this.mConfiguredGenerationId ^ ((hashCode2 << 5) - hashCode2);
            int hashCode3 = this.mConfiguredSize.hashCode() ^ ((i << 5) - i);
            int i2 = this.mConfiguredFormat ^ ((hashCode3 << 5) - hashCode3);
            int i3 = (this.mIsShared ? 1 : 0) ^ ((i2 << 5) - i2);
            int i4 = (i3 << 5) - i3;
            String str = this.mPhysicalCameraId;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i5 = hashCode ^ i4;
            int i6 = (i5 << 5) - i5;
            long j = this.mDynamicRangeProfile;
            return ((int) (j ^ (j >>> 32))) ^ i6;
        }
    }

    public OutputConfigurationCompatBaseImpl(@NonNull Surface surface) {
        this.mObject = new OutputConfigurationParamsApi21(surface);
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public void addSurface(@NonNull Surface surface) {
        Preconditions.checkNotNull(surface, "Surface must not be null");
        if (getSurface() != surface) {
            if (!isSurfaceSharingEnabled()) {
                throw new IllegalStateException("Cannot have 2 surfaces for a non-sharing configuration");
            }
            throw new IllegalArgumentException("Exceeds maximum number of surfaces");
        }
        throw new IllegalStateException("Surface is already added!");
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public void enableSurfaceSharing() {
        ((OutputConfigurationParamsApi21) this.mObject).mIsShared = true;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof OutputConfigurationCompatBaseImpl)) {
            return false;
        }
        return Objects.equals(this.mObject, ((OutputConfigurationCompatBaseImpl) obj).mObject);
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public long getDynamicRangeProfile() {
        return ((OutputConfigurationParamsApi21) this.mObject).mDynamicRangeProfile;
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public int getMaxSharedSurfaceCount() {
        return 1;
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public int getMirrorMode() {
        return 0;
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    @Nullable
    public Object getOutputConfiguration() {
        return null;
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    @Nullable
    public String getPhysicalCameraId() {
        return ((OutputConfigurationParamsApi21) this.mObject).mPhysicalCameraId;
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public long getStreamUseCase() {
        return -1L;
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    @Nullable
    public Surface getSurface() {
        List<Surface> list = ((OutputConfigurationParamsApi21) this.mObject).mSurfaces;
        if (list.size() == 0) {
            return null;
        }
        return list.get(0);
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public int getSurfaceGroupId() {
        return -1;
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    @NonNull
    public List<Surface> getSurfaces() {
        return ((OutputConfigurationParamsApi21) this.mObject).mSurfaces;
    }

    public int hashCode() {
        return this.mObject.hashCode();
    }

    public boolean isSurfaceSharingEnabled() {
        return ((OutputConfigurationParamsApi21) this.mObject).mIsShared;
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public void removeSurface(@NonNull Surface surface) {
        if (getSurface() == surface) {
            throw new IllegalArgumentException("Cannot remove surface associated with this output configuration");
        }
        throw new IllegalArgumentException("Surface is not part of this output configuration");
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public void setDynamicRangeProfile(long j) {
        ((OutputConfigurationParamsApi21) this.mObject).mDynamicRangeProfile = j;
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public void setMirrorMode(int i) {
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public void setPhysicalCameraId(@Nullable String str) {
        ((OutputConfigurationParamsApi21) this.mObject).mPhysicalCameraId = str;
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public void setStreamUseCase(long j) {
    }

    public OutputConfigurationCompatBaseImpl(@NonNull Object obj) {
        this.mObject = obj;
    }
}
