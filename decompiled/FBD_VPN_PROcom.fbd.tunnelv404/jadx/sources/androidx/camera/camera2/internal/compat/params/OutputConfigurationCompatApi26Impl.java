package androidx.camera.camera2.internal.compat.params;

import android.annotation.SuppressLint;
import android.hardware.camera2.params.OutputConfiguration;
import android.view.Surface;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.core.Logger;
import androidx.core.util.Preconditions;
import j$.util.Objects;
import java.lang.reflect.Field;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(26)
/* loaded from: classes.dex */
public class OutputConfigurationCompatApi26Impl extends OutputConfigurationCompatApi24Impl {
    private static final String MAX_SHARED_SURFACES_COUNT_FIELD = "MAX_SURFACES_COUNT";
    private static final String SURFACES_FIELD = "mSurfaces";

    /* loaded from: classes.dex */
    public static final class OutputConfigurationParamsApi26 {
        long mDynamicRangeProfile = 1;

        @NonNull
        final OutputConfiguration mOutputConfiguration;

        @Nullable
        String mPhysicalCameraId;

        public OutputConfigurationParamsApi26(@NonNull OutputConfiguration outputConfiguration) {
            this.mOutputConfiguration = outputConfiguration;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof OutputConfigurationParamsApi26)) {
                return false;
            }
            OutputConfigurationParamsApi26 outputConfigurationParamsApi26 = (OutputConfigurationParamsApi26) obj;
            if (!Objects.equals(this.mOutputConfiguration, outputConfigurationParamsApi26.mOutputConfiguration) || this.mDynamicRangeProfile != outputConfigurationParamsApi26.mDynamicRangeProfile || !Objects.equals(this.mPhysicalCameraId, outputConfigurationParamsApi26.mPhysicalCameraId)) {
                return false;
            }
            return true;
        }

        public int hashCode() {
            int hashCode;
            int hashCode2 = this.mOutputConfiguration.hashCode() ^ 31;
            int i = (hashCode2 << 5) - hashCode2;
            String str = this.mPhysicalCameraId;
            if (str == null) {
                hashCode = 0;
            } else {
                hashCode = str.hashCode();
            }
            int i2 = hashCode ^ i;
            int i3 = (i2 << 5) - i2;
            long j = this.mDynamicRangeProfile;
            return ((int) (j ^ (j >>> 32))) ^ i3;
        }
    }

    public OutputConfigurationCompatApi26Impl(@NonNull Surface surface) {
        this(new OutputConfigurationParamsApi26(new OutputConfiguration(surface)));
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    private static int getMaxSharedSurfaceCountApi26() {
        Field declaredField = OutputConfiguration.class.getDeclaredField(MAX_SHARED_SURFACES_COUNT_FIELD);
        declaredField.setAccessible(true);
        return declaredField.getInt(null);
    }

    @SuppressLint({"SoonBlockedPrivateApi"})
    private static List<Surface> getMutableSurfaceListApi26(OutputConfiguration outputConfiguration) {
        Field declaredField = OutputConfiguration.class.getDeclaredField(SURFACES_FIELD);
        declaredField.setAccessible(true);
        return (List) declaredField.get(outputConfiguration);
    }

    @RequiresApi(26)
    public static OutputConfigurationCompatApi26Impl wrap(@NonNull OutputConfiguration outputConfiguration) {
        return new OutputConfigurationCompatApi26Impl(new OutputConfigurationParamsApi26(outputConfiguration));
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatBaseImpl, androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public void addSurface(@NonNull Surface surface) {
        ((OutputConfiguration) getOutputConfiguration()).addSurface(surface);
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatApi24Impl, androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatBaseImpl, androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public void enableSurfaceSharing() {
        ((OutputConfiguration) getOutputConfiguration()).enableSurfaceSharing();
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatApi24Impl, androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatBaseImpl, androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public long getDynamicRangeProfile() {
        return ((OutputConfigurationParamsApi26) this.mObject).mDynamicRangeProfile;
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatBaseImpl, androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public int getMaxSharedSurfaceCount() {
        try {
            return getMaxSharedSurfaceCountApi26();
        } catch (IllegalAccessException | NoSuchFieldException e) {
            Logger.e("OutputConfigCompat", "Unable to retrieve max shared surface count.", e);
            return super.getMaxSharedSurfaceCount();
        }
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatApi24Impl, androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatBaseImpl, androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    @NonNull
    public Object getOutputConfiguration() {
        Preconditions.checkArgument(this.mObject instanceof OutputConfigurationParamsApi26);
        return ((OutputConfigurationParamsApi26) this.mObject).mOutputConfiguration;
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatApi24Impl, androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatBaseImpl, androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    @Nullable
    public String getPhysicalCameraId() {
        return ((OutputConfigurationParamsApi26) this.mObject).mPhysicalCameraId;
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatApi24Impl, androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatBaseImpl, androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    @NonNull
    public List<Surface> getSurfaces() {
        return ((OutputConfiguration) getOutputConfiguration()).getSurfaces();
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatApi24Impl, androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatBaseImpl
    public final boolean isSurfaceSharingEnabled() {
        throw new AssertionError("isSurfaceSharingEnabled() should not be called on API >= 26");
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatBaseImpl, androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public void removeSurface(@NonNull Surface surface) {
        if (getSurface() != surface) {
            try {
                if (!getMutableSurfaceListApi26((OutputConfiguration) getOutputConfiguration()).remove(surface)) {
                    throw new IllegalArgumentException("Surface is not part of this output configuration");
                }
                return;
            } catch (IllegalAccessException | NoSuchFieldException e) {
                Logger.e("OutputConfigCompat", "Unable to remove surface from this output configuration.", e);
                return;
            }
        }
        throw new IllegalArgumentException("Cannot remove surface associated with this output configuration");
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatApi24Impl, androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatBaseImpl, androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public void setDynamicRangeProfile(long j) {
        ((OutputConfigurationParamsApi26) this.mObject).mDynamicRangeProfile = j;
    }

    @Override // androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatApi24Impl, androidx.camera.camera2.internal.compat.params.OutputConfigurationCompatBaseImpl, androidx.camera.camera2.internal.compat.params.OutputConfigurationCompat.OutputConfigurationCompatImpl
    public void setPhysicalCameraId(@Nullable String str) {
        ((OutputConfigurationParamsApi26) this.mObject).mPhysicalCameraId = str;
    }

    public OutputConfigurationCompatApi26Impl(int i, @NonNull Surface surface) {
        this(new OutputConfigurationParamsApi26(new OutputConfiguration(i, surface)));
    }

    public OutputConfigurationCompatApi26Impl(@NonNull Object obj) {
        super(obj);
    }
}
