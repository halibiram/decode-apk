package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final class zzerb implements zzequ {
    private final zzfhf zza;
    private final zzclg zzb;
    private final Context zzc;
    private final zzeqr zzd;
    private final zzfnc zze;

    @Nullable
    private zzcww zzf;

    public zzerb(zzclg zzclgVar, Context context, zzeqr zzeqrVar, zzfhf zzfhfVar) {
        this.zzb = zzclgVar;
        this.zzc = context;
        this.zzd = zzeqrVar;
        this.zza = zzfhfVar;
        this.zze = zzclgVar.zzz();
        zzfhfVar.zzu(zzeqrVar.zzd());
    }

    @Override // com.google.android.gms.internal.ads.zzequ
    public final boolean zza() {
        zzcww zzcwwVar = this.zzf;
        if (zzcwwVar != null && zzcwwVar.zzf()) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzequ
    public final boolean zzb(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzeqs zzeqsVar, zzeqt zzeqtVar) {
        zzfmz zzfmzVar;
        com.google.android.gms.ads.internal.zzt.zzp();
        if (com.google.android.gms.ads.internal.util.zzt.zzG(this.zzc) && zzlVar.zzs == null) {
            zzcec.zzg(new ObfuscatedString(new long[]{3810801110756085527L, -4127514980041754490L, 824404708326376465L, 8171548837344265940L, -9157916012489000589L, 2761643392853326786L, 1881635902178353253L}).toString());
            this.zzb.zzB().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeqw
                @Override // java.lang.Runnable
                public final void run() {
                    zzerb.this.zzf();
                }
            });
            return false;
        }
        if (str == null) {
            zzcec.zzg(new ObfuscatedString(new long[]{1990316970372977109L, -1731160915193940116L, -7698451337963415884L, -2879097064007096058L, 159292178296761492L, 7796866731598577804L, 300119399587897227L, 5789045838951158864L}).toString());
            this.zzb.zzB().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeqx
                @Override // java.lang.Runnable
                public final void run() {
                    zzerb.this.zzg();
                }
            });
            return false;
        }
        zzfie.zza(this.zzc, zzlVar.zzf);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziN)).booleanValue() && zzlVar.zzf) {
            this.zzb.zzk().zzn(true);
        }
        int i = ((zzeqv) zzeqsVar).zza;
        zzfhf zzfhfVar = this.zza;
        zzfhfVar.zzE(zzlVar);
        zzfhfVar.zzz(i);
        Context context = this.zzc;
        zzfhh zzG = zzfhfVar.zzG();
        zzfmo zzb = zzfmn.zzb(context, zzfmy.zzf(zzG), 8, zzlVar);
        com.google.android.gms.ads.internal.client.zzcb zzcbVar = zzG.zzn;
        if (zzcbVar != null) {
            this.zzd.zzd().zzm(zzcbVar);
        }
        zzdlj zzh = this.zzb.zzh();
        zzdaf zzdafVar = new zzdaf();
        zzdafVar.zze(this.zzc);
        zzdafVar.zzi(zzG);
        zzh.zzf(zzdafVar.zzj());
        zzdgm zzdgmVar = new zzdgm();
        zzdgmVar.zzk(this.zzd.zzd(), this.zzb.zzB());
        zzh.zze(zzdgmVar.zzn());
        zzh.zzd(this.zzd.zzc());
        zzh.zzc(new zzcuc(null));
        zzdlk zzg = zzh.zzg();
        if (((Boolean) zzbht.zzc.zze()).booleanValue()) {
            zzfmz zzf = zzg.zzf();
            zzf.zzh(8);
            zzf.zzb(zzlVar.zzp);
            zzfmzVar = zzf;
        } else {
            zzfmzVar = null;
        }
        this.zzb.zzx().zzc(1);
        zzgey zzgeyVar = zzcep.zza;
        zzhhl.zzb(zzgeyVar);
        ScheduledExecutorService zzC = this.zzb.zzC();
        zzcxp zza = zzg.zza();
        zzcww zzcwwVar = new zzcww(zzgeyVar, zzC, zza.zzi(zza.zzj()));
        this.zzf = zzcwwVar;
        zzcwwVar.zze(new zzera(this, zzeqtVar, zzfmzVar, zzb, zzg));
        return true;
    }

    public final /* synthetic */ void zzf() {
        this.zzd.zza().zzbK(zzfij.zzd(4, null, null));
    }

    public final /* synthetic */ void zzg() {
        this.zzd.zza().zzbK(zzfij.zzd(6, null, null));
    }
}
