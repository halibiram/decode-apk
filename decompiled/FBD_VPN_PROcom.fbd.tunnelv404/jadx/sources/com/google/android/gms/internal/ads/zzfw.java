package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;

/* loaded from: classes2.dex */
public final class zzfw {

    @GuardedBy("this")
    private long zza;

    @GuardedBy("this")
    private long zzb;

    @GuardedBy("this")
    private long zzc;
    private final ThreadLocal zzd = new ThreadLocal();

    public zzfw(long j) {
        zzi(0L);
    }

    public static long zzg(long j) {
        return (j * 1000000) / 90000;
    }

    public static long zzh(long j) {
        return (j * 90000) / 1000000;
    }

    public final synchronized long zza(long j) {
        try {
            if (!zzj()) {
                long j2 = this.zza;
                if (j2 == 9223372036854775806L) {
                    Long l = (Long) this.zzd.get();
                    if (l != null) {
                        j2 = l.longValue();
                    } else {
                        throw null;
                    }
                }
                this.zzb = j2 - j;
                notifyAll();
            }
            this.zzc = j;
        } catch (Throwable th) {
            throw th;
        }
        return j + this.zzb;
    }

    public final synchronized long zzb(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            long j2 = this.zzc;
            if (j2 != -9223372036854775807L) {
                long zzh = zzh(j2);
                long j3 = (4294967296L + zzh) / 8589934592L;
                long j4 = (((-1) + j3) * 8589934592L) + j;
                long j5 = (j3 * 8589934592L) + j;
                if (Math.abs(j4 - zzh) < Math.abs(j5 - zzh)) {
                    j = j4;
                } else {
                    j = j5;
                }
            }
            return zza(zzg(j));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long zzc(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        long j2 = this.zzc;
        if (j2 != -9223372036854775807L) {
            long zzh = zzh(j2);
            long j3 = zzh / 8589934592L;
            Long.signum(j3);
            long j4 = (j3 * 8589934592L) + j;
            long j5 = ((j3 + 1) * 8589934592L) + j;
            if (j4 >= zzh) {
                j = j4;
            } else {
                j = j5;
            }
        }
        return zza(zzg(j));
    }

    public final synchronized long zzd() {
        long j = this.zza;
        if (j == Long.MAX_VALUE || j == 9223372036854775806L) {
            return -9223372036854775807L;
        }
        return j;
    }

    public final synchronized long zze() {
        long j;
        try {
            j = this.zzc;
        } catch (Throwable th) {
            throw th;
        }
        return j != -9223372036854775807L ? j + this.zzb : zzd();
    }

    public final synchronized long zzf() {
        return this.zzb;
    }

    public final synchronized void zzi(long j) {
        this.zza = j;
        this.zzb = j == Long.MAX_VALUE ? 0L : -9223372036854775807L;
        this.zzc = -9223372036854775807L;
    }

    public final synchronized boolean zzj() {
        return this.zzb != -9223372036854775807L;
    }
}
