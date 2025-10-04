package app.tunnel.vpncommons.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.provider.Settings;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lapp/tunnel/vpncommons/utils/CommonUtils;", "", "Landroid/content/Context;", "context", "", "getAndroidId", "(Landroid/content/Context;)Ljava/lang/String;", "com.fbd.tunnel-404_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes.dex */
public final class CommonUtils {

    @NotNull
    public static final CommonUtils INSTANCE = new Object();

    @JvmStatic
    @SuppressLint({"HardwareIds"})
    @Nullable
    public static final String getAndroidId(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return Settings.Secure.getString(context.getContentResolver(), "android_id");
    }
}
