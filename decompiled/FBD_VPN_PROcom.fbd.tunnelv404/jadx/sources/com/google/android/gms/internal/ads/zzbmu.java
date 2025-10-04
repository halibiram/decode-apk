package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzbmu implements zzgej {
    final /* synthetic */ zzcjk zza;

    public zzbmu(zzcjk zzcjkVar) {
        this.zza = zzcjkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{-1599415498666846782L, -3980105093572934695L, 4026326107585701398L, -2074691137214192733L, -8591560618891553434L, -1224635649372408919L, -4832802081255855335L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcjk zzcjkVar = this.zza;
        new com.google.android.gms.ads.internal.util.zzca(zzcjkVar.getContext(), zzcjkVar.zzn().zza, (String) obj).zzb();
    }
}
