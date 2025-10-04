package androidx.camera.core.impl;

import android.util.Range;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.DynamicRange;
import androidx.camera.core.impl.UseCaseConfigFactory;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_AttachedSurfaceInfo extends AttachedSurfaceInfo {
    private final List<UseCaseConfigFactory.CaptureType> captureTypes;
    private final DynamicRange dynamicRange;
    private final int imageFormat;
    private final Config implementationOptions;
    private final Size size;
    private final SurfaceConfig surfaceConfig;
    private final Range<Integer> targetFrameRate;

    public AutoValue_AttachedSurfaceInfo(SurfaceConfig surfaceConfig, int i, Size size, DynamicRange dynamicRange, List<UseCaseConfigFactory.CaptureType> list, @Nullable Config config2, @Nullable Range<Integer> range) {
        if (surfaceConfig != null) {
            this.surfaceConfig = surfaceConfig;
            this.imageFormat = i;
            if (size != null) {
                this.size = size;
                if (dynamicRange != null) {
                    this.dynamicRange = dynamicRange;
                    if (list != null) {
                        this.captureTypes = list;
                        this.implementationOptions = config2;
                        this.targetFrameRate = range;
                        return;
                    }
                    throw new NullPointerException("Null captureTypes");
                }
                throw new NullPointerException("Null dynamicRange");
            }
            throw new NullPointerException("Null size");
        }
        throw new NullPointerException("Null surfaceConfig");
    }

    public boolean equals(Object obj) {
        Config config2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AttachedSurfaceInfo)) {
            return false;
        }
        AttachedSurfaceInfo attachedSurfaceInfo = (AttachedSurfaceInfo) obj;
        if (this.surfaceConfig.equals(attachedSurfaceInfo.getSurfaceConfig()) && this.imageFormat == attachedSurfaceInfo.getImageFormat() && this.size.equals(attachedSurfaceInfo.getSize()) && this.dynamicRange.equals(attachedSurfaceInfo.getDynamicRange()) && this.captureTypes.equals(attachedSurfaceInfo.getCaptureTypes()) && ((config2 = this.implementationOptions) != null ? config2.equals(attachedSurfaceInfo.getImplementationOptions()) : attachedSurfaceInfo.getImplementationOptions() == null)) {
            Range<Integer> range = this.targetFrameRate;
            if (range == null) {
                if (attachedSurfaceInfo.getTargetFrameRate() == null) {
                    return true;
                }
            } else if (range.equals(attachedSurfaceInfo.getTargetFrameRate())) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    @NonNull
    public List<UseCaseConfigFactory.CaptureType> getCaptureTypes() {
        return this.captureTypes;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    @NonNull
    public DynamicRange getDynamicRange() {
        return this.dynamicRange;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    public int getImageFormat() {
        return this.imageFormat;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    @Nullable
    public Config getImplementationOptions() {
        return this.implementationOptions;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    @NonNull
    public Size getSize() {
        return this.size;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    @NonNull
    public SurfaceConfig getSurfaceConfig() {
        return this.surfaceConfig;
    }

    @Override // androidx.camera.core.impl.AttachedSurfaceInfo
    @Nullable
    public Range<Integer> getTargetFrameRate() {
        return this.targetFrameRate;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = (((((((((this.surfaceConfig.hashCode() ^ 1000003) * 1000003) ^ this.imageFormat) * 1000003) ^ this.size.hashCode()) * 1000003) ^ this.dynamicRange.hashCode()) * 1000003) ^ this.captureTypes.hashCode()) * 1000003;
        Config config2 = this.implementationOptions;
        int i = 0;
        if (config2 == null) {
            hashCode = 0;
        } else {
            hashCode = config2.hashCode();
        }
        int i2 = (hashCode2 ^ hashCode) * 1000003;
        Range<Integer> range = this.targetFrameRate;
        if (range != null) {
            i = range.hashCode();
        }
        return i2 ^ i;
    }

    public String toString() {
        return "AttachedSurfaceInfo{surfaceConfig=" + this.surfaceConfig + ", imageFormat=" + this.imageFormat + ", size=" + this.size + ", dynamicRange=" + this.dynamicRange + ", captureTypes=" + this.captureTypes + ", implementationOptions=" + this.implementationOptions + ", targetFrameRate=" + this.targetFrameRate + "}";
    }
}
