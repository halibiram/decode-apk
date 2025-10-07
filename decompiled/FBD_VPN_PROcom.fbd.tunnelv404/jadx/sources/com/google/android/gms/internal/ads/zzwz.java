package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzwz extends zzxb {
    private final zzyw zzd;
    private final zzgaa zze;
    private final zzel zzf;

    public zzwz(zzcz zzczVar, int[] iArr, int i, zzyw zzywVar, long j, long j2, long j3, int i2, int i3, float f, float f2, List list, zzel zzelVar) {
        super(zzczVar, iArr, 0);
        this.zzd = zzywVar;
        this.zze = zzgaa.zzj(list);
        this.zzf = zzelVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* bridge */ /* synthetic */ zzgaa zzf(zzyh[] zzyhVarArr) {
        int i;
        int i2;
        zzgaa zzi;
        double d;
        long j;
        ArrayList arrayList = new ArrayList();
        char c = 0;
        int i3 = 0;
        while (true) {
            i = 2;
            i2 = 1;
            if (i3 >= 2) {
                break;
            }
            zzyh zzyhVar = zzyhVarArr[i3];
            if (zzyhVar != null && zzyhVar.zzb.length > 1) {
                zzfzx zzfzxVar = new zzfzx();
                zzfzxVar.zzf(new zzwx(0L, 0L));
                arrayList.add(zzfzxVar);
            } else {
                arrayList.add(null);
            }
            i3++;
        }
        long[][] jArr = new long[2];
        for (int i4 = 0; i4 < 2; i4++) {
            zzyh zzyhVar2 = zzyhVarArr[i4];
            if (zzyhVar2 == null) {
                jArr[i4] = new long[0];
            } else {
                jArr[i4] = new long[zzyhVar2.zzb.length];
                int i5 = 0;
                while (true) {
                    int[] iArr = zzyhVar2.zzb;
                    if (i5 >= iArr.length) {
                        break;
                    }
                    long j2 = zzyhVar2.zza.zzb(iArr[i5]).zzi;
                    long[] jArr2 = jArr[i4];
                    if (j2 == -1) {
                        j2 = 0;
                    }
                    jArr2[i5] = j2;
                    i5++;
                }
                Arrays.sort(jArr[i4]);
            }
        }
        int[] iArr2 = new int[2];
        long[] jArr3 = new long[2];
        for (int i6 = 0; i6 < 2; i6++) {
            long[] jArr4 = jArr[i6];
            if (jArr4.length == 0) {
                j = 0;
            } else {
                j = jArr4[0];
            }
            jArr3[i6] = j;
        }
        zzg(arrayList, jArr3);
        zzgal zza = zzgbe.zzc(zzgbj.zzc()).zzb(2).zza();
        int i7 = 0;
        while (i7 < i) {
            int length = jArr[i7].length;
            if (length > i2) {
                double[] dArr = new double[length];
                int i8 = 0;
                while (true) {
                    long[] jArr5 = jArr[i7];
                    double d2 = 0.0d;
                    if (i8 >= jArr5.length) {
                        break;
                    }
                    long j3 = jArr5[i8];
                    if (j3 != -1) {
                        d2 = Math.log(j3);
                    }
                    dArr[i8] = d2;
                    i8++;
                }
                int i9 = length - 1;
                double d3 = dArr[i9] - dArr[c];
                int i10 = 0;
                while (i10 < i9) {
                    double d4 = dArr[i10];
                    i10++;
                    double d5 = d4 + dArr[i10];
                    if (d3 == 0.0d) {
                        d = 1.0d;
                    } else {
                        d = ((d5 * 0.5d) - dArr[c]) / d3;
                    }
                    zza.zzq(Double.valueOf(d), Integer.valueOf(i7));
                    c = 0;
                }
            }
            i7++;
            c = 0;
            i = 2;
            i2 = 1;
        }
        zzgaa zzj = zzgaa.zzj(zza.zzr());
        for (int i11 = 0; i11 < zzj.size(); i11++) {
            int intValue = ((Integer) zzj.get(i11)).intValue();
            int i12 = iArr2[intValue] + 1;
            iArr2[intValue] = i12;
            jArr3[intValue] = jArr[intValue][i12];
            zzg(arrayList, jArr3);
        }
        for (int i13 = 0; i13 < 2; i13++) {
            if (arrayList.get(i13) != null) {
                long j4 = jArr3[i13];
                jArr3[i13] = j4 + j4;
            }
        }
        zzg(arrayList, jArr3);
        zzfzx zzfzxVar2 = new zzfzx();
        for (int i14 = 0; i14 < arrayList.size(); i14++) {
            zzfzx zzfzxVar3 = (zzfzx) arrayList.get(i14);
            if (zzfzxVar3 == null) {
                zzi = zzgaa.zzl();
            } else {
                zzi = zzfzxVar3.zzi();
            }
            zzfzxVar2.zzf(zzi);
        }
        return zzfzxVar2.zzi();
    }

    private static void zzg(List list, long[] jArr) {
        long j = 0;
        for (int i = 0; i < 2; i++) {
            j += jArr[i];
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzfzx zzfzxVar = (zzfzx) list.get(i2);
            if (zzfzxVar != null) {
                zzfzxVar.zzf(new zzwx(j, jArr[i2]));
            }
        }
    }
}
