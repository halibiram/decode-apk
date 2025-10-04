package androidx.camera.core.processing;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.utils.Exif;

/* loaded from: classes.dex */
final class AutoValue_Packet<T> extends Packet<T> {
    private final CameraCaptureResult cameraCaptureResult;
    private final Rect cropRect;
    private final T data;
    private final Exif exif;
    private final int format;
    private final int rotationDegrees;
    private final Matrix sensorToBufferTransform;
    private final Size size;

    public AutoValue_Packet(T t, @Nullable Exif exif, int i, Size size, Rect rect, int i2, Matrix matrix, CameraCaptureResult cameraCaptureResult) {
        if (t != null) {
            this.data = t;
            this.exif = exif;
            this.format = i;
            if (size != null) {
                this.size = size;
                if (rect != null) {
                    this.cropRect = rect;
                    this.rotationDegrees = i2;
                    if (matrix != null) {
                        this.sensorToBufferTransform = matrix;
                        if (cameraCaptureResult != null) {
                            this.cameraCaptureResult = cameraCaptureResult;
                            return;
                        }
                        throw new NullPointerException("Null cameraCaptureResult");
                    }
                    throw new NullPointerException("Null sensorToBufferTransform");
                }
                throw new NullPointerException("Null cropRect");
            }
            throw new NullPointerException("Null size");
        }
        throw new NullPointerException("Null data");
    }

    public boolean equals(Object obj) {
        Exif exif;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Packet)) {
            return false;
        }
        Packet packet = (Packet) obj;
        if (this.data.equals(packet.getData()) && ((exif = this.exif) != null ? exif.equals(packet.getExif()) : packet.getExif() == null) && this.format == packet.getFormat() && this.size.equals(packet.getSize()) && this.cropRect.equals(packet.getCropRect()) && this.rotationDegrees == packet.getRotationDegrees() && this.sensorToBufferTransform.equals(packet.getSensorToBufferTransform()) && this.cameraCaptureResult.equals(packet.getCameraCaptureResult())) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.core.processing.Packet
    @NonNull
    public CameraCaptureResult getCameraCaptureResult() {
        return this.cameraCaptureResult;
    }

    @Override // androidx.camera.core.processing.Packet
    @NonNull
    public Rect getCropRect() {
        return this.cropRect;
    }

    @Override // androidx.camera.core.processing.Packet
    @NonNull
    public T getData() {
        return this.data;
    }

    @Override // androidx.camera.core.processing.Packet
    @Nullable
    public Exif getExif() {
        return this.exif;
    }

    @Override // androidx.camera.core.processing.Packet
    public int getFormat() {
        return this.format;
    }

    @Override // androidx.camera.core.processing.Packet
    public int getRotationDegrees() {
        return this.rotationDegrees;
    }

    @Override // androidx.camera.core.processing.Packet
    @NonNull
    public Matrix getSensorToBufferTransform() {
        return this.sensorToBufferTransform;
    }

    @Override // androidx.camera.core.processing.Packet
    @NonNull
    public Size getSize() {
        return this.size;
    }

    public int hashCode() {
        int hashCode;
        int hashCode2 = (this.data.hashCode() ^ 1000003) * 1000003;
        Exif exif = this.exif;
        if (exif == null) {
            hashCode = 0;
        } else {
            hashCode = exif.hashCode();
        }
        return ((((((((((((hashCode2 ^ hashCode) * 1000003) ^ this.format) * 1000003) ^ this.size.hashCode()) * 1000003) ^ this.cropRect.hashCode()) * 1000003) ^ this.rotationDegrees) * 1000003) ^ this.sensorToBufferTransform.hashCode()) * 1000003) ^ this.cameraCaptureResult.hashCode();
    }

    public String toString() {
        return "Packet{data=" + this.data + ", exif=" + this.exif + ", format=" + this.format + ", size=" + this.size + ", cropRect=" + this.cropRect + ", rotationDegrees=" + this.rotationDegrees + ", sensorToBufferTransform=" + this.sensorToBufferTransform + ", cameraCaptureResult=" + this.cameraCaptureResult + "}";
    }
}
