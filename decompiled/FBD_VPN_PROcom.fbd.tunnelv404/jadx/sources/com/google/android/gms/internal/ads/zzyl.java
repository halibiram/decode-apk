package com.google.android.gms.internal.ads;

import android.util.Pair;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class zzyl extends zzyo {

    @Nullable
    private zzyk zza;

    public abstract Pair zzc(zzyk zzykVar, int[][][] iArr, int[] iArr2, zzur zzurVar, zzcx zzcxVar);

    @Override // com.google.android.gms.internal.ads.zzyo
    public final zzyp zzp(zzmh[] zzmhVarArr, zzws zzwsVar, zzur zzurVar, zzcx zzcxVar) {
        boolean z;
        boolean z2;
        zzgaa zzl;
        int[] iArr;
        boolean z3;
        int[] iArr2 = new int[3];
        zzcz[][] zzczVarArr = new zzcz[3];
        int[][][] iArr3 = new int[3][];
        for (int i = 0; i < 3; i++) {
            int i2 = zzwsVar.zzc;
            zzczVarArr[i] = new zzcz[i2];
            iArr3[i] = new int[i2];
        }
        int i3 = 2;
        int[] iArr4 = new int[2];
        for (int i4 = 0; i4 < 2; i4++) {
            iArr4[i4] = zzmhVarArr[i4].zze();
        }
        int i5 = 0;
        while (i5 < zzwsVar.zzc) {
            zzcz zzb = zzwsVar.zzb(i5);
            int i6 = zzb.zzd;
            int i7 = 0;
            int i8 = 2;
            int i9 = 0;
            boolean z4 = true;
            while (i7 < i3) {
                zzmh zzmhVar = zzmhVarArr[i7];
                int i10 = 0;
                for (int i11 = 0; i11 <= 0; i11++) {
                    i10 = Math.max(i10, zzmhVar.zzX(zzb.zzb(i11)) & 7);
                }
                if (iArr2[i7] == 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (i10 <= i9) {
                    if (i10 == i9 && i6 == 5 && !z4 && z3) {
                        i8 = i7;
                        i9 = i10;
                        z4 = true;
                    }
                } else {
                    z4 = z3;
                    i8 = i7;
                    i9 = i10;
                }
                i7++;
                i3 = 2;
            }
            if (i8 == i3) {
                iArr = new int[1];
            } else {
                zzmh zzmhVar2 = zzmhVarArr[i8];
                int[] iArr5 = new int[1];
                for (int i12 = 0; i12 <= 0; i12++) {
                    iArr5[i12] = zzmhVar2.zzX(zzb.zzb(i12));
                }
                iArr = iArr5;
            }
            int i13 = iArr2[i8];
            zzczVarArr[i8][i13] = zzb;
            iArr3[i8][i13] = iArr;
            iArr2[i8] = i13 + 1;
            i5++;
            i3 = 2;
        }
        zzws[] zzwsVarArr = new zzws[i3];
        String[] strArr = new String[i3];
        int[] iArr6 = new int[i3];
        int i14 = 0;
        while (i14 < i3) {
            int i15 = iArr2[i14];
            zzwsVarArr[i14] = new zzws((zzcz[]) zzfy.zzL(zzczVarArr[i14], i15));
            iArr3[i14] = (int[][]) zzfy.zzL(iArr3[i14], i15);
            strArr[i14] = zzmhVarArr[i14].zzT();
            iArr6[i14] = zzmhVarArr[i14].zzbj();
            i14++;
            i3 = 2;
        }
        zzyk zzykVar = new zzyk(strArr, iArr6, zzwsVarArr, iArr4, iArr3, new zzws((zzcz[]) zzfy.zzL(zzczVarArr[2], iArr2[2])));
        Pair zzc = zzc(zzykVar, iArr3, iArr4, zzurVar, zzcxVar);
        zzym[] zzymVarArr = (zzym[]) zzc.second;
        List[] listArr = new List[zzymVarArr.length];
        for (int i16 = 0; i16 < zzymVarArr.length; i16++) {
            zzym zzymVar = zzymVarArr[i16];
            if (zzymVar != null) {
                zzl = zzgaa.zzm(zzymVar);
            } else {
                zzl = zzgaa.zzl();
            }
            listArr[i16] = zzl;
        }
        zzfzx zzfzxVar = new zzfzx();
        int i17 = 0;
        for (int i18 = 2; i17 < i18; i18 = 2) {
            zzws zzd = zzykVar.zzd(i17);
            List list = listArr[i17];
            for (int i19 = 0; i19 < zzd.zzc; i19++) {
                zzcz zzb2 = zzd.zzb(i19);
                if (zzykVar.zza(i17, i19, false) != 0) {
                    z = true;
                } else {
                    z = false;
                }
                int i20 = zzb2.zzb;
                int[] iArr7 = new int[1];
                boolean[] zArr = new boolean[1];
                for (int i21 = 0; i21 <= 0; i21++) {
                    iArr7[i21] = zzykVar.zzb(i17, i19, i21) & 7;
                    int i22 = 0;
                    while (true) {
                        if (i22 < list.size()) {
                            zzym zzymVar2 = (zzym) list.get(i22);
                            if (zzymVar2.zze().equals(zzb2) && zzymVar2.zzb(i21) != -1) {
                                z2 = true;
                                break;
                            }
                            i22++;
                        } else {
                            z2 = false;
                            break;
                        }
                    }
                    zArr[i21] = z2;
                }
                zzfzxVar.zzf(new zzdj(zzb2, z, iArr7, zArr));
            }
            i17++;
        }
        zzws zze = zzykVar.zze();
        for (int i23 = 0; i23 < zze.zzc; i23++) {
            zzcz zzb3 = zze.zzb(i23);
            int i24 = zzb3.zzb;
            int[] iArr8 = new int[1];
            Arrays.fill(iArr8, 0);
            zzfzxVar.zzf(new zzdj(zzb3, false, iArr8, new boolean[1]));
        }
        return new zzyp((zzmi[]) zzc.first, (zzyi[]) zzc.second, new zzdk(zzfzxVar.zzi()), zzykVar);
    }

    @Override // com.google.android.gms.internal.ads.zzyo
    public final void zzq(@Nullable Object obj) {
        this.zza = (zzyk) obj;
    }
}
