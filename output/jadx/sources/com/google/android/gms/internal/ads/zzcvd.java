package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcvd implements zzhhd {
    private final zzhhu zza;
    private final zzhhu zzb;
    private final zzhhu zzc;

    public zzcvd(zzhhu zzhhuVar, zzhhu zzhhuVar2, zzhhu zzhhuVar3) {
        this.zza = zzhhuVar;
        this.zzb = zzhhuVar2;
        this.zzc = zzhhuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* synthetic */ Object zzb() {
        zzfhh zza = ((zzdao) this.zza).zza();
        zzekh zzb = ((zzeki) this.zzb).zzb();
        zzejo zzb2 = ((zzejp) this.zzc).zzb();
        if (zza.zza() == null) {
            return zzb2;
        }
        return zzb;
    }
}
