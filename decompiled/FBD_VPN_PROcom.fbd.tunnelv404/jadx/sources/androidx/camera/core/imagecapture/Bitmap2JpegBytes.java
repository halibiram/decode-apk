package androidx.camera.core.imagecapture;

import android.graphics.Bitmap;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.core.impl.utils.Exif;
import androidx.camera.core.processing.Operation;
import androidx.camera.core.processing.Packet;
import com.google.auto.value.AutoValue;
import j$.util.Objects;
import java.io.ByteArrayOutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class Bitmap2JpegBytes implements Operation<In, Packet<byte[]>> {

    @RequiresApi(34)
    /* loaded from: classes.dex */
    public static class Api34Impl {
        private Api34Impl() {
        }

        public static boolean hasGainmap(@NonNull Bitmap bitmap) {
            return bitmap.hasGainmap();
        }
    }

    @AutoValue
    /* loaded from: classes.dex */
    public static abstract class In {
        @NonNull
        public static In of(@NonNull Packet<Bitmap> packet, int i) {
            return new AutoValue_Bitmap2JpegBytes_In(packet, i);
        }

        public abstract int getJpegQuality();

        public abstract Packet<Bitmap> getPacket();
    }

    private static int getOutputFormat(@NonNull Bitmap bitmap) {
        if (Build.VERSION.SDK_INT >= 34 && Api34Impl.hasGainmap(bitmap)) {
            return 4101;
        }
        return 256;
    }

    @Override // androidx.camera.core.processing.Operation
    @NonNull
    public Packet<byte[]> apply(@NonNull In in) {
        Packet<Bitmap> packet = in.getPacket();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        packet.getData().compress(Bitmap.CompressFormat.JPEG, in.getJpegQuality(), byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Exif exif = packet.getExif();
        Objects.requireNonNull(exif);
        return Packet.of(byteArray, exif, getOutputFormat(packet.getData()), packet.getSize(), packet.getCropRect(), packet.getRotationDegrees(), packet.getSensorToBufferTransform(), packet.getCameraCaptureResult());
    }
}
