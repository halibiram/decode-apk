package androidx.camera.core.internal.compat.workaround;

import androidx.annotation.NonNull;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.Quirks;
import androidx.camera.core.internal.compat.quirk.IncorrectJpegMetadataQuirk;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class JpegMetadataCorrector {
    private final IncorrectJpegMetadataQuirk mQuirk;

    public JpegMetadataCorrector(@NonNull Quirks quirks) {
        this.mQuirk = (IncorrectJpegMetadataQuirk) quirks.get(IncorrectJpegMetadataQuirk.class);
    }

    @NonNull
    public byte[] jpegImageToJpegByteArray(@NonNull ImageProxy imageProxy) {
        IncorrectJpegMetadataQuirk incorrectJpegMetadataQuirk = this.mQuirk;
        if (incorrectJpegMetadataQuirk == null) {
            ByteBuffer buffer = imageProxy.getPlanes()[0].getBuffer();
            byte[] bArr = new byte[buffer.capacity()];
            buffer.rewind();
            buffer.get(bArr);
            return bArr;
        }
        return incorrectJpegMetadataQuirk.jpegImageToJpegByteArray(imageProxy);
    }

    public boolean needCorrectJpegMetadata() {
        if (this.mQuirk != null) {
            return true;
        }
        return false;
    }
}
