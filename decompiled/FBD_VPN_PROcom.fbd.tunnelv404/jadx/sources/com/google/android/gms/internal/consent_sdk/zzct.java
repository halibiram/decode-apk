package com.google.android.gms.internal.consent_sdk;

import android.os.Build;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzct {
    public static boolean zza(boolean z) {
        if (Build.VERSION.SDK_INT >= 31) {
            String str = Build.FINGERPRINT;
            if (!str.contains(new ObfuscatedString(new long[]{-2258588482130120055L, -359345526082735512L}).toString()) && !str.contains(new ObfuscatedString(new long[]{3557160256170489374L, -1697902559908831161L}).toString()) && !Build.HARDWARE.contains(new ObfuscatedString(new long[]{-4581407508059325729L, 6545153096639455686L}).toString())) {
                return false;
            }
            return true;
        }
        return Build.DEVICE.startsWith(new ObfuscatedString(new long[]{8145528156993486006L, 5540722089972211893L}).toString());
    }
}
