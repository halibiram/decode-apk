package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final class zzebh implements zzhhd {
    private final zzhhu zza;
    private final zzhhu zzb;
    private final zzhhu zzc;
    private final zzhhu zzd;
    private final zzhhu zze;
    private final zzhhu zzf;
    private final zzhhu zzg;

    public zzebh(zzhhu zzhhuVar, zzhhu zzhhuVar2, zzhhu zzhhuVar3, zzhhu zzhhuVar4, zzhhu zzhhuVar5, zzhhu zzhhuVar6, zzhhu zzhhuVar7) {
        this.zza = zzhhuVar;
        this.zzb = zzhhuVar2;
        this.zzc = zzhhuVar3;
        this.zzd = zzhhuVar4;
        this.zze = zzhhuVar5;
        this.zzf = zzhhuVar6;
        this.zzg = zzhhuVar7;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* bridge */ /* synthetic */ Object zzb() {
        Context zza = ((zzclm) this.zza).zza();
        zzfhh zza2 = ((zzdao) this.zzb).zza();
        zzeah zzb = ((zzeai) this.zzc).zzb();
        zzgey zzgeyVar = zzcep.zza;
        zzhhl.zzb(zzgeyVar);
        return new zzebg(zza, zza2, zzb, zzgeyVar, (ScheduledExecutorService) this.zze.zzb(), (zzegc) this.zzf.zzb(), (zzfmz) this.zzg.zzb());
    }
}
