package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzbnp implements com.google.android.gms.ads.internal.overlay.zzy {
    boolean zza = false;
    final /* synthetic */ boolean zzb;
    final /* synthetic */ com.google.android.gms.ads.internal.client.zza zzc;
    final /* synthetic */ Map zzd;
    final /* synthetic */ Map zze;

    public zzbnp(zzbnr zzbnrVar, boolean z, com.google.android.gms.ads.internal.client.zza zzaVar, Map map, Map map2) {
        this.zzb = z;
        this.zzc = zzaVar;
        this.zzd = map;
        this.zze = map2;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzy
    public final void zza(boolean z) {
        if (!this.zza) {
            if (z && this.zzb) {
                ((zzdiu) this.zzc).zzs();
            }
            this.zza = true;
            this.zzd.put((String) this.zze.get(new ObfuscatedString(new long[]{-7299084777753939520L, -5498845143510394386L}).toString()), Boolean.valueOf(z));
            com.google.android.gms.ads.internal.client.zza zzaVar = this.zzc;
            ((zzbqa) zzaVar).zzd(new ObfuscatedString(new long[]{-2040259310707223074L, -3088140629933898697L, 8406630938340563781L}).toString(), this.zzd);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzy
    public final void zzb(int i) {
    }
}
