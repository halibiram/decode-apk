package com.google.android.gms.internal.ads;

import java.util.Set;

/* loaded from: classes2.dex */
public final class zzdxb implements zzhhd {
    private final zzdwt zza;
    private final zzhhu zzb;
    private final zzhhu zzc;

    public zzdxb(zzdwt zzdwtVar, zzhhu zzhhuVar, zzhhu zzhhuVar2) {
        this.zza = zzdwtVar;
        this.zzb = zzhhuVar;
        this.zzc = zzhhuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdxd zzdxdVar = (zzdxd) this.zzb.zzb();
        zzgey zzgeyVar = zzcep.zza;
        zzhhl.zzb(zzgeyVar);
        Set zzh = zzdwt.zzh(zzdxdVar, zzgeyVar);
        zzhhl.zzb(zzh);
        return zzh;
    }
}
