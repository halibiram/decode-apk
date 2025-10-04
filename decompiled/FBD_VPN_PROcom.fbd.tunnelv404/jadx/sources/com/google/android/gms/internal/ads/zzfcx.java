package com.google.android.gms.internal.ads;

import android.view.ViewGroup;
import android.view.ViewParent;
import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfcx implements zzgej {
    final /* synthetic */ zzeqt zza;
    final /* synthetic */ zzfmz zzb;
    final /* synthetic */ zzfmo zzc;
    final /* synthetic */ zzcvc zzd;
    final /* synthetic */ zzfcy zze;

    public zzfcx(zzfcy zzfcyVar, zzeqt zzeqtVar, zzfmz zzfmzVar, zzfmo zzfmoVar, zzcvc zzcvcVar) {
        this.zza = zzeqtVar;
        this.zzb = zzfmzVar;
        this.zzc = zzfmoVar;
        this.zzd = zzcvcVar;
        this.zze = zzfcyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final void zza(Throwable th) {
        zzddm zzddmVar;
        zzdft zzdftVar;
        zzfnc zzfncVar;
        zzfmz zzfmzVar;
        Executor executor;
        final com.google.android.gms.ads.internal.client.zze zza = this.zzd.zzd().zza(th);
        synchronized (this.zze) {
            try {
                this.zze.zzl = null;
                this.zzd.zzf().zzbK(zza);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhZ)).booleanValue()) {
                    executor = this.zze.zzb;
                    executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfcv
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzeqe zzeqeVar;
                            zzeqeVar = zzfcx.this.zze.zzd;
                            zzeqeVar.zzbK(zza);
                        }
                    });
                }
                zzfcy zzfcyVar = this.zze;
                zzddmVar = zzfcyVar.zzh;
                zzdftVar = zzfcyVar.zzj;
                zzddmVar.zzd(zzdftVar.zzc());
                zzfie.zzb(zza.zza, th, new ObfuscatedString(new long[]{-2594866409235708702L, 6903367104379783582L, -139733302532956405L, 4339113352475336409L}).toString());
                this.zza.zza();
                if (((Boolean) zzbht.zzc.zze()).booleanValue() && (zzfmzVar = this.zzb) != null) {
                    zzfmzVar.zzc(zza);
                    zzfmo zzfmoVar = this.zzc;
                    zzfmoVar.zzg(th);
                    zzfmoVar.zzf(false);
                    zzfmzVar.zza(zzfmoVar);
                    zzfmzVar.zzg();
                } else {
                    zzfncVar = this.zze.zzi;
                    zzfmo zzfmoVar2 = this.zzc;
                    zzfmoVar2.zza(zza);
                    zzfmoVar2.zzg(th);
                    zzfmoVar2.zzf(false);
                    zzfncVar.zzb(zzfmoVar2.zzl());
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgej
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        zzddm zzddmVar;
        zzfnc zzfncVar;
        zzfmz zzfmzVar;
        Executor executor;
        final zzeqe zzeqeVar;
        zzeqe zzeqeVar2;
        zzeqi zzeqiVar;
        zzcuf zzcufVar = (zzcuf) obj;
        synchronized (this.zze) {
            try {
                this.zze.zzl = null;
                viewGroup = this.zze.zzf;
                viewGroup.removeAllViews();
                if (zzcufVar.zzc() != null) {
                    ViewParent parent = zzcufVar.zzc().getParent();
                    if (parent instanceof ViewGroup) {
                        String obfuscatedString = new ObfuscatedString(new long[]{-3510606593454061505L}).toString();
                        if (zzcufVar.zzl() != null) {
                            obfuscatedString = zzcufVar.zzl().zzg();
                        }
                        zzcec.zzj(new ObfuscatedString(new long[]{8359645893046934501L, -4399628035528408221L, -7289369532608513878L, -5901221272776252001L, 4563849327374638646L}).toString() + obfuscatedString + new ObfuscatedString(new long[]{6937914295879883160L, 1168049824366390518L, 5488140756791736211L, -3326645456257772365L, -4283321211957174246L, -1569026422644529682L, -3490109036318373568L, -2812636521947709390L}).toString());
                        ((ViewGroup) parent).removeView(zzcufVar.zzc());
                    }
                }
                zzbfu zzbfuVar = zzbgc.zzhZ;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).booleanValue()) {
                    zzdfc zzn = zzcufVar.zzn();
                    zzeqeVar2 = this.zze.zzd;
                    zzn.zza(zzeqeVar2);
                    zzeqiVar = this.zze.zze;
                    zzn.zzc(zzeqiVar);
                }
                viewGroup2 = this.zze.zzf;
                viewGroup2.addView(zzcufVar.zzc());
                this.zza.zzb(zzcufVar);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbfuVar)).booleanValue()) {
                    zzfcy zzfcyVar = this.zze;
                    executor = zzfcyVar.zzb;
                    zzeqeVar = zzfcyVar.zzd;
                    Objects.requireNonNull(zzeqeVar);
                    executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfcw
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzeqe.this.zzr();
                        }
                    });
                }
                zzddmVar = this.zze.zzh;
                zzddmVar.zzd(zzcufVar.zza());
                if (((Boolean) zzbht.zzc.zze()).booleanValue() && (zzfmzVar = this.zzb) != null) {
                    zzfmzVar.zzf(zzcufVar.zzp().zzb);
                    zzfmzVar.zze(zzcufVar.zzl().zzg());
                    zzfmo zzfmoVar = this.zzc;
                    zzfmoVar.zzf(true);
                    zzfmzVar.zza(zzfmoVar);
                    zzfmzVar.zzg();
                } else {
                    zzfncVar = this.zze.zzi;
                    zzfmo zzfmoVar2 = this.zzc;
                    zzfmoVar2.zzb(zzcufVar.zzp().zzb);
                    zzfmoVar2.zzd(zzcufVar.zzl().zzg());
                    zzfmoVar2.zzf(true);
                    zzfncVar.zzb(zzfmoVar2.zzl());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
