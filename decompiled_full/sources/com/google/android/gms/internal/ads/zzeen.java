package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.ArrayDeque;

/* loaded from: classes2.dex */
public final class zzeen implements zzhhd {
    private final zzhhu zza;
    private final zzhhu zzb;
    private final zzhhu zzc;
    private final zzhhu zzd;
    private final zzhhu zze;
    private final zzhhu zzf;
    private final zzhhu zzg;
    private final zzhhu zzh;

    public zzeen(zzhhu zzhhuVar, zzhhu zzhhuVar2, zzhhu zzhhuVar3, zzhhu zzhhuVar4, zzhhu zzhhuVar5, zzhhu zzhhuVar6, zzhhu zzhhuVar7, zzhhu zzhhuVar8) {
        this.zza = zzhhuVar;
        this.zzb = zzhhuVar2;
        this.zzc = zzhhuVar3;
        this.zzd = zzhhuVar4;
        this.zze = zzhhuVar5;
        this.zzf = zzhhuVar6;
        this.zzg = zzhhuVar7;
        this.zzh = zzhhuVar8;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* synthetic */ Object zzb() {
        Context zza = ((zzclm) this.zza).zza();
        zzgey zzgeyVar = zzcep.zza;
        zzhhl.zzb(zzgeyVar);
        return new zzeem(zza, zzgeyVar, new zzbzq(), ((zzclv) this.zzd).zzb(), ((zzeff) this.zze).zzb(), (ArrayDeque) this.zzf.zzb(), new zzefb(), (zzfnc) this.zzh.zzb());
    }
}
