package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfhs implements zzgej {
    final /* synthetic */ zzfht zza;
    final /* synthetic */ int zzb;

    public zzfhs(zzfht zzfhtVar, int i) {
        this.zzb = i;
        this.zza = zzfhtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        com.google.android.gms.ads.internal.zzt.zzo().zzw(th, new ObfuscatedString(new long[]{-7062868179904234966L, -7533024235525984153L, -6074626944524877835L, -1728743542652063216L, 4742399734555113592L, 9139266056378571607L, 7477716158267948995L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        int i = this.zzb;
        this.zza.zzb((String) obj, i);
    }
}
