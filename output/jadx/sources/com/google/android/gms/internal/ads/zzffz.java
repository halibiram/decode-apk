package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzffz implements zzequ {
    private final Context zza;
    private final Executor zzb;
    private final zzclg zzc;
    private final zzffp zzd;
    private final zzfed zze;
    private final zzfgz zzf;
    private final zzfnc zzg;
    private final zzfhf zzh;
    private ListenableFuture zzi;

    public zzffz(Context context, Executor executor, zzclg zzclgVar, zzfed zzfedVar, zzffp zzffpVar, zzfhf zzfhfVar, zzfgz zzfgzVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzclgVar;
        this.zze = zzfedVar;
        this.zzd = zzffpVar;
        this.zzh = zzfhfVar;
        this.zzf = zzfgzVar;
        this.zzg = zzclgVar.zzz();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final zzdss zzk(zzfeb zzfebVar) {
        zzdss zzi = this.zzc.zzi();
        zzdaf zzdafVar = new zzdaf();
        zzdafVar.zze(this.zza);
        zzdafVar.zzi(((zzffy) zzfebVar).zza);
        zzdafVar.zzh(this.zzf);
        zzi.zzd(zzdafVar.zzj());
        zzi.zzc(new zzdgm().zzn());
        return zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzequ
    public final boolean zza() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzequ
    public final boolean zzb(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzeqs zzeqsVar, zzeqt zzeqtVar) {
        zzfmz zzfmzVar;
        zzcab zzcabVar = new zzcab(zzlVar, str);
        if (zzcabVar.zzb == null) {
            zzcec.zzg(new ObfuscatedString(new long[]{5960722952830029991L, -5462263570496857032L, 2657039165948666081L, 4652379804928939390L, -8862533037447603326L, -7099126722437196525L, 5871767139795712505L, 6383130568248286541L}).toString());
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzffs
                @Override // java.lang.Runnable
                public final void run() {
                    zzffz.this.zzi();
                }
            });
            return false;
        }
        ListenableFuture listenableFuture = this.zzi;
        if (listenableFuture != null && !listenableFuture.isDone()) {
            return false;
        }
        if (((Boolean) zzbht.zzc.zze()).booleanValue()) {
            zzfed zzfedVar = this.zze;
            if (zzfedVar.zzd() != null) {
                zzfmz zzh = ((zzdst) zzfedVar.zzd()).zzh();
                zzh.zzh(5);
                zzh.zzb(zzcabVar.zza.zzp);
                zzfmzVar = zzh;
                zzfie.zza(this.zza, zzcabVar.zza.zzf);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziN)).booleanValue() && zzcabVar.zza.zzf) {
                    this.zzc.zzk().zzn(true);
                }
                zzfhf zzfhfVar = this.zzh;
                zzfhfVar.zzs(zzcabVar.zzb);
                zzfhfVar.zzr(com.google.android.gms.ads.internal.client.zzq.zzd());
                zzfhfVar.zzE(zzcabVar.zza);
                Context context = this.zza;
                zzfhh zzG = zzfhfVar.zzG();
                zzfmo zzb = zzfmn.zzb(context, zzfmy.zzf(zzG), 5, zzcabVar.zza);
                zzffy zzffyVar = new zzffy(null);
                zzffyVar.zza = zzG;
                ListenableFuture zzc = this.zze.zzc(new zzfee(zzffyVar, null), new zzfec() { // from class: com.google.android.gms.internal.ads.zzfft
                    @Override // com.google.android.gms.internal.ads.zzfec
                    public final zzdad zza(zzfeb zzfebVar) {
                        zzdss zzk;
                        zzk = zzffz.this.zzk(zzfebVar);
                        return zzk;
                    }
                }, null);
                this.zzi = zzc;
                zzgen.zzr(zzc, new zzffw(this, zzeqtVar, zzfmzVar, zzb, zzffyVar), this.zzb);
                return true;
            }
        }
        zzfmzVar = null;
        zzfie.zza(this.zza, zzcabVar.zza.zzf);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziN)).booleanValue()) {
            this.zzc.zzk().zzn(true);
        }
        zzfhf zzfhfVar2 = this.zzh;
        zzfhfVar2.zzs(zzcabVar.zzb);
        zzfhfVar2.zzr(com.google.android.gms.ads.internal.client.zzq.zzd());
        zzfhfVar2.zzE(zzcabVar.zza);
        Context context2 = this.zza;
        zzfhh zzG2 = zzfhfVar2.zzG();
        zzfmo zzb2 = zzfmn.zzb(context2, zzfmy.zzf(zzG2), 5, zzcabVar.zza);
        zzffy zzffyVar2 = new zzffy(null);
        zzffyVar2.zza = zzG2;
        ListenableFuture zzc2 = this.zze.zzc(new zzfee(zzffyVar2, null), new zzfec() { // from class: com.google.android.gms.internal.ads.zzfft
            @Override // com.google.android.gms.internal.ads.zzfec
            public final zzdad zza(zzfeb zzfebVar) {
                zzdss zzk;
                zzk = zzffz.this.zzk(zzfebVar);
                return zzk;
            }
        }, null);
        this.zzi = zzc2;
        zzgen.zzr(zzc2, new zzffw(this, zzeqtVar, zzfmzVar, zzb2, zzffyVar2), this.zzb);
        return true;
    }

    public final /* synthetic */ void zzi() {
        this.zzd.zzbK(zzfij.zzd(6, null, null));
    }

    public final void zzj(int i) {
        this.zzh.zzo().zza(i);
    }
}
