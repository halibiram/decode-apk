package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzczh implements zzhhd {
    private final zzhhu zza;
    private final zzhhu zzb;
    private final zzhhu zzc;

    public zzczh(zzhhu zzhhuVar, zzhhu zzhhuVar2, zzhhu zzhhuVar3) {
        this.zza = zzhhuVar;
        this.zzb = zzhhuVar2;
        this.zzc = zzhhuVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzdbb zzdbbVar = (zzdvo) this.zza.zzb();
        zzgey zzgeyVar = zzcep.zza;
        zzhhl.zzb(zzgeyVar);
        zzdbb zzdbbVar2 = (zzefg) this.zzc.zzb();
        if (true == ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziz)).booleanValue()) {
            zzdbbVar = zzdbbVar2;
        }
        return new zzdim(zzdbbVar, zzgeyVar);
    }
}
