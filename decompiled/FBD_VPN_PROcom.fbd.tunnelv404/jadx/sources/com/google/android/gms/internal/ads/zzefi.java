package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzefi implements zzdds, zzdcl, zzdba {
    private final zzflv zza;
    private final zzflw zzb;
    private final zzcdp zzc;

    public zzefi(zzflv zzflvVar, zzflw zzflwVar, zzcdp zzcdpVar) {
        this.zza = zzflvVar;
        this.zzb = zzflwVar;
        this.zzc = zzcdpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdba
    public final void zzbK(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzflv zzflvVar = this.zza;
        zzflvVar.zza(new ObfuscatedString(new long[]{-8707909844193135054L, 4008087157125507882L}).toString(), new ObfuscatedString(new long[]{1059164781287844927L, -518505240466904714L}).toString());
        zzflvVar.zza(new ObfuscatedString(new long[]{4040114878433463564L, -111676394900109018L}).toString(), String.valueOf(zzeVar.zza));
        zzflvVar.zza(new ObfuscatedString(new long[]{54369013483516222L, -3241431999369655223L}).toString(), zzeVar.zzc);
        this.zzb.zzb(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdds
    public final void zzbw(zzbze zzbzeVar) {
        this.zza.zzi(zzbzeVar.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdds
    public final void zzbx(zzfgy zzfgyVar) {
        this.zza.zzh(zzfgyVar, this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzdcl
    public final void zzr() {
        zzflv zzflvVar = this.zza;
        zzflvVar.zza(new ObfuscatedString(new long[]{-6561194712565782227L, -6106705192770150476L}).toString(), new ObfuscatedString(new long[]{6117921461635489383L, -4642197894487182196L}).toString());
        this.zzb.zzb(zzflvVar);
    }
}
