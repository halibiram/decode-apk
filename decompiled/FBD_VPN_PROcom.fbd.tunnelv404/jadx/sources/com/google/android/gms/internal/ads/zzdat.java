package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzdat implements zzhhd {
    private final zzdas zza;
    private final zzhhu zzb;
    private final zzhhu zzc;
    private final zzhhu zzd;
    private final zzhhu zze;

    public zzdat(zzdas zzdasVar, zzhhu zzhhuVar, zzhhu zzhhuVar2, zzhhu zzhhuVar3, zzhhu zzhhuVar4) {
        this.zza = zzdasVar;
        this.zzb = zzhhuVar;
        this.zzc = zzhhuVar2;
        this.zzd = zzhhuVar3;
        this.zze = zzhhuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    @Nullable
    public final /* synthetic */ Object zzb() {
        String str;
        Context context = (Context) this.zzb.zzb();
        zzcei zza = ((zzcly) this.zzc).zza();
        zzfgm zza2 = ((zzcwy) this.zzd).zza();
        zzcbo zzcboVar = new zzcbo();
        zzcbp zzcbpVar = zza2.zzB;
        if (zzcbpVar == null) {
            return null;
        }
        zzfgr zzfgrVar = zza2.zzt;
        if (zzfgrVar == null) {
            str = null;
        } else {
            str = zzfgrVar.zzb;
        }
        return new zzcbn(context, zza, zzcbpVar, str, zzcboVar);
    }
}
