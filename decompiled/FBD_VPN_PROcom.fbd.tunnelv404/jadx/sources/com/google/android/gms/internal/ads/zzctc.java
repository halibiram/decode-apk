package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzctc implements zzhhd {
    private final zzhhu zza;
    private final zzhhu zzb;
    private final zzhhu zzc;
    private final zzhhu zzd;
    private final zzhhu zze;

    public zzctc(zzhhu zzhhuVar, zzhhu zzhhuVar2, zzhhu zzhhuVar3, zzhhu zzhhuVar4, zzhhu zzhhuVar5) {
        this.zza = zzhhuVar;
        this.zzb = zzhhuVar2;
        this.zzc = zzhhuVar3;
        this.zzd = zzhhuVar4;
        this.zze = zzhhuVar5;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzctb((zzbsg) this.zza.zzb(), (zzcsx) this.zzb.zzb(), (Executor) this.zzc.zzb(), (zzcsw) this.zzd.zzb(), (Clock) this.zze.zzb());
    }
}
