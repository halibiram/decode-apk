package com.google.android.gms.internal.ads;

import android.util.Pair;

/* loaded from: classes2.dex */
public abstract class zzii extends zzcx {
    private final int zzc;
    private final zzwk zzd;

    public zzii(boolean z, zzwk zzwkVar) {
        this.zzd = zzwkVar;
        this.zzc = zzwkVar.zzc();
    }

    private final int zzw(int i, boolean z) {
        if (z) {
            return this.zzd.zzd(i);
        }
        if (i >= this.zzc - 1) {
            return -1;
        }
        return i + 1;
    }

    private final int zzx(int i, boolean z) {
        if (z) {
            return this.zzd.zze(i);
        }
        if (i <= 0) {
            return -1;
        }
        return i - 1;
    }

    @Override // com.google.android.gms.internal.ads.zzcx
    public final int zza(Object obj) {
        int zza;
        if (obj instanceof Pair) {
            Pair pair = (Pair) obj;
            Object obj2 = pair.first;
            Object obj3 = pair.second;
            int zzp = zzp(obj2);
            if (zzp != -1 && (zza = zzu(zzp).zza(obj3)) != -1) {
                return zzs(zzp) + zza;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcx
    public final zzcu zzd(int i, zzcu zzcuVar, boolean z) {
        int zzq = zzq(i);
        int zzt = zzt(zzq);
        zzu(zzq).zzd(i - zzs(zzq), zzcuVar, z);
        zzcuVar.zzd += zzt;
        if (z) {
            Object zzv = zzv(zzq);
            Object obj = zzcuVar.zzc;
            obj.getClass();
            zzcuVar.zzc = Pair.create(zzv, obj);
        }
        return zzcuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcx
    public final zzcw zze(int i, zzcw zzcwVar, long j) {
        int zzr = zzr(i);
        int zzt = zzt(zzr);
        int zzs = zzs(zzr);
        zzu(zzr).zze(i - zzt, zzcwVar, j);
        Object zzv = zzv(zzr);
        if (!zzcw.zza.equals(zzcwVar.zzc)) {
            zzv = Pair.create(zzv, zzcwVar.zzc);
        }
        zzcwVar.zzc = zzv;
        zzcwVar.zzp += zzs;
        zzcwVar.zzq += zzs;
        return zzcwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcx
    public final Object zzf(int i) {
        int zzq = zzq(i);
        return Pair.create(zzv(zzq), zzu(zzq).zzf(i - zzs(zzq)));
    }

    @Override // com.google.android.gms.internal.ads.zzcx
    public final int zzg(boolean z) {
        int i;
        if (this.zzc != 0) {
            if (z) {
                i = this.zzd.zza();
            } else {
                i = 0;
            }
            while (zzu(i).zzo()) {
                i = zzw(i, z);
                if (i == -1) {
                }
            }
            return zzu(i).zzg(z) + zzt(i);
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcx
    public final int zzh(boolean z) {
        int i;
        int i2 = this.zzc;
        if (i2 != 0) {
            if (z) {
                i = this.zzd.zzb();
            } else {
                i = i2 - 1;
            }
            while (zzu(i).zzo()) {
                i = zzx(i, z);
                if (i == -1) {
                }
            }
            return zzu(i).zzh(z) + zzt(i);
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcx
    public final int zzj(int i, int i2, boolean z) {
        int i3;
        int zzr = zzr(i);
        int zzt = zzt(zzr);
        zzcx zzu = zzu(zzr);
        int i4 = i - zzt;
        if (i2 == 2) {
            i3 = 0;
        } else {
            i3 = i2;
        }
        int zzj = zzu.zzj(i4, i3, z);
        if (zzj != -1) {
            return zzt + zzj;
        }
        int zzw = zzw(zzr, z);
        while (zzw != -1 && zzu(zzw).zzo()) {
            zzw = zzw(zzw, z);
        }
        if (zzw != -1) {
            return zzu(zzw).zzg(z) + zzt(zzw);
        }
        if (i2 != 2) {
            return -1;
        }
        return zzg(z);
    }

    @Override // com.google.android.gms.internal.ads.zzcx
    public final int zzk(int i, int i2, boolean z) {
        int zzr = zzr(i);
        int zzt = zzt(zzr);
        int zzk = zzu(zzr).zzk(i - zzt, 0, false);
        if (zzk != -1) {
            return zzt + zzk;
        }
        int zzx = zzx(zzr, false);
        while (zzx != -1 && zzu(zzx).zzo()) {
            zzx = zzx(zzx, false);
        }
        if (zzx == -1) {
            return -1;
        }
        return zzu(zzx).zzh(false) + zzt(zzx);
    }

    @Override // com.google.android.gms.internal.ads.zzcx
    public final zzcu zzn(Object obj, zzcu zzcuVar) {
        Pair pair = (Pair) obj;
        Object obj2 = pair.first;
        Object obj3 = pair.second;
        int zzp = zzp(obj2);
        int zzt = zzt(zzp);
        zzu(zzp).zzn(obj3, zzcuVar);
        zzcuVar.zzd += zzt;
        zzcuVar.zzc = obj;
        return zzcuVar;
    }

    public abstract int zzp(Object obj);

    public abstract int zzq(int i);

    public abstract int zzr(int i);

    public abstract int zzs(int i);

    public abstract int zzt(int i);

    public abstract zzcx zzu(int i);

    public abstract Object zzv(int i);
}
