package androidx.camera.camera2.internal;

import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.camera2.internal.Camera2CameraImpl;
import androidx.camera.core.impl.SessionConfig;
import androidx.camera.core.impl.StreamSpec;
import androidx.camera.core.impl.UseCaseConfig;
import androidx.camera.core.impl.UseCaseConfigFactory;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_Camera2CameraImpl_UseCaseInfo extends Camera2CameraImpl.UseCaseInfo {
    private final List<UseCaseConfigFactory.CaptureType> captureTypes;
    private final SessionConfig sessionConfig;
    private final StreamSpec streamSpec;
    private final Size surfaceResolution;
    private final UseCaseConfig<?> useCaseConfig;
    private final String useCaseId;
    private final Class<?> useCaseType;

    public AutoValue_Camera2CameraImpl_UseCaseInfo(String str, Class<?> cls, SessionConfig sessionConfig, UseCaseConfig<?> useCaseConfig, @Nullable Size size, @Nullable StreamSpec streamSpec, @Nullable List<UseCaseConfigFactory.CaptureType> list) {
        if (str != null) {
            this.useCaseId = str;
            if (cls != null) {
                this.useCaseType = cls;
                if (sessionConfig != null) {
                    this.sessionConfig = sessionConfig;
                    if (useCaseConfig != null) {
                        this.useCaseConfig = useCaseConfig;
                        this.surfaceResolution = size;
                        this.streamSpec = streamSpec;
                        this.captureTypes = list;
                        return;
                    }
                    throw new NullPointerException("Null useCaseConfig");
                }
                throw new NullPointerException("Null sessionConfig");
            }
            throw new NullPointerException("Null useCaseType");
        }
        throw new NullPointerException("Null useCaseId");
    }

    public boolean equals(Object obj) {
        Size size;
        StreamSpec streamSpec;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Camera2CameraImpl.UseCaseInfo)) {
            return false;
        }
        Camera2CameraImpl.UseCaseInfo useCaseInfo = (Camera2CameraImpl.UseCaseInfo) obj;
        if (this.useCaseId.equals(useCaseInfo.getUseCaseId()) && this.useCaseType.equals(useCaseInfo.getUseCaseType()) && this.sessionConfig.equals(useCaseInfo.getSessionConfig()) && this.useCaseConfig.equals(useCaseInfo.getUseCaseConfig()) && ((size = this.surfaceResolution) != null ? size.equals(useCaseInfo.getSurfaceResolution()) : useCaseInfo.getSurfaceResolution() == null) && ((streamSpec = this.streamSpec) != null ? streamSpec.equals(useCaseInfo.getStreamSpec()) : useCaseInfo.getStreamSpec() == null)) {
            List<UseCaseConfigFactory.CaptureType> list = this.captureTypes;
            if (list == null) {
                if (useCaseInfo.getCaptureTypes() == null) {
                    return true;
                }
            } else if (list.equals(useCaseInfo.getCaptureTypes())) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.camera.camera2.internal.Camera2CameraImpl.UseCaseInfo
    @Nullable
    public List<UseCaseConfigFactory.CaptureType> getCaptureTypes() {
        return this.captureTypes;
    }

    @Override // androidx.camera.camera2.internal.Camera2CameraImpl.UseCaseInfo
    @NonNull
    public SessionConfig getSessionConfig() {
        return this.sessionConfig;
    }

    @Override // androidx.camera.camera2.internal.Camera2CameraImpl.UseCaseInfo
    @Nullable
    public StreamSpec getStreamSpec() {
        return this.streamSpec;
    }

    @Override // androidx.camera.camera2.internal.Camera2CameraImpl.UseCaseInfo
    @Nullable
    public Size getSurfaceResolution() {
        return this.surfaceResolution;
    }

    @Override // androidx.camera.camera2.internal.Camera2CameraImpl.UseCaseInfo
    @NonNull
    public UseCaseConfig<?> getUseCaseConfig() {
        return this.useCaseConfig;
    }

    @Override // androidx.camera.camera2.internal.Camera2CameraImpl.UseCaseInfo
    @NonNull
    public String getUseCaseId() {
        return this.useCaseId;
    }

    @Override // androidx.camera.camera2.internal.Camera2CameraImpl.UseCaseInfo
    @NonNull
    public Class<?> getUseCaseType() {
        return this.useCaseType;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3 = (((((((this.useCaseId.hashCode() ^ 1000003) * 1000003) ^ this.useCaseType.hashCode()) * 1000003) ^ this.sessionConfig.hashCode()) * 1000003) ^ this.useCaseConfig.hashCode()) * 1000003;
        Size size = this.surfaceResolution;
        int i = 0;
        if (size == null) {
            hashCode = 0;
        } else {
            hashCode = size.hashCode();
        }
        int i2 = (hashCode3 ^ hashCode) * 1000003;
        StreamSpec streamSpec = this.streamSpec;
        if (streamSpec == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = streamSpec.hashCode();
        }
        int i3 = (i2 ^ hashCode2) * 1000003;
        List<UseCaseConfigFactory.CaptureType> list = this.captureTypes;
        if (list != null) {
            i = list.hashCode();
        }
        return i3 ^ i;
    }

    public String toString() {
        return "UseCaseInfo{useCaseId=" + this.useCaseId + ", useCaseType=" + this.useCaseType + ", sessionConfig=" + this.sessionConfig + ", useCaseConfig=" + this.useCaseConfig + ", surfaceResolution=" + this.surfaceResolution + ", streamSpec=" + this.streamSpec + ", captureTypes=" + this.captureTypes + "}";
    }
}
