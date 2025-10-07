package com.google.android.gms.internal.ads;

import android.app.UiModeManager;
import android.content.Context;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfpn {
    private static UiModeManager zza;

    public static zzfoj zza() {
        UiModeManager uiModeManager = zza;
        if (uiModeManager != null) {
            int currentModeType = uiModeManager.getCurrentModeType();
            if (currentModeType != 1) {
                if (currentModeType != 4) {
                    return zzfoj.zzc;
                }
                return zzfoj.zza;
            }
            return zzfoj.zzb;
        }
        return zzfoj.zzc;
    }

    public static void zzb(Context context) {
        if (context != null) {
            zza = (UiModeManager) context.getSystemService(new ObfuscatedString(new long[]{-8293820692452990698L, -4071143222668927255L}).toString());
        }
    }
}
