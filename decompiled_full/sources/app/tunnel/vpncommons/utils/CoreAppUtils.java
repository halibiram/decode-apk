package app.tunnel.vpncommons.utils;

import android.content.res.Resources;
import com.fbd.tunnel.R;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.AbstractC0296x1378447b;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001J'\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lapp/tunnel/vpncommons/utils/CoreAppUtils;", "", "", "bytes", "", "speed", "Landroid/content/res/Resources;", "res", "", "humanReadableByteCount", "(JZLandroid/content/res/Resources;)Ljava/lang/String;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CoreAppUtils {

    @NotNull
    public static final CoreAppUtils INSTANCE = new Object();

    @JvmStatic
    @NotNull
    public static final String humanReadableByteCount(long bytes, boolean speed, @NotNull Resources res) {
        int i;
        Intrinsics.checkNotNullParameter(res, "res");
        if (speed) {
            bytes *= 8;
        }
        if (speed) {
            i = 1000;
        } else {
            i = 1024;
        }
        double d = bytes;
        double d2 = i;
        int coerceAtLeast = AbstractC0296x1378447b.coerceAtLeast(0, AbstractC0296x1378447b.coerceAtMost((int) (Math.log(d) / Math.log(d2)), 3));
        float pow = (float) (d / Math.pow(d2, coerceAtLeast));
        if (speed) {
            if (coerceAtLeast != 0) {
                if (coerceAtLeast != 1) {
                    if (coerceAtLeast != 2) {
                        String string = res.getString(R.string.gbits_per_second, Float.valueOf(pow));
                        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                        return string;
                    }
                    String string2 = res.getString(R.string.mbits_per_second, Float.valueOf(pow));
                    Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                    return string2;
                }
                String string3 = res.getString(R.string.kbits_per_second, Float.valueOf(pow));
                Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
                return string3;
            }
            String string4 = res.getString(R.string.bits_per_second, Float.valueOf(pow));
            Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
            return string4;
        }
        if (coerceAtLeast != 0) {
            if (coerceAtLeast != 1) {
                if (coerceAtLeast != 2) {
                    String string5 = res.getString(R.string.volume_gbyte, Float.valueOf(pow));
                    Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
                    return string5;
                }
                String string6 = res.getString(R.string.volume_mbyte, Float.valueOf(pow));
                Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
                return string6;
            }
            String string7 = res.getString(R.string.volume_kbyte, Float.valueOf(pow));
            Intrinsics.checkNotNullExpressionValue(string7, "getString(...)");
            return string7;
        }
        String string8 = res.getString(R.string.volume_byte, Float.valueOf(pow));
        Intrinsics.checkNotNullExpressionValue(string8, "getString(...)");
        return string8;
    }
}
