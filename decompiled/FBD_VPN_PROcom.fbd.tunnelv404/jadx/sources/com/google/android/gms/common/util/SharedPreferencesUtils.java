package com.google.android.gms.common.util;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public class SharedPreferencesUtils {
    private SharedPreferencesUtils() {
    }

    @KeepForSdk
    @Deprecated
    public static void publishWorldReadableSharedPreferences(@NonNull Context context, @NonNull SharedPreferences.Editor editor, @NonNull String str) {
        throw new IllegalStateException(new ObfuscatedString(new long[]{-6045771980896306969L, -114604446972160671L, 372672240298930787L, 1896452801779858614L, -7102563827514549382L, 2054858345868208977L, 7542600606891021895L, -7557530805134523972L, 6138526932032404372L}).toString());
    }
}
