package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzdmt implements zzgej {
    final /* synthetic */ String zza = new ObfuscatedString(new long[]{-830080291186622600L, -1633788523992178350L}).toString();
    final /* synthetic */ zzdmv zzb;

    public zzdmt(zzdmv zzdmvVar, String str, boolean z) {
        this.zzb = zzdmvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfb)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzo().zzv(th, new ObfuscatedString(new long[]{-2277558853785920616L, -6161386010553936151L, 2071084411232356523L, -4550176261127562757L}).toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzdna zzdnaVar;
        zzdna zzdnaVar2;
        zzdnaVar = this.zzb.zze;
        zzdnaVar.zzT((zzcjk) obj);
        zzdmv zzdmvVar = this.zzb;
        zzdnaVar2 = zzdmvVar.zze;
        zzceu zzp = zzdnaVar2.zzp();
        zzfod zzf = zzdmvVar.zzf(this.zza, true);
        if (zzf != null && zzp != null) {
            zzp.zzc(zzf);
        } else if (zzp != null) {
            zzp.cancel(false);
        }
    }
}
