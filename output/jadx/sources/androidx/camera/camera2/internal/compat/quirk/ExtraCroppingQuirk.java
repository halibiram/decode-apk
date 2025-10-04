package androidx.camera.camera2.internal.compat.quirk;

import android.os.Build;
import android.util.Range;
import android.util.Size;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.camera.core.impl.Quirk;
import androidx.camera.core.impl.SurfaceConfig;
import com.tknetwork.tunnel.core.VpnProfile;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public class ExtraCroppingQuirk implements Quirk {
    private static final Map<String, Range<Integer>> SAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP;

    /* renamed from: androidx.camera.camera2.internal.compat.quirk.ExtraCroppingQuirk$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$camera$core$impl$SurfaceConfig$ConfigType;

        static {
            int[] iArr = new int[SurfaceConfig.ConfigType.values().length];
            $SwitchMap$androidx$camera$core$impl$SurfaceConfig$ConfigType = iArr;
            try {
                iArr[SurfaceConfig.ConfigType.PRIV.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$camera$core$impl$SurfaceConfig$ConfigType[SurfaceConfig.ConfigType.YUV.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$camera$core$impl$SurfaceConfig$ConfigType[SurfaceConfig.ConfigType.JPEG.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    static {
        HashMap hashMap = new HashMap();
        SAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP = hashMap;
        hashMap.put("SM-T580", null);
        hashMap.put("SM-J710MN", new Range(21, 26));
        hashMap.put("SM-A320FL", null);
        hashMap.put("SM-G570M", null);
        hashMap.put("SM-G610F", null);
        hashMap.put("SM-G610M", new Range(21, 26));
    }

    private static boolean isSamsungDistortion() {
        if ("samsung".equalsIgnoreCase(Build.BRAND)) {
            Map<String, Range<Integer>> map = SAMSUNG_DISTORTION_MODELS_TO_API_LEVEL_MAP;
            String str = Build.MODEL;
            Locale locale = Locale.US;
            if (map.containsKey(str.toUpperCase(locale))) {
                Range<Integer> range = map.get(str.toUpperCase(locale));
                if (range == null) {
                    return true;
                }
                return range.contains((Range<Integer>) Integer.valueOf(Build.VERSION.SDK_INT));
            }
            return false;
        }
        return false;
    }

    public static boolean load() {
        return isSamsungDistortion();
    }

    @Nullable
    public Size getVerifiedResolution(@NonNull SurfaceConfig.ConfigType configType) {
        if (!isSamsungDistortion()) {
            return null;
        }
        int i = AnonymousClass1.$SwitchMap$androidx$camera$core$impl$SurfaceConfig$ConfigType[configType.ordinal()];
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return null;
                }
                return new Size(3264, 1836);
            }
            return new Size(VpnProfile.DEFAULT_MSSFIX_SIZE, 720);
        }
        return new Size(1920, 1080);
    }
}
