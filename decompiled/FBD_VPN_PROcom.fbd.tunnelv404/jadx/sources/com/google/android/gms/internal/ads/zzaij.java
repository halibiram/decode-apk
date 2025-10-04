package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import java.math.RoundingMode;

/* loaded from: classes2.dex */
final class zzaij implements zzaii {
    private final long[] zza;
    private final long[] zzb;
    private final long zzc;
    private final long zzd;

    private zzaij(long[] jArr, long[] jArr2, long j, long j2) {
        this.zza = jArr;
        this.zzb = jArr2;
        this.zzc = j;
        this.zzd = j2;
    }

    @Nullable
    public static zzaij zzb(long j, long j2, zzado zzadoVar, zzfp zzfpVar) {
        int i;
        int zzm;
        zzfpVar.zzL(10);
        int zzg = zzfpVar.zzg();
        if (zzg > 0) {
            int i2 = zzadoVar.zzd;
            if (i2 >= 32000) {
                i = 1152;
            } else {
                i = 576;
            }
            long zzs = zzfy.zzs(zzg, i * 1000000, i2, RoundingMode.FLOOR);
            int zzq = zzfpVar.zzq();
            int zzq2 = zzfpVar.zzq();
            int zzq3 = zzfpVar.zzq();
            zzfpVar.zzL(2);
            long j3 = j2 + zzadoVar.zzc;
            long[] jArr = new long[zzq];
            long[] jArr2 = new long[zzq];
            long j4 = j2;
            for (int i3 = 0; i3 < zzq; i3++) {
                jArr[i3] = (i3 * zzs) / zzq;
                jArr2[i3] = Math.max(j4, j3);
                if (zzq3 != 1) {
                    if (zzq3 != 2) {
                        if (zzq3 != 3) {
                            if (zzq3 != 4) {
                                return null;
                            }
                            zzm = zzfpVar.zzp();
                        } else {
                            zzm = zzfpVar.zzo();
                        }
                    } else {
                        zzm = zzfpVar.zzq();
                    }
                } else {
                    zzm = zzfpVar.zzm();
                }
                j4 += zzm * zzq2;
            }
            if (j != -1 && j != j4) {
                StringBuilder sb = new StringBuilder();
                sb.append(new ObfuscatedString(new long[]{-177232807396802195L, -7961838790181750283L, 5442158893579466544L, 3924132509682144763L, -8382906715746494306L}).toString());
                sb.append(j);
                zzff.zzf(new ObfuscatedString(new long[]{2491755917122346037L, 527795251803281240L, -8602230551257863237L}).toString(), AbstractC0362x4440ab85.m2930x9e171bf9(new ObfuscatedString(new long[]{4679025253754157217L, 2432522052497483542L}), sb, j4));
            }
            return new zzaij(jArr, jArr2, zzs, j4);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final long zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzaii
    public final long zzc() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzaii
    public final long zzd(long j) {
        return this.zza[zzfy.zzc(this.zzb, j, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final zzads zzg(long j) {
        long[] jArr = this.zza;
        int zzc = zzfy.zzc(jArr, j, true, true);
        zzadv zzadvVar = new zzadv(jArr[zzc], this.zzb[zzc]);
        if (zzadvVar.zzb < j) {
            long[] jArr2 = this.zza;
            if (zzc != jArr2.length - 1) {
                int i = zzc + 1;
                return new zzads(zzadvVar, new zzadv(jArr2[i], this.zzb[i]));
            }
        }
        return new zzads(zzadvVar, zzadvVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadu
    public final boolean zzh() {
        return true;
    }
}
