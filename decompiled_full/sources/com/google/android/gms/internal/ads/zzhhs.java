package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzhhs implements zzhhm {
    private static final Object zza = new Object();
    private volatile zzhhm zzb;
    private volatile Object zzc = zza;

    private zzhhs(zzhhm zzhhmVar) {
        this.zzb = zzhhmVar;
    }

    public static zzhhm zza(zzhhm zzhhmVar) {
        return ((zzhhmVar instanceof zzhhs) || (zzhhmVar instanceof zzhhc)) ? zzhhmVar : new zzhhs(zzhhmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final Object zzb() {
        Object obj = this.zzc;
        if (obj == zza) {
            zzhhm zzhhmVar = this.zzb;
            if (zzhhmVar == null) {
                return this.zzc;
            }
            Object zzb = zzhhmVar.zzb();
            this.zzc = zzb;
            this.zzb = null;
            return zzb;
        }
        return obj;
    }
}
