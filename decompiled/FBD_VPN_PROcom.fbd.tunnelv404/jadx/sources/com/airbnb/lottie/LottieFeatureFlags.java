package com.airbnb.lottie;

import android.annotation.SuppressLint;
import android.os.Build;
import com.airbnb.lottie.utils.Logger;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class LottieFeatureFlags {
    private final HashSet<LottieFeatureFlag> enabledFlags = new HashSet<>();

    @SuppressLint({"DefaultLocale"})
    public boolean enableFlag(LottieFeatureFlag lottieFeatureFlag, boolean z) {
        if (z) {
            if (Build.VERSION.SDK_INT < lottieFeatureFlag.minRequiredSdkVersion) {
                Logger.warning(String.format(new ObfuscatedString(new long[]{4168427003382243996L, -4953212678036462632L, 746110839927146312L, -7187463438430570645L, -5300711583388862577L}).toString(), lottieFeatureFlag.name(), Integer.valueOf(lottieFeatureFlag.minRequiredSdkVersion)));
                return false;
            }
            return this.enabledFlags.add(lottieFeatureFlag);
        }
        return this.enabledFlags.remove(lottieFeatureFlag);
    }

    public boolean isFlagEnabled(LottieFeatureFlag lottieFeatureFlag) {
        return this.enabledFlags.contains(lottieFeatureFlag);
    }
}
