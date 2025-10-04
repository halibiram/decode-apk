package com.google.android.gms.common.stats;

import android.os.PowerManager;
import android.os.Process;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
@Deprecated
/* loaded from: classes2.dex */
public class StatsUtils {
    @NonNull
    @KeepForSdk
    public static String getEventKey(@NonNull PowerManager.WakeLock wakeLock, @NonNull String str) {
        String valueOf = String.valueOf((Process.myPid() << 32) | System.identityHashCode(wakeLock));
        if (true == TextUtils.isEmpty(str)) {
            str = new ObfuscatedString(new long[]{631121354909584754L}).toString();
        }
        return String.valueOf(valueOf).concat(String.valueOf(str));
    }
}
