package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzdyh extends zzbpg {
    final /* synthetic */ Object zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ long zzc;
    final /* synthetic */ zzfmo zzd;
    final /* synthetic */ zzceu zze;
    final /* synthetic */ zzdyi zzf;

    public zzdyh(zzdyi zzdyiVar, Object obj, String str, long j, zzfmo zzfmoVar, zzceu zzceuVar) {
        this.zza = obj;
        this.zzb = str;
        this.zzc = j;
        this.zzd = zzfmoVar;
        this.zze = zzceuVar;
        this.zzf = zzdyiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zze(String str) {
        zzdwp zzdwpVar;
        zzdht zzdhtVar;
        zzfnc zzfncVar;
        synchronized (this.zza) {
            this.zzf.zzv(this.zzb, false, str, (int) (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zzc));
            zzdwpVar = this.zzf.zzl;
            zzdwpVar.zzb(this.zzb, new ObfuscatedString(new long[]{3671727828742201933L, 806278624923475396L}).toString());
            zzdhtVar = this.zzf.zzo;
            zzdhtVar.zzb(this.zzb, new ObfuscatedString(new long[]{5649672834492455194L, 1699250986122716179L}).toString());
            zzfncVar = this.zzf.zzp;
            zzfmo zzfmoVar = this.zzd;
            zzfmoVar.zzc(str);
            zzfmoVar.zzf(false);
            zzfncVar.zzb(zzfmoVar.zzl());
            this.zze.zzc(Boolean.FALSE);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbph
    public final void zzf() {
        zzdwp zzdwpVar;
        zzdht zzdhtVar;
        zzfnc zzfncVar;
        synchronized (this.zza) {
            this.zzf.zzv(this.zzb, true, new ObfuscatedString(new long[]{6133474720157202215L}).toString(), (int) (com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime() - this.zzc));
            zzdwpVar = this.zzf.zzl;
            zzdwpVar.zzd(this.zzb);
            zzdhtVar = this.zzf.zzo;
            zzdhtVar.zzd(this.zzb);
            zzfncVar = this.zzf.zzp;
            zzfmo zzfmoVar = this.zzd;
            zzfmoVar.zzf(true);
            zzfncVar.zzb(zzfmoVar.zzl());
            this.zze.zzc(Boolean.TRUE);
        }
    }
}
