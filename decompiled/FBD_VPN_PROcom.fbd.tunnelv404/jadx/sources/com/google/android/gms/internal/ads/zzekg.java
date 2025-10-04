package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzekg implements zzgej {
    final /* synthetic */ zzekh zza;

    public zzekg(zzekh zzekhVar) {
        this.zza = zzekhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        zzcvc zzcvcVar;
        zzdaz zzdazVar;
        zzcvcVar = this.zza.zza;
        com.google.android.gms.ads.internal.client.zze zza = zzcvcVar.zzd().zza(th);
        zzdazVar = this.zza.zzd;
        zzdazVar.zzbK(zza);
        zzfie.zzb(zza.zza, th, new ObfuscatedString(new long[]{1921002881995322935L, 3981506136697385859L, -1492054574901246460L, 3465356266233323863L, 5909741459169590813L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* synthetic */ void zzb(Object obj) {
        ((zzcuf) obj).zzj();
    }
}
