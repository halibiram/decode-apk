package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class zzamj {
    private static final Pattern zza = Pattern.compile(new ObfuscatedString(new long[]{-1158974934031559584L, -6484110450828957670L, 496276813379378351L}).toString());

    public static float zza(String str) {
        if (str.endsWith(new ObfuscatedString(new long[]{-6172115791172790542L, -1847922385136609538L}).toString())) {
            return Float.parseFloat(str.substring(0, str.length() - 1)) / 100.0f;
        }
        throw new NumberFormatException(new ObfuscatedString(new long[]{-2235147129293981296L, 3152061025680845267L, -6742802286731815869L, 7079537786323772374L, 3023984711691311004L}).toString());
    }

    public static long zzb(String str) {
        int i = zzfy.zza;
        String[] split = str.split(new ObfuscatedString(new long[]{942966274767647461L, -4487687631507216179L}).toString(), 2);
        long j = 0;
        for (String str2 : split[0].split(new ObfuscatedString(new long[]{8769130546326290102L, -1113447324726433493L}).toString(), -1)) {
            j = (j * 60) + Long.parseLong(str2);
        }
        long j2 = j * 1000;
        if (split.length == 2) {
            j2 += Long.parseLong(split[1]);
        }
        return j2 * 1000;
    }
}
