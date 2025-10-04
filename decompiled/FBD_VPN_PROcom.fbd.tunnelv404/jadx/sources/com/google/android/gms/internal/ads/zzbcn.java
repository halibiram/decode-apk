package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public enum zzbcn implements zzgzw {
    zza(0),
    zzb(1),
    zzc(2),
    zzd(3),
    zze(4),
    zzf(5),
    zzg(6),
    zzh(7),
    zzi(8),
    zzj(9),
    zzk(10);

    private static final zzgzx zzl = new zzgzx() { // from class: com.google.android.gms.internal.ads.zzbcl
    };
    private final int zzn;

    zzbcn(int i) {
        this.zzn = i;
    }

    public static zzbcn zzb(int i) {
        switch (i) {
            case 0:
                return zza;
            case 1:
                return zzb;
            case 2:
                return zzc;
            case 3:
                return zzd;
            case 4:
                return zze;
            case 5:
                return zzf;
            case 6:
                return zzg;
            case 7:
                return zzh;
            case 8:
                return zzi;
            case 9:
                return zzj;
            case 10:
                return zzk;
            default:
                return null;
        }
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.zzn);
    }

    public final int zza() {
        return this.zzn;
    }
}
