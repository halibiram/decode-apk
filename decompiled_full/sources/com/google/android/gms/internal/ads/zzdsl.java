package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import javax.annotation.ParametersAreNonnullByDefault;

/* loaded from: classes2.dex */
public final class zzdsl implements zzbnw {
    private final zzdce zza;

    @Nullable
    private final zzcag zzb;
    private final String zzc;
    private final String zzd;

    public zzdsl(zzdce zzdceVar, zzfgm zzfgmVar) {
        this.zza = zzdceVar;
        this.zzb = zzfgmVar.zzm;
        this.zzc = zzfgmVar.zzk;
        this.zzd = zzfgmVar.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzbnw
    @ParametersAreNonnullByDefault
    public final void zza(zzcag zzcagVar) {
        String obfuscatedString;
        int i;
        zzcag zzcagVar2 = this.zzb;
        if (zzcagVar2 != null) {
            zzcagVar = zzcagVar2;
        }
        if (zzcagVar != null) {
            obfuscatedString = zzcagVar.zza;
            i = zzcagVar.zzb;
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{-6524272491904737460L}).toString();
            i = 1;
        }
        this.zza.zzd(new zzbzr(obfuscatedString, i), this.zzc, this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzbnw
    public final void zzb() {
        this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzbnw
    public final void zzc() {
        this.zza.zzf();
    }
}
