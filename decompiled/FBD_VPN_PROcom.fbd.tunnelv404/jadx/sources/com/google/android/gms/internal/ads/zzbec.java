package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public enum zzbec implements zzgzw {
    zza(0),
    zzb(1),
    zzc(2),
    zzd(3),
    zze(4),
    zzf(5);

    private static final zzgzx zzg = new zzgzx() { // from class: com.google.android.gms.internal.ads.zzbea
    };
    private final int zzi;

    zzbec(int i) {
        this.zzi = i;
    }

    public static zzbec zzb(int i) {
        if (i == 0) {
            return zza;
        }
        if (i == 1) {
            return zzb;
        }
        if (i == 2) {
            return zzc;
        }
        if (i == 3) {
            return zzd;
        }
        if (i == 4) {
            return zze;
        }
        if (i != 5) {
            return null;
        }
        return zzf;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.zzi);
    }

    public final int zza() {
        return this.zzi;
    }
}
