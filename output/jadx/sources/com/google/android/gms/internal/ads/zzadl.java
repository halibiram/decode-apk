package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzadl {
    public final List zza;
    public final int zzb;
    public final int zzc;
    public final int zzd;
    public final int zze;
    public final int zzf;
    public final int zzg;
    public final float zzh;

    @Nullable
    public final String zzi;

    private zzadl(List list, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, float f, @Nullable String str) {
        this.zza = list;
        this.zzb = i;
        this.zzc = i4;
        this.zzd = i5;
        this.zze = i6;
        this.zzf = i7;
        this.zzg = i8;
        this.zzh = f;
        this.zzi = str;
    }

    public static zzadl zza(zzfp zzfpVar) {
        List singletonList;
        int i;
        int i2;
        int i3;
        int i4 = 4;
        try {
            zzfpVar.zzL(21);
            int zzm = zzfpVar.zzm() & 3;
            int zzm2 = zzfpVar.zzm();
            int zzd = zzfpVar.zzd();
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < zzm2; i7++) {
                zzfpVar.zzL(1);
                int zzq = zzfpVar.zzq();
                for (int i8 = 0; i8 < zzq; i8++) {
                    int zzq2 = zzfpVar.zzq();
                    i6 += zzq2 + 4;
                    zzfpVar.zzL(zzq2);
                }
            }
            zzfpVar.zzK(zzd);
            byte[] bArr = new byte[i6];
            String str = null;
            int i9 = 0;
            int i10 = 0;
            int i11 = -1;
            int i12 = -1;
            int i13 = -1;
            int i14 = -1;
            int i15 = -1;
            int i16 = -1;
            int i17 = -1;
            float f = 1.0f;
            while (i9 < zzm2) {
                int zzm3 = zzfpVar.zzm() & 63;
                int zzq3 = zzfpVar.zzq();
                int i18 = 0;
                while (i18 < zzq3) {
                    int zzq4 = zzfpVar.zzq();
                    System.arraycopy(zzgm.zza, i5, bArr, i10, i4);
                    int i19 = i10 + 4;
                    System.arraycopy(zzfpVar.zzM(), zzfpVar.zzd(), bArr, i19, zzq4);
                    int i20 = i19 + zzq4;
                    if (zzm3 == 33 && i18 == 0) {
                        zzgj zzc = zzgm.zzc(bArr, i10 + 6, i20);
                        i11 = zzc.zzi;
                        i12 = zzc.zzj;
                        i13 = zzc.zze + 8;
                        i14 = zzc.zzf + 8;
                        int i21 = zzc.zzl;
                        int i22 = zzc.zzm;
                        int i23 = zzc.zzn;
                        i = i20;
                        float f2 = zzc.zzk;
                        i2 = zzm2;
                        i3 = zzm3;
                        str = zzem.zzb(zzc.zza, zzc.zzb, zzc.zzc, zzc.zzd, zzc.zzg, zzc.zzh);
                        f = f2;
                        i15 = i21;
                        i16 = i22;
                        i17 = i23;
                        i18 = 0;
                    } else {
                        i = i20;
                        i2 = zzm2;
                        i3 = zzm3;
                    }
                    zzfpVar.zzL(zzq4);
                    i18++;
                    i10 = i;
                    zzm2 = i2;
                    zzm3 = i3;
                    i4 = 4;
                    i5 = 0;
                }
                i9++;
                i4 = 4;
                i5 = 0;
            }
            if (i6 == 0) {
                singletonList = Collections.emptyList();
            } else {
                singletonList = Collections.singletonList(bArr);
            }
            return new zzadl(singletonList, zzm + 1, i11, i12, i13, i14, i15, i16, i17, f, str);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw zzcc.zza(new ObfuscatedString(new long[]{-2830237611073462410L, 3991734729732238802L, 5106762756797288992L, -5070017268062284960L, 1884446031130847014L}).toString(), e);
        }
    }
}
