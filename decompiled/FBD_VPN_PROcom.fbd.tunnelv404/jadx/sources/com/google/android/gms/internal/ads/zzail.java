package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;

/* loaded from: classes2.dex */
final class zzail implements zzaii {
    private final long zza;
    private final int zzb;
    private final long zzc;
    private final long zzd;
    private final long zze;

    @Nullable
    private final long[] zzf;

    private zzail(long j, int i, long j2, long j3, @Nullable long[] jArr) {
        this.zza = j;
        this.zzb = i;
        this.zzc = j2;
        this.zzf = jArr;
        this.zzd = j3;
        this.zze = j3 != -1 ? j + j3 : -1L;
    }

    @Nullable
    public static zzail zzb(long j, zzaik zzaikVar, long j2) {
        long j3 = zzaikVar.zzb;
        if (j3 == -1) {
            j3 = -1;
        }
        long zzr = zzfy.zzr((j3 * r7.zzg) - 1, zzaikVar.zza.zzd);
        long j4 = zzaikVar.zzc;
        if (j4 != -1 && zzaikVar.zzf != null) {
            if (j != -1) {
                long j5 = j2 + j4;
                if (j != j5) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{2523048327327195582L, -3354502725213972731L, 6534447784958028069L, -7678452078767757082L, -1337609034604165402L}).toString());
                    sb.append(j);
                    zzff.zzf(new ObfuscatedString(new long[]{-3673830791783358448L, 8077645643782284653L, 8926806773509082887L}).toString(), AbstractC0362x4440ab85.m2930x9e171bf9(new ObfuscatedString(new long[]{-8658669243692342713L, 4424670443344444165L}), sb, j5));
                }
            }
            return new zzail(j2, zzaikVar.zza.zzc, zzr, zzaikVar.zzc, zzaikVar.zzf);
        }
        return new zzail(j2, zzaikVar.zza.zzc, zzr, -1L, null);
    }

    private final long zze(int i) {
        return (this.zzc * i) / 100;
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final long zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzaii
    public final long zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzaii
    public final long zzd(long j) {
        long j2;
        double d;
        if (zzh()) {
            long j3 = j - this.zza;
            if (j3 > this.zzb) {
                long[] jArr = this.zzf;
                zzek.zzb(jArr);
                double d2 = (j3 * 256.0d) / this.zzd;
                int zzc = zzfy.zzc(jArr, (long) d2, true, true);
                long zze = zze(zzc);
                long j4 = jArr[zzc];
                int i = zzc + 1;
                long zze2 = zze(i);
                if (zzc == 99) {
                    j2 = 256;
                } else {
                    j2 = jArr[i];
                }
                if (j4 == j2) {
                    d = 0.0d;
                } else {
                    d = (d2 - j4) / (j2 - j4);
                }
                return Math.round(d * (zze2 - zze)) + zze;
            }
            return 0L;
        }
        return 0L;
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final zzads zzg(long j) {
        double d;
        if (!zzh()) {
            zzadv zzadvVar = new zzadv(0L, this.zza + this.zzb);
            return new zzads(zzadvVar, zzadvVar);
        }
        long max = Math.max(0L, Math.min(j, this.zzc));
        double d2 = (max * 100.0d) / this.zzc;
        double d3 = 0.0d;
        if (d2 > 0.0d) {
            if (d2 >= 100.0d) {
                d3 = 256.0d;
            } else {
                int i = (int) d2;
                long[] jArr = this.zzf;
                zzek.zzb(jArr);
                double d4 = jArr[i];
                if (i == 99) {
                    d = 256.0d;
                } else {
                    d = jArr[i + 1];
                }
                d3 = ((d - d4) * (d2 - i)) + d4;
            }
        }
        long j2 = this.zzd;
        zzadv zzadvVar2 = new zzadv(max, this.zza + Math.max(this.zzb, Math.min(Math.round((d3 / 256.0d) * j2), j2 - 1)));
        return new zzads(zzadvVar2, zzadvVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final boolean zzh() {
        return this.zzf != null;
    }
}
