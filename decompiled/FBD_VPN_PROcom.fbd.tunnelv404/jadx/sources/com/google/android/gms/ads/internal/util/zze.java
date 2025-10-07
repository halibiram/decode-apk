package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzbid;
import com.google.android.gms.internal.ads.zzcec;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zze extends zzcec {
    public static void zza(String str) {
        if (zzc()) {
            if (str != null && str.length() > 4000) {
                boolean z = true;
                for (String str2 : zzcec.zza.zzd(str)) {
                    if (z) {
                        new ObfuscatedString(new long[]{-449183996652430175L, -8749140057271150581L}).toString();
                    } else {
                        new ObfuscatedString(new long[]{-7195613424956295036L, -7493118839553191306L}).toString();
                    }
                    z = false;
                }
                return;
            }
            new ObfuscatedString(new long[]{-2437962975461254686L, -7111949501782505285L}).toString();
        }
    }

    public static void zzb(String str, Throwable th) {
        if (zzc()) {
            new ObfuscatedString(new long[]{-4770579156203808597L, -1701962663472785852L}).toString();
        }
    }

    public static boolean zzc() {
        if (zzcec.zzm(2) && ((Boolean) zzbid.zza.zze()).booleanValue()) {
            return true;
        }
        return false;
    }
}
