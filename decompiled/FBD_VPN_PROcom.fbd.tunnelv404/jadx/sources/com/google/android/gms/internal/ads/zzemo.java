package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzemo implements zzgdu {
    private final zzflm zza;
    private final zzdaz zzb;
    private final zzfnu zzc;
    private final zzfny zzd;
    private final Executor zze;
    private final ScheduledExecutorService zzf;
    private final zzcwk zzg;
    private final zzemh zzh;
    private final zzeis zzi;
    private final Context zzj;
    private final zzfmz zzk;
    private final zzelr zzl;

    public zzemo(Context context, zzflm zzflmVar, zzemh zzemhVar, zzdaz zzdazVar, zzfnu zzfnuVar, zzfny zzfnyVar, zzcwk zzcwkVar, Executor executor, ScheduledExecutorService scheduledExecutorService, zzeis zzeisVar, zzfmz zzfmzVar, zzelr zzelrVar) {
        this.zzj = context;
        this.zza = zzflmVar;
        this.zzh = zzemhVar;
        this.zzb = zzdazVar;
        this.zzc = zzfnuVar;
        this.zzd = zzfnyVar;
        this.zzg = zzcwkVar;
        this.zze = executor;
        this.zzf = scheduledExecutorService;
        this.zzi = zzeisVar;
        this.zzk = zzfmzVar;
        this.zzl = zzelrVar;
    }

    public static String zzc(zzfgy zzfgyVar) {
        String obfuscatedString;
        if (true != ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfu)).booleanValue()) {
            obfuscatedString = new ObfuscatedString(new long[]{3726622084743424232L, 7930271809441262036L, -5278774192293850388L}).toString();
        } else {
            obfuscatedString = new ObfuscatedString(new long[]{2846956875194632813L, -4349711051769608599L}).toString();
        }
        int i = zzfgyVar.zzb.zzb.zze;
        if (i != 0) {
            if (i >= 200 && i < 300) {
                if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzft)).booleanValue()) {
                    obfuscatedString = new ObfuscatedString(new long[]{-1484372181713152593L, 6412838763734108721L}).toString();
                }
            } else if (i >= 300 && i < 400) {
                obfuscatedString = new ObfuscatedString(new long[]{-7108188783533594777L, -5795665669184715577L, 381262721515906125L, 7969890537299139180L, -2311495246012290862L, 4589747953093110514L, 743966839575861279L, 653934999863923355L, -8737951969908463925L}).toString();
            } else {
                obfuscatedString = AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-2508110264675459515L, 6773048227285596465L, 2382828883353193274L, 8420202252686427893L, -5220298013141535554L, 969897844302345699L}), new StringBuilder(), i);
            }
        }
        zzfgo zzfgoVar = zzfgyVar.zzb.zzb.zzi;
        if (zzfgoVar != null) {
            return zzfgoVar.zza();
        }
        return obfuscatedString;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00cf  */
    @Override // com.google.android.gms.internal.ads.zzgdu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* synthetic */ ListenableFuture zza(Object obj) {
        int i;
        final zzfgy zzfgyVar = (zzfgy) obj;
        String zzc = zzc(zzfgyVar);
        this.zzi.zzi(zzfgyVar.zzb.zzb);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzih)).booleanValue() && (i = zzfgyVar.zzb.zzb.zze) != 0 && (i < 200 || i >= 300)) {
            return zzgen.zzg(new zzeml(3, zzc));
        }
        zzfgp zzfgpVar = zzfgyVar.zzb.zzb;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzds)).booleanValue()) {
            String str = zzfgpVar.zzo;
            if (!TextUtils.isEmpty(str)) {
                this.zzi.zzh(str, zzfgyVar.zzb.zza);
                this.zzb.zzo(new zzcsi(zzfgyVar, this.zzd, this.zzc), this.zze);
                if (zzfgyVar.zzb.zzb.zzp <= 1) {
                    return this.zzl.zzb(zzfgyVar);
                }
                zzfkr zza = zzfkw.zzc(zzgen.zzg(new zzeml(3, zzc(zzfgyVar))), zzflg.zzn, this.zza).zza();
                this.zzh.zzl();
                int i2 = 0;
                for (final zzfgm zzfgmVar : zzfgyVar.zzb.zza) {
                    Iterator it = zzfgmVar.zza.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        String str2 = (String) it.next();
                        final zzein zza2 = this.zzg.zza(zzfgmVar.zzb, str2);
                        if (zza2 != null && zza2.zzb(zzfgyVar, zzfgmVar)) {
                            zza = this.zza.zzb(zzflg.zzo, zza).zzh(new ObfuscatedString(new long[]{3569655625097721803L, 4956454795170121037L, 4148025677982094705L}).toString() + i2 + new ObfuscatedString(new long[]{-4386096400532774502L, 5047111134528275302L}).toString() + str2).zzc(Throwable.class, new zzgdu() { // from class: com.google.android.gms.internal.ads.zzemm
                                @Override // com.google.android.gms.internal.ads.zzgdu
                                public final ListenableFuture zza(Object obj2) {
                                    return zzemo.this.zzb(zzfgmVar, zzfgyVar, zza2, (Throwable) obj2);
                                }
                            }).zza();
                            break;
                        }
                    }
                    i2++;
                }
                final zzemh zzemhVar = this.zzh;
                Objects.requireNonNull(zzemhVar);
                zza.addListener(new Runnable() { // from class: com.google.android.gms.internal.ads.zzemn
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzemh.this.zzj();
                    }
                }, this.zze);
                return zza;
            }
        }
        for (zzfgm zzfgmVar2 : zzfgyVar.zzb.zza) {
            this.zzi.zzd(zzfgmVar2);
            Iterator it2 = zzfgmVar2.zza.iterator();
            while (true) {
                if (it2.hasNext()) {
                    zzein zza3 = this.zzg.zza(zzfgmVar2.zzb, (String) it2.next());
                    if (zza3 == null || !zza3.zzb(zzfgyVar, zzfgmVar2)) {
                    }
                } else {
                    this.zzi.zzf(zzfgmVar2, 0L, zzfij.zzd(1, null, null));
                    break;
                }
            }
        }
        this.zzb.zzo(new zzcsi(zzfgyVar, this.zzd, this.zzc), this.zze);
        if (zzfgyVar.zzb.zzb.zzp <= 1) {
        }
    }

    public final /* synthetic */ ListenableFuture zzb(zzfgm zzfgmVar, zzfgy zzfgyVar, zzein zzeinVar, Throwable th) {
        zzfmo zza = zzfmn.zza(this.zzj, 12);
        zza.zzd(zzfgmVar.zzF);
        zza.zzh();
        ListenableFuture zzo = zzgen.zzo(zzeinVar.zza(zzfgyVar, zzfgmVar), zzfgmVar.zzS, TimeUnit.MILLISECONDS, this.zzf);
        this.zzh.zzf(zzfgyVar, zzfgmVar, zzo, this.zzc);
        zzfmy.zza(zzo, this.zzk, zza);
        return zzo;
    }
}
