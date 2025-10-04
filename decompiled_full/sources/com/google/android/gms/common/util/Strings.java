package com.google.android.gms.common.util;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.panda912.muddy.ObfuscatedString;
import java.util.regex.Pattern;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

@KeepForSdk
/* loaded from: classes2.dex */
public class Strings {
    private static final Pattern zza = Pattern.compile(new ObfuscatedString(new long[]{2887116375390534939L, -3502414716068354845L, -1893105763855402771L}).toString());

    private Strings() {
    }

    @Nullable
    @KeepForSdk
    public static String emptyToNull(@Nullable String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        return str;
    }

    @EnsuresNonNullIf(expression = {"#1"}, result = false)
    @KeepForSdk
    public static boolean isEmptyOrWhitespace(@Nullable String str) {
        if (str != null && !str.trim().isEmpty()) {
            return false;
        }
        return true;
    }
}
