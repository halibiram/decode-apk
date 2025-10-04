package coil3.decode;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\"\u0018\u0010\u0000\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0000\u0010\u0003\"\u0018\u0010\u0004\u001a\u00020\u0001*\u00020\u00028@X\u0080\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0003¨\u0006\u0005"}, d2 = {"isSwapped", "", "Lcoil3/decode/ExifData;", "(Lcoil3/decode/ExifData;)Z", "isRotated", "coil-core_release"}, k = 2, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class ExifUtilsKt {
    public static final boolean isRotated(@NotNull ExifData exifData) {
        if (exifData.getRotationDegrees() > 0) {
            return true;
        }
        return false;
    }

    public static final boolean isSwapped(@NotNull ExifData exifData) {
        if (exifData.getRotationDegrees() != 90 && exifData.getRotationDegrees() != 270) {
            return false;
        }
        return true;
    }
}
