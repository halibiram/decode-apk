package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final class zzemp implements zzhhd {
    private final zzhhu zza;
    private final zzhhu zzb;
    private final zzhhu zzc;
    private final zzhhu zzd;
    private final zzhhu zze;
    private final zzhhu zzf;
    private final zzhhu zzg;
    private final zzhhu zzh;
    private final zzhhu zzi;
    private final zzhhu zzj;
    private final zzhhu zzk;
    private final zzhhu zzl;

    public zzemp(zzhhu zzhhuVar, zzhhu zzhhuVar2, zzhhu zzhhuVar3, zzhhu zzhhuVar4, zzhhu zzhhuVar5, zzhhu zzhhuVar6, zzhhu zzhhuVar7, zzhhu zzhhuVar8, zzhhu zzhhuVar9, zzhhu zzhhuVar10, zzhhu zzhhuVar11, zzhhu zzhhuVar12) {
        this.zza = zzhhuVar;
        this.zzb = zzhhuVar2;
        this.zzc = zzhhuVar3;
        this.zzd = zzhhuVar4;
        this.zze = zzhhuVar5;
        this.zzf = zzhhuVar6;
        this.zzg = zzhhuVar7;
        this.zzh = zzhhuVar8;
        this.zzi = zzhhuVar9;
        this.zzj = zzhhuVar10;
        this.zzk = zzhhuVar11;
        this.zzl = zzhhuVar12;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzemo zzb() {
        Context zza = ((zzclm) this.zza).zza();
        zzflm zzflmVar = (zzflm) this.zzb.zzb();
        zzemh zzemhVar = (zzemh) this.zzc.zzb();
        zzdaz zzdazVar = (zzdaz) this.zzd.zzb();
        zzfnu zzfnuVar = (zzfnu) this.zze.zzb();
        zzfny zzfnyVar = (zzfny) this.zzf.zzb();
        zzcwk zzcwkVar = (zzcwk) this.zzg.zzb();
        zzgey zzgeyVar = zzcep.zza;
        zzhhl.zzb(zzgeyVar);
        return new zzemo(zza, zzflmVar, zzemhVar, zzdazVar, zzfnuVar, zzfnyVar, zzcwkVar, zzgeyVar, (ScheduledExecutorService) this.zzi.zzb(), (zzeis) this.zzj.zzb(), (zzfmz) this.zzk.zzb(), ((zzelt) this.zzl).zzb());
    }
}
