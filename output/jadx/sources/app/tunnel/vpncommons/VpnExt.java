package app.tunnel.vpncommons;

import android.content.Context;
import android.provider.Settings;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u0004¢\u0006\u0004\b\u0005\u0010\bJ\u0015\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lapp/tunnel/vpncommons/VpnExt;", "", "", "str", "", "parseInt", "(Ljava/lang/String;)I", "default", "(Ljava/lang/String;I)I", "Landroid/content/Context;", "context", "uniqueDevice", "(Landroid/content/Context;)Ljava/lang/String;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class VpnExt {

    @NotNull
    public static final VpnExt INSTANCE = new Object();

    public final int parseInt(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "str");
        return parseInt(str, 0);
    }

    @NotNull
    public final String uniqueDevice(@NotNull Context context) {
        String str;
        Intrinsics.checkNotNullParameter(context, "context");
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        Intrinsics.checkNotNull(string);
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            byte[] bytes = string.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            messageDigest.update(bytes);
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (byte b : digest) {
                sb.append(Integer.toHexString(b & 255));
            }
            str = sb.toString();
            Intrinsics.checkNotNullExpressionValue(str, "toString(...)");
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
            str = "";
        }
        Locale locale = Locale.getDefault();
        Intrinsics.checkNotNullExpressionValue(locale, "getDefault(...)");
        String upperCase = str.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    public final int parseInt(@Nullable String str, int r2) {
        if (str == null) {
            return r2;
        }
        try {
            return Integer.parseInt(str);
        } catch (Exception e) {
            e.printStackTrace();
            return r2;
        }
    }
}
