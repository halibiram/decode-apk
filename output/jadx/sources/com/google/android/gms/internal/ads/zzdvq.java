package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzdvq implements zzdds, zzdcl, zzdba {
    private final zzdwa zza;
    private final zzdwk zzb;

    public zzdvq(zzdwa zzdwaVar, zzdwk zzdwkVar) {
        this.zza = zzdwaVar;
        this.zzb = zzdwkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdba
    public final void zzbK(com.google.android.gms.ads.internal.client.zze zzeVar) {
        this.zza.zza().put(new ObfuscatedString(new long[]{1928831510856640676L, -5596800544889976417L}).toString(), new ObfuscatedString(new long[]{5787901559620475269L, -3671420871337216554L}).toString());
        this.zza.zza().put(new ObfuscatedString(new long[]{-3243294857644454244L, 6534124339030650270L}).toString(), String.valueOf(zzeVar.zza));
        this.zza.zza().put(new ObfuscatedString(new long[]{8268317790050263753L, -4132786668809760320L}).toString(), zzeVar.zzc);
        this.zzb.zzf(this.zza.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzdds
    public final void zzbw(zzbze zzbzeVar) {
        this.zza.zzc(zzbzeVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdds
    public final void zzbx(zzfgy zzfgyVar) {
        this.zza.zzb(zzfgyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzdcl
    public final void zzr() {
        this.zza.zza().put(new ObfuscatedString(new long[]{1357736876159930129L, -6061945269559051593L}).toString(), new ObfuscatedString(new long[]{1898725305432670323L, 4477914886741259669L}).toString());
        this.zzb.zzf(this.zza.zza());
    }
}
