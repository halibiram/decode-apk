package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcla {
    public final int zza;
    public final int zzb;
    private final int zzc;

    private zzcla(int i, int i2, int i3) {
        this.zzc = i;
        this.zzb = i2;
        this.zza = i3;
    }

    public static zzcla zza() {
        return new zzcla(0, 0, 0);
    }

    public static zzcla zzb(int i, int i2) {
        return new zzcla(1, i, i2);
    }

    public static zzcla zzc(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        if (zzqVar.zzd) {
            return new zzcla(3, 0, 0);
        }
        if (zzqVar.zzi) {
            return new zzcla(2, 0, 0);
        }
        if (zzqVar.zzh) {
            return zza();
        }
        return zzb(zzqVar.zzf, zzqVar.zzc);
    }

    public static zzcla zzd() {
        return new zzcla(5, 0, 0);
    }

    public static zzcla zze() {
        return new zzcla(4, 0, 0);
    }

    public final boolean zzf() {
        return this.zzc == 0;
    }

    public final boolean zzg() {
        return this.zzc == 2;
    }

    public final boolean zzh() {
        return this.zzc == 5;
    }

    public final boolean zzi() {
        return this.zzc == 3;
    }

    public final boolean zzj() {
        return this.zzc == 4;
    }
}
