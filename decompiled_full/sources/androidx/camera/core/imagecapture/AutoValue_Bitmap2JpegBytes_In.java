package androidx.camera.core.imagecapture;

import android.graphics.Bitmap;
import androidx.camera.core.imagecapture.Bitmap2JpegBytes;
import androidx.camera.core.processing.Packet;
import defpackage.AbstractC0362x4440ab85;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class AutoValue_Bitmap2JpegBytes_In extends Bitmap2JpegBytes.In {
    private final int jpegQuality;
    private final Packet<Bitmap> packet;

    public AutoValue_Bitmap2JpegBytes_In(Packet<Bitmap> packet, int i) {
        if (packet != null) {
            this.packet = packet;
            this.jpegQuality = i;
            return;
        }
        throw new NullPointerException("Null packet");
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Bitmap2JpegBytes.In)) {
            return false;
        }
        Bitmap2JpegBytes.In in = (Bitmap2JpegBytes.In) obj;
        if (this.packet.equals(in.getPacket()) && this.jpegQuality == in.getJpegQuality()) {
            return true;
        }
        return false;
    }

    @Override // androidx.camera.core.imagecapture.Bitmap2JpegBytes.In
    public int getJpegQuality() {
        return this.jpegQuality;
    }

    @Override // androidx.camera.core.imagecapture.Bitmap2JpegBytes.In
    public Packet<Bitmap> getPacket() {
        return this.packet;
    }

    public int hashCode() {
        return ((this.packet.hashCode() ^ 1000003) * 1000003) ^ this.jpegQuality;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("In{packet=");
        sb.append(this.packet);
        sb.append(", jpegQuality=");
        return AbstractC0362x4440ab85.m2935x1db10c9d(sb, "}", this.jpegQuality);
    }
}
