package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzblo extends zzbkp {
    final /* synthetic */ zzblr zza;

    public /* synthetic */ zzblo(zzblr zzblrVar, zzbln zzblnVar) {
        this.zza = zzblrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkq
    public final void zze(zzbkg zzbkgVar, String str) {
        com.google.android.gms.ads.formats.zzf zzfVar;
        com.google.android.gms.ads.formats.zzf zzfVar2;
        zzbkh zzf;
        zzblr zzblrVar = this.zza;
        zzfVar = zzblrVar.zzb;
        if (zzfVar == null) {
            return;
        }
        zzfVar2 = zzblrVar.zzb;
        zzf = zzblrVar.zzf(zzbkgVar);
        zzfVar2.zzb(zzf, str);
    }
}
