package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzekh implements zzein {
    private final zzcvc zza;
    private final zzejo zzb;
    private final zzgey zzc;
    private final zzdaz zzd;
    private final ScheduledExecutorService zze;
    private final zzdwa zzf;

    public zzekh(zzcvc zzcvcVar, zzejo zzejoVar, zzdaz zzdazVar, ScheduledExecutorService scheduledExecutorService, zzgey zzgeyVar, zzdwa zzdwaVar) {
        this.zza = zzcvcVar;
        this.zzb = zzejoVar;
        this.zzd = zzdazVar;
        this.zze = scheduledExecutorService;
        this.zzc = zzgeyVar;
        this.zzf = zzdwaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzein
    public final ListenableFuture zza(final zzfgy zzfgyVar, final zzfgm zzfgmVar) {
        return this.zzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzekf
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzekh.this.zzc(zzfgyVar, zzfgmVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzein
    public final boolean zzb(zzfgy zzfgyVar, zzfgm zzfgmVar) {
        String obfuscatedString;
        String obfuscatedString2;
        zzbld zza = zzfgyVar.zza.zza.zza();
        boolean zzb = this.zzb.zzb(zzfgyVar, zzfgmVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzlq)).booleanValue()) {
            zzdwa zzdwaVar = this.zzf;
            if (zza != null) {
                obfuscatedString = new ObfuscatedString(new long[]{-8864236281525033532L, -4221311498560890111L}).toString();
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{-6815211695895671659L, 7637002066442167348L}).toString();
            }
            zzdwaVar.zza().put(new ObfuscatedString(new long[]{-2844653744106980765L, -7920466773747695684L}).toString(), obfuscatedString);
            zzdwa zzdwaVar2 = this.zzf;
            if (true != zzb) {
                obfuscatedString2 = new ObfuscatedString(new long[]{-3908159387527883011L, 742300796575316365L}).toString();
            } else {
                obfuscatedString2 = new ObfuscatedString(new long[]{-2201363358624307961L, 1623070746460798838L}).toString();
            }
            zzdwaVar2.zza().put(new ObfuscatedString(new long[]{-5757770392304987518L, -5202552635715760736L}).toString(), obfuscatedString2);
        }
        if (zza != null && zzb) {
            return true;
        }
        return false;
    }

    public final /* synthetic */ zzcuf zzc(final zzfgy zzfgyVar, final zzfgm zzfgmVar) {
        return this.zza.zzb(new zzcwx(zzfgyVar, zzfgmVar, null), new zzcvp(zzfgyVar.zza.zza.zza(), new Runnable() { // from class: com.google.android.gms.internal.ads.zzeke
            @Override // java.lang.Runnable
            public final void run() {
                zzekh.this.zzf(zzfgyVar, zzfgmVar);
            }
        })).zza();
    }

    public final /* synthetic */ void zzf(zzfgy zzfgyVar, zzfgm zzfgmVar) {
        zzgen.zzr(zzgen.zzo(this.zzb.zza(zzfgyVar, zzfgmVar), zzfgmVar.zzS, TimeUnit.SECONDS, this.zze), new zzekg(this), this.zzc);
    }
}
