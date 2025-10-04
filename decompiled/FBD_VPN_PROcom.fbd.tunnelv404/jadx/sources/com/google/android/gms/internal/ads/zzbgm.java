package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

@Deprecated
/* loaded from: classes2.dex */
public final class zzbgm {
    public static boolean zza(@Nullable zzbgu zzbguVar, @Nullable zzbgr zzbgrVar, String... strArr) {
        if (zzbgrVar == null) {
            return false;
        }
        zzbguVar.zze(zzbgrVar, com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime(), strArr);
        return true;
    }
}
