package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;

/* loaded from: classes2.dex */
public final class zzevp implements zzhhd {
    private final zzhhu zza;
    private final zzhhu zzb;
    private final zzhhu zzc;
    private final zzhhu zzd;

    public zzevp(zzhhu zzhhuVar, zzhhu zzhhuVar2, zzhhu zzhhuVar3, zzhhu zzhhuVar4) {
        this.zza = zzhhuVar;
        this.zzb = zzhhuVar2;
        this.zzc = zzhhuVar3;
        this.zzd = zzhhuVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzgey zzgeyVar = zzcep.zza;
        zzhhl.zzb(zzgeyVar);
        return new zzevn(zzgeyVar, ((zzdao) this.zzb).zza(), (PackageInfo) this.zzc.zzb(), ((zzclk) this.zzd).zzb());
    }
}
