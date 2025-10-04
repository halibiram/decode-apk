package androidx.camera.core.imagecapture;

import androidx.annotation.NonNull;
import androidx.camera.core.ImageCapture;
import androidx.camera.core.imagecapture.JpegBytes2Disk;
import androidx.camera.core.processing.Packet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_JpegBytes2Disk_In extends JpegBytes2Disk.In {
    private final ImageCapture.OutputFileOptions outputFileOptions;
    private final Packet<byte[]> packet;

    public AutoValue_JpegBytes2Disk_In(Packet<byte[]> packet, ImageCapture.OutputFileOptions outputFileOptions) {
        if (packet != null) {
            this.packet = packet;
            if (outputFileOptions != null) {
                this.outputFileOptions = outputFileOptions;
                return;
            }
            throw new NullPointerException("Null outputFileOptions");
        }
        throw new NullPointerException("Null packet");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof JpegBytes2Disk.In)) {
            return false;
        }
        JpegBytes2Disk.In in = (JpegBytes2Disk.In) obj;
        if (this.packet.equals(in.getPacket()) && this.outputFileOptions.equals(in.getOutputFileOptions())) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.core.imagecapture.JpegBytes2Disk.In
    @NonNull
    public ImageCapture.OutputFileOptions getOutputFileOptions() {
        return this.outputFileOptions;
    }

    @Override // androidx.camera.core.imagecapture.JpegBytes2Disk.In
    @NonNull
    public Packet<byte[]> getPacket() {
        return this.packet;
    }

    public int hashCode() {
        return ((this.packet.hashCode() ^ 1000003) * 1000003) ^ this.outputFileOptions.hashCode();
    }

    public String toString() {
        return "In{packet=" + this.packet + ", outputFileOptions=" + this.outputFileOptions + "}";
    }
}
