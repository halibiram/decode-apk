package androidx.camera.core.internal.compat.workaround;

import androidx.annotation.NonNull;
import androidx.camera.core.ImageProxy;
import androidx.camera.core.impl.CaptureConfig;
import androidx.camera.core.internal.compat.quirk.DeviceQuirks;
import androidx.camera.core.internal.compat.quirk.ImageCaptureRotationOptionQuirk;
import androidx.camera.core.internal.utils.ImageUtil;

/* loaded from: classes.dex */
public class ExifRotationAvailability {
    public boolean isRotationOptionSupported() {
        ImageCaptureRotationOptionQuirk imageCaptureRotationOptionQuirk = (ImageCaptureRotationOptionQuirk) DeviceQuirks.get(ImageCaptureRotationOptionQuirk.class);
        if (imageCaptureRotationOptionQuirk != null && !imageCaptureRotationOptionQuirk.isSupported(CaptureConfig.OPTION_ROTATION)) {
            return false;
        }
        return true;
    }

    public boolean shouldUseExifOrientation(@NonNull ImageProxy imageProxy) {
        if (isRotationOptionSupported() && ImageUtil.isJpegFormats(imageProxy.getFormat())) {
            return true;
        }
        return false;
    }
}
