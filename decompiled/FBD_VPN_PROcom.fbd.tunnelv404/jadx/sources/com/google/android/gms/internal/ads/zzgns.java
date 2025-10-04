package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzgns {
    public static final zzgrx zza = new zzgnr(null);

    public static zzgsd zza(zzggx zzggxVar) {
        zzgge zzggeVar;
        zzgrz zzgrzVar = new zzgrz();
        zzgrzVar.zzb(zzggxVar.zzb());
        Iterator it = zzggxVar.zzd().iterator();
        while (it.hasNext()) {
            for (zzggt zzggtVar : (List) it.next()) {
                int zzh = zzggtVar.zzh() - 2;
                if (zzh != 1) {
                    if (zzh != 2) {
                        if (zzh == 3) {
                            zzggeVar = zzgge.zzc;
                        } else {
                            throw new IllegalStateException(new ObfuscatedString(new long[]{5200300932950864674L, 6068826321369921228L, -8345199733465886931L, -3355079895437005439L}).toString());
                        }
                    } else {
                        zzggeVar = zzgge.zzb;
                    }
                } else {
                    zzggeVar = zzgge.zza;
                }
                int zza2 = zzggtVar.zza();
                String zzf = zzggtVar.zzf();
                if (zzf.startsWith(new ObfuscatedString(new long[]{-6965454884464628744L, -4254630440436704052L, -8975678895980703689L, -918400983007508008L, 8041405453593872294L, -2445245926406135932L}).toString())) {
                    zzf = zzf.substring(34);
                }
                zzgrzVar.zza(zzggeVar, zza2, zzf, zzggtVar.zzc().name());
            }
        }
        if (zzggxVar.zza() != null) {
            zzgrzVar.zzc(zzggxVar.zza().zza());
        }
        try {
            return zzgrzVar.zzd();
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }
}
