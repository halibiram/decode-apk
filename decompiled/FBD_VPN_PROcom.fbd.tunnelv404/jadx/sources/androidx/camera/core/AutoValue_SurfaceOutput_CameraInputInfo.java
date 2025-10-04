package androidx.camera.core;

import android.graphics.Rect;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.SurfaceOutput;
import androidx.camera.core.impl.CameraInternal;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_SurfaceOutput_CameraInputInfo extends SurfaceOutput.CameraInputInfo {
    private final CameraInternal cameraInternal;
    private final Rect inputCropRect;
    private final Size inputSize;
    private final boolean mirroring;
    private final int rotationDegrees;

    public AutoValue_SurfaceOutput_CameraInputInfo(Size size, Rect rect, @Nullable CameraInternal cameraInternal, int i, boolean z) {
        if (size != null) {
            this.inputSize = size;
            if (rect != null) {
                this.inputCropRect = rect;
                this.cameraInternal = cameraInternal;
                this.rotationDegrees = i;
                this.mirroring = z;
                return;
            }
            throw new NullPointerException("Null inputCropRect");
        }
        throw new NullPointerException("Null inputSize");
    }

    public boolean equals(Object obj) {
        CameraInternal cameraInternal;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof SurfaceOutput.CameraInputInfo)) {
            return false;
        }
        SurfaceOutput.CameraInputInfo cameraInputInfo = (SurfaceOutput.CameraInputInfo) obj;
        if (this.inputSize.equals(cameraInputInfo.getInputSize()) && this.inputCropRect.equals(cameraInputInfo.getInputCropRect()) && ((cameraInternal = this.cameraInternal) != null ? cameraInternal.equals(cameraInputInfo.getCameraInternal()) : cameraInputInfo.getCameraInternal() == null) && this.rotationDegrees == cameraInputInfo.getRotationDegrees() && this.mirroring == cameraInputInfo.getMirroring()) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.core.SurfaceOutput.CameraInputInfo
    @Nullable
    public CameraInternal getCameraInternal() {
        return this.cameraInternal;
    }

    @Override // androidx.camera.core.SurfaceOutput.CameraInputInfo
    @NonNull
    public Rect getInputCropRect() {
        return this.inputCropRect;
    }

    @Override // androidx.camera.core.SurfaceOutput.CameraInputInfo
    @NonNull
    public Size getInputSize() {
        return this.inputSize;
    }

    @Override // androidx.camera.core.SurfaceOutput.CameraInputInfo
    public boolean getMirroring() {
        return this.mirroring;
    }

    @Override // androidx.camera.core.SurfaceOutput.CameraInputInfo
    public int getRotationDegrees() {
        return this.rotationDegrees;
    }

    public int hashCode() {
        int hashCode;
        int i;
        int hashCode2 = (((this.inputSize.hashCode() ^ 1000003) * 1000003) ^ this.inputCropRect.hashCode()) * 1000003;
        CameraInternal cameraInternal = this.cameraInternal;
        if (cameraInternal == null) {
            hashCode = 0;
        } else {
            hashCode = cameraInternal.hashCode();
        }
        int i2 = (((hashCode2 ^ hashCode) * 1000003) ^ this.rotationDegrees) * 1000003;
        if (this.mirroring) {
            i = 1231;
        } else {
            i = 1237;
        }
        return i2 ^ i;
    }

    public String toString() {
        return "CameraInputInfo{inputSize=" + this.inputSize + ", inputCropRect=" + this.inputCropRect + ", cameraInternal=" + this.cameraInternal + ", rotationDegrees=" + this.rotationDegrees + ", mirroring=" + this.mirroring + "}";
    }
}
