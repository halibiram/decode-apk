package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final class zzdbm implements zzhhd {
    private final zzhhu zza;
    private final zzhhu zzb;
    private final zzhhu zzc;
    private final zzhhu zzd;

    public zzdbm(zzhhu zzhhuVar, zzhhu zzhhuVar2, zzhhu zzhhuVar3, zzhhu zzhhuVar4) {
        this.zza = zzhhuVar;
        this.zzb = zzhhuVar2;
        this.zzc = zzhhuVar3;
        this.zzd = zzhhuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdbj zzb = ((zzdbl) this.zza).zzb();
        Set zzb2 = ((zzhhr) this.zzb).zzb();
        zzgey zzgeyVar = zzcep.zza;
        zzhhl.zzb(zzgeyVar);
        return new zzdbk(zzb, zzb2, zzgeyVar, (ScheduledExecutorService) this.zzd.zzb());
    }
}
