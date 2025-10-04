package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcvu implements zzdcl, zzdbr {
    private final Context zza;

    @Nullable
    private final zzcjk zzb;
    private final zzfgm zzc;
    private final zzcei zzd;

    @Nullable
    private zzfod zze;
    private boolean zzf;

    public zzcvu(Context context, @Nullable zzcjk zzcjkVar, zzfgm zzfgmVar, zzcei zzceiVar) {
        this.zza = context;
        this.zzb = zzcjkVar;
        this.zzc = zzfgmVar;
        this.zzd = zzceiVar;
    }

    private final synchronized void zza() {
        zzeii zzeiiVar;
        zzeii zzeiiVar2;
        zzeih zzeihVar;
        try {
            if (this.zzc.zzU && this.zzb != null && com.google.android.gms.ads.internal.zzt.zzA().zzj(this.zza)) {
                zzcei zzceiVar = this.zzd;
                String str = zzceiVar.zzb + new ObfuscatedString(new long[]{-2035243855398794962L, 3184407625830912662L}).toString() + zzceiVar.zzc;
                zzfhk zzfhkVar = this.zzc.zzW;
                String zza = zzfhkVar.zza();
                if (zzfhkVar.zzb() == 1) {
                    zzeihVar = zzeih.zzc;
                    zzeiiVar2 = zzeii.zzb;
                } else {
                    zzfgm zzfgmVar = this.zzc;
                    zzeih zzeihVar2 = zzeih.zza;
                    if (zzfgmVar.zzf == 1) {
                        zzeiiVar = zzeii.zzc;
                    } else {
                        zzeiiVar = zzeii.zza;
                    }
                    zzeiiVar2 = zzeiiVar;
                    zzeihVar = zzeihVar2;
                }
                zzfod zza2 = com.google.android.gms.ads.internal.zzt.zzA().zza(str, this.zzb.zzG(), new ObfuscatedString(new long[]{-3336682383469596404L}).toString(), new ObfuscatedString(new long[]{-6768694300533899990L, 7303394535944153889L, -7958820244765551935L}).toString(), zza, zzeiiVar2, zzeihVar, this.zzc.zzam);
                this.zze = zza2;
                Object obj = this.zzb;
                if (zza2 != null) {
                    com.google.android.gms.ads.internal.zzt.zzA().zzh(this.zze, (View) obj);
                    this.zzb.zzaq(this.zze);
                    com.google.android.gms.ads.internal.zzt.zzA().zzi(this.zze);
                    this.zzf = true;
                    this.zzb.zzd(new ObfuscatedString(new long[]{5837190969092986688L, -343194933503955969L, 6516949039572469530L}).toString(), new ArrayMap());
                }
            }
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbr
    public final synchronized void zzq() {
        zzcjk zzcjkVar;
        try {
            if (!this.zzf) {
                zza();
            }
            if (this.zzc.zzU && this.zze != null && (zzcjkVar = this.zzb) != null) {
                zzcjkVar.zzd(new ObfuscatedString(new long[]{2752590528415170262L, -6783705404357687562L, -4915513808815419436L}).toString(), new ArrayMap());
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdcl
    public final synchronized void zzr() {
        if (this.zzf) {
            return;
        }
        zza();
    }
}
