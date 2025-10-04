package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzdld implements zzcwk {
    private final Map zza;
    private final Map zzb;
    private final Map zzc;
    private final zzhhu zzd;
    private final zzdnl zze;

    public zzdld(Map map, Map map2, Map map3, zzhhu zzhhuVar, zzdnl zzdnlVar) {
        this.zza = map;
        this.zzb = map2;
        this.zzc = map3;
        this.zzd = zzhhuVar;
        this.zze = zzdnlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcwk
    @Nullable
    public final zzein zza(int i, String str) {
        zzein zza;
        zzein zzeinVar = (zzein) this.zza.get(str);
        if (zzeinVar != null) {
            return zzeinVar;
        }
        if (i != 1) {
            if (i != 4) {
                return null;
            }
            zzelb zzelbVar = (zzelb) this.zzc.get(str);
            if (zzelbVar != null) {
                return new zzeio(zzelbVar, new zzfws() { // from class: com.google.android.gms.internal.ads.zzcwm
                    @Override // com.google.android.gms.internal.ads.zzfws
                    public final Object apply(Object obj) {
                        return new zzcwp((List) obj);
                    }
                });
            }
            zza = (zzein) this.zzb.get(str);
            if (zza == null) {
                return null;
            }
        } else if (this.zze.zze() == null || (zza = ((zzcwk) this.zzd.zzb()).zza(i, str)) == null) {
            return null;
        }
        return new zzeio(zza, new zzfws() { // from class: com.google.android.gms.internal.ads.zzcwn
            @Override // com.google.android.gms.internal.ads.zzfws
            public final Object apply(Object obj) {
                return new zzcwp((zzcwh) obj);
            }
        });
    }
}
