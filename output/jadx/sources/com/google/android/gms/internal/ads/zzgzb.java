package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes2.dex */
final class zzgzb {
    private final zzgza zza;

    private zzgzb(zzgza zzgzaVar) {
        byte[] bArr = zzhae.zzd;
        this.zza = zzgzaVar;
        zzgzaVar.zze = this;
    }

    public static zzgzb zza(zzgza zzgzaVar) {
        zzgzb zzgzbVar = zzgzaVar.zze;
        if (zzgzbVar != null) {
            return zzgzbVar;
        }
        return new zzgzb(zzgzaVar);
    }

    public final void zzA(int i, int i2) {
        this.zza.zzr(i, (i2 >> 31) ^ (i2 + i2));
    }

    public final void zzB(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zza.zzq(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                int intValue = ((Integer) list.get(i4)).intValue();
                i3 += zzgza.zzz((intValue >> 31) ^ (intValue + intValue));
            }
            this.zza.zzs(i3);
            while (i2 < list.size()) {
                zzgza zzgzaVar = this.zza;
                int intValue2 = ((Integer) list.get(i2)).intValue();
                zzgzaVar.zzs((intValue2 >> 31) ^ (intValue2 + intValue2));
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            zzgza zzgzaVar2 = this.zza;
            int intValue3 = ((Integer) list.get(i2)).intValue();
            zzgzaVar2.zzr(i, (intValue3 >> 31) ^ (intValue3 + intValue3));
            i2++;
        }
    }

    public final void zzC(int i, long j) {
        this.zza.zzt(i, (j >> 63) ^ (j + j));
    }

    public final void zzD(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zza.zzq(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                long longValue = ((Long) list.get(i4)).longValue();
                i3 += zzgza.zzA((longValue >> 63) ^ (longValue + longValue));
            }
            this.zza.zzs(i3);
            while (i2 < list.size()) {
                zzgza zzgzaVar = this.zza;
                long longValue2 = ((Long) list.get(i2)).longValue();
                zzgzaVar.zzu((longValue2 >> 63) ^ (longValue2 + longValue2));
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            zzgza zzgzaVar2 = this.zza;
            long longValue3 = ((Long) list.get(i2)).longValue();
            zzgzaVar2.zzt(i, (longValue3 >> 63) ^ (longValue3 + longValue3));
            i2++;
        }
    }

    @Deprecated
    public final void zzE(int i) {
        this.zza.zzq(i, 3);
    }

    public final void zzF(int i, String str) {
        this.zza.zzo(i, str);
    }

    public final void zzG(int i, List list) {
        int i2 = 0;
        if (list instanceof zzham) {
            zzham zzhamVar = (zzham) list;
            while (i2 < list.size()) {
                Object zzf = zzhamVar.zzf(i2);
                if (zzf instanceof String) {
                    this.zza.zzo(i, (String) zzf);
                } else {
                    this.zza.zzK(i, (zzgyl) zzf);
                }
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zzo(i, (String) list.get(i2));
            i2++;
        }
    }

    public final void zzH(int i, int i2) {
        this.zza.zzr(i, i2);
    }

    public final void zzI(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zza.zzq(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzgza.zzz(((Integer) list.get(i4)).intValue());
            }
            this.zza.zzs(i3);
            while (i2 < list.size()) {
                this.zza.zzs(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zzr(i, ((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public final void zzJ(int i, long j) {
        this.zza.zzt(i, j);
    }

    public final void zzK(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zza.zzq(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzgza.zzA(((Long) list.get(i4)).longValue());
            }
            this.zza.zzs(i3);
            while (i2 < list.size()) {
                this.zza.zzu(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zzt(i, ((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public final void zzb(int i, boolean z) {
        this.zza.zzJ(i, z);
    }

    public final void zzc(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zza.zzq(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Boolean) list.get(i4)).getClass();
                i3++;
            }
            this.zza.zzs(i3);
            while (i2 < list.size()) {
                this.zza.zzI(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zzJ(i, ((Boolean) list.get(i2)).booleanValue());
            i2++;
        }
    }

    public final void zzd(int i, zzgyl zzgylVar) {
        this.zza.zzK(i, zzgylVar);
    }

    public final void zze(int i, List list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.zza.zzK(i, (zzgyl) list.get(i2));
        }
    }

    public final void zzf(int i, double d) {
        this.zza.zzj(i, Double.doubleToRawLongBits(d));
    }

    public final void zzg(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zza.zzq(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Double) list.get(i4)).getClass();
                i3 += 8;
            }
            this.zza.zzs(i3);
            while (i2 < list.size()) {
                this.zza.zzk(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zzj(i, Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
            i2++;
        }
    }

    @Deprecated
    public final void zzh(int i) {
        this.zza.zzq(i, 4);
    }

    public final void zzi(int i, int i2) {
        this.zza.zzl(i, i2);
    }

    public final void zzj(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zza.zzq(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzgza.zzA(((Integer) list.get(i4)).intValue());
            }
            this.zza.zzs(i3);
            while (i2 < list.size()) {
                this.zza.zzm(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zzl(i, ((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public final void zzk(int i, int i2) {
        this.zza.zzh(i, i2);
    }

    public final void zzl(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zza.zzq(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            this.zza.zzs(i3);
            while (i2 < list.size()) {
                this.zza.zzi(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zzh(i, ((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public final void zzm(int i, long j) {
        this.zza.zzj(i, j);
    }

    public final void zzn(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zza.zzq(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                i3 += 8;
            }
            this.zza.zzs(i3);
            while (i2 < list.size()) {
                this.zza.zzk(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zzj(i, ((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public final void zzo(int i, float f) {
        this.zza.zzh(i, Float.floatToRawIntBits(f));
    }

    public final void zzp(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zza.zzq(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Float) list.get(i4)).getClass();
                i3 += 4;
            }
            this.zza.zzs(i3);
            while (i2 < list.size()) {
                this.zza.zzi(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zzh(i, Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
            i2++;
        }
    }

    public final void zzq(int i, Object obj, zzhby zzhbyVar) {
        zzgza zzgzaVar = this.zza;
        zzgzaVar.zzq(i, 3);
        zzhbyVar.zzm((zzhbe) obj, zzgzaVar.zze);
        zzgzaVar.zzq(i, 4);
    }

    public final void zzr(int i, int i2) {
        this.zza.zzl(i, i2);
    }

    public final void zzs(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zza.zzq(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzgza.zzA(((Integer) list.get(i4)).intValue());
            }
            this.zza.zzs(i3);
            while (i2 < list.size()) {
                this.zza.zzm(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zzl(i, ((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public final void zzt(int i, long j) {
        this.zza.zzt(i, j);
    }

    public final void zzu(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zza.zzq(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzgza.zzA(((Long) list.get(i4)).longValue());
            }
            this.zza.zzs(i3);
            while (i2 < list.size()) {
                this.zza.zzu(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zzt(i, ((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    public final void zzv(int i, Object obj, zzhby zzhbyVar) {
        this.zza.zzn(i, (zzhbe) obj, zzhbyVar);
    }

    public final void zzw(int i, int i2) {
        this.zza.zzh(i, i2);
    }

    public final void zzx(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zza.zzq(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                i3 += 4;
            }
            this.zza.zzs(i3);
            while (i2 < list.size()) {
                this.zza.zzi(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zzh(i, ((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    public final void zzy(int i, long j) {
        this.zza.zzj(i, j);
    }

    public final void zzz(int i, List list, boolean z) {
        int i2 = 0;
        if (z) {
            this.zza.zzq(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                i3 += 8;
            }
            this.zza.zzs(i3);
            while (i2 < list.size()) {
                this.zza.zzk(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            this.zza.zzj(i, ((Long) list.get(i2)).longValue());
            i2++;
        }
    }
}
