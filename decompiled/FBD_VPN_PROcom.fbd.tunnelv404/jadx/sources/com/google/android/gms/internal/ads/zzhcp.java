package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
abstract class zzhcp {
    public abstract int zza(Object obj);

    public abstract int zzb(Object obj);

    public abstract Object zzc(Object obj);

    public abstract Object zzd(Object obj);

    public abstract Object zze(Object obj, Object obj2);

    public abstract Object zzf();

    public abstract Object zzg(Object obj);

    public abstract void zzh(Object obj, int i, int i2);

    public abstract void zzi(Object obj, int i, long j);

    public abstract void zzj(Object obj, int i, Object obj2);

    public abstract void zzk(Object obj, int i, zzgyl zzgylVar);

    public abstract void zzl(Object obj, int i, long j);

    public abstract void zzm(Object obj);

    public abstract void zzn(Object obj, Object obj2);

    public abstract void zzo(Object obj, Object obj2);

    public final boolean zzp(Object obj, zzhbq zzhbqVar) {
        int zzd = zzhbqVar.zzd();
        int i = zzd >>> 3;
        int i2 = zzd & 7;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 == 5) {
                                zzh(obj, i, zzhbqVar.zzf());
                                return true;
                            }
                            throw zzhag.zza();
                        }
                        return false;
                    }
                    Object zzf = zzf();
                    int i3 = i << 3;
                    while (zzhbqVar.zzc() != Integer.MAX_VALUE && zzp(zzf, zzhbqVar)) {
                    }
                    if ((4 | i3) == zzhbqVar.zzd()) {
                        zzg(zzf);
                        zzj(obj, i, zzf);
                        return true;
                    }
                    throw zzhag.zzb();
                }
                zzk(obj, i, zzhbqVar.zzp());
                return true;
            }
            zzi(obj, i, zzhbqVar.zzk());
            return true;
        }
        zzl(obj, i, zzhbqVar.zzl());
        return true;
    }

    public abstract boolean zzq(zzhbq zzhbqVar);

    public abstract void zzr(Object obj, zzgzb zzgzbVar);
}
