package androidx.camera.core.imagecapture;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapRegionDecoder;
import android.graphics.Rect;
import androidx.annotation.NonNull;
import androidx.camera.core.ImageCaptureException;
import androidx.camera.core.impl.utils.Exif;
import androidx.camera.core.impl.utils.TransformUtils;
import androidx.camera.core.processing.Operation;
import androidx.camera.core.processing.Packet;
import j$.util.Objects;
import java.io.IOException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class JpegBytes2CroppedBitmap implements Operation<Packet<byte[]>, Packet<Bitmap>> {
    @NonNull
    private Bitmap createCroppedBitmap(@NonNull byte[] bArr, @NonNull Rect rect) {
        try {
            return BitmapRegionDecoder.newInstance(bArr, 0, bArr.length, false).decodeRegion(rect, new BitmapFactory.Options());
        } catch (IOException e) {
            throw new ImageCaptureException(1, "Failed to decode JPEG.", e);
        }
    }

    @Override // androidx.camera.core.processing.Operation
    @NonNull
    public Packet<Bitmap> apply(@NonNull Packet<byte[]> packet) {
        Rect cropRect = packet.getCropRect();
        Bitmap createCroppedBitmap = createCroppedBitmap(packet.getData(), cropRect);
        Exif exif = packet.getExif();
        Objects.requireNonNull(exif);
        return Packet.of(createCroppedBitmap, exif, new Rect(0, 0, createCroppedBitmap.getWidth(), createCroppedBitmap.getHeight()), packet.getRotationDegrees(), TransformUtils.updateSensorToBufferTransform(packet.getSensorToBufferTransform(), cropRect), packet.getCameraCaptureResult());
    }
}
