package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcvk implements zzhhd {
    private final zzhhu zza;

    public zzcvk(zzhhu zzhhuVar) {
        this.zza = zzhhuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final Boolean zzb() {
        boolean z = true;
        if (((zzdao) this.zza).zza().zza() == null) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfy)).booleanValue()) {
                z = false;
            }
        }
        return Boolean.valueOf(z);
    }
}
