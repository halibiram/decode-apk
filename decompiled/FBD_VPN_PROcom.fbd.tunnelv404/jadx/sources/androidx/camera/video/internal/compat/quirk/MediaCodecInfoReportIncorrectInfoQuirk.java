package androidx.camera.video.internal.compat.quirk;

import android.media.MediaFormat;
import android.os.Build;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.impl.Quirk;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Set;

/* loaded from: classes.dex */
public class MediaCodecInfoReportIncorrectInfoQuirk implements Quirk {
    public static final List<String> INCORRECT_FHD_PROFILE_MODEL_LIST = Arrays.asList("lg-k430", "redmi note 4", "m2003j15sc", "m2004j19c", "rmx3231", "v2117", "sm-a032f", "moto g(20)", "sm-a035m", "v2204", "23078pnd5g", "pht110", "23053rn02l", "rmx3710", "rmx3511", "v2207", "moto e20");

    /* loaded from: classes.dex */
    public static class MediaFormatResolver {
        private final MediaFormat mMediaFormat;

        public MediaFormatResolver(@NonNull MediaFormat mediaFormat) {
            this.mMediaFormat = mediaFormat;
        }

        @Nullable
        private String getMime() {
            return this.mMediaFormat.getString("mime");
        }

        public boolean isAvc() {
            return "video/avc".equalsIgnoreCase(getMime());
        }

        public boolean isMpeg4() {
            return "video/mp4v-es".equalsIgnoreCase(getMime());
        }

        public boolean isSize(int i, int i2) {
            int integer = this.mMediaFormat.getInteger("width");
            int integer2 = this.mMediaFormat.getInteger("height");
            if (integer == i && integer2 == i2) {
                return true;
            }
            return false;
        }

        public boolean isVideo() {
            String mime = getMime();
            if (mime != null && mime.contains("video/")) {
                return true;
            }
            return false;
        }
    }

    @NonNull
    public static Set<Size> getExtraSupportedSizes() {
        if (isFHDProblematicDevice()) {
            return Collections.singleton(new Size(1920, 1080));
        }
        return Collections.emptySet();
    }

    private static boolean isFHDProblematicDevice() {
        return INCORRECT_FHD_PROFILE_MODEL_LIST.contains(Build.MODEL.toLowerCase(Locale.US));
    }

    private static boolean isHuaweiMate9() {
        if ("Huawei".equalsIgnoreCase(Build.BRAND) && "mha-l29".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    private static boolean isMotoC() {
        if ("motorola".equalsIgnoreCase(Build.BRAND) && "moto c".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    private static boolean isNokia1() {
        if ("Nokia".equalsIgnoreCase(Build.BRAND) && "Nokia 1".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    private static boolean isPositivoTwist2Pro() {
        if ("positivo".equalsIgnoreCase(Build.BRAND) && "twist 2 pro".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    private static boolean isRedmiNote8Pro() {
        if ("Redmi".equalsIgnoreCase(Build.BRAND) && "Redmi Note 8 Pro".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    private static boolean isX230() {
        if ("LGE".equalsIgnoreCase(Build.BRAND) && "LG-X230".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    private static boolean isX650() {
        if ("infinix".equalsIgnoreCase(Build.BRAND) && "infinix x650".equalsIgnoreCase(Build.MODEL)) {
            return true;
        }
        return false;
    }

    public static boolean load() {
        if (!isNokia1() && !isMotoC() && !isX650() && !isX230() && !isHuaweiMate9() && !isRedmiNote8Pro() && !isPositivoTwist2Pro() && !isFHDProblematicDevice()) {
            return false;
        }
        return true;
    }

    public boolean isUnSupportMediaCodecInfo(@NonNull MediaFormat mediaFormat) {
        MediaFormatResolver mediaFormatResolver = new MediaFormatResolver(mediaFormat);
        if (!isNokia1() && !isMotoC() && !isX650() && !isX230() && !isPositivoTwist2Pro()) {
            if (!isHuaweiMate9() && !isRedmiNote8Pro()) {
                if (isFHDProblematicDevice() && mediaFormatResolver.isAvc() && mediaFormatResolver.isSize(1920, 1080)) {
                    return true;
                }
                return false;
            }
            if (mediaFormatResolver.isVideo() && mediaFormatResolver.isSize(3840, 2160)) {
                return true;
            }
            return false;
        }
        return mediaFormatResolver.isMpeg4();
    }
}
