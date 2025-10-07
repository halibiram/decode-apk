package com.google.android.gms.internal.measurement;

import defpackage.AbstractC1320xaf50c7e8;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzmm {
    private static final zzmm zza = new zzmm(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzmm(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzmm zzc() {
        return zza;
    }

    public static zzmm zzd(zzmm zzmmVar, zzmm zzmmVar2) {
        int i = zzmmVar.zzb + zzmmVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzmmVar.zzc, i);
        System.arraycopy(zzmmVar2.zzc, 0, copyOf, zzmmVar.zzb, zzmmVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzmmVar.zzd, i);
        System.arraycopy(zzmmVar2.zzd, 0, copyOf2, zzmmVar.zzb, zzmmVar2.zzb);
        return new zzmm(i, copyOf, copyOf2, true);
    }

    public static zzmm zze() {
        return new zzmm(0, new int[8], new Object[8], true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzmm)) {
            return false;
        }
        zzmm zzmmVar = (zzmm) obj;
        int i = this.zzb;
        if (i == zzmmVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzmmVar.zzc;
            int i2 = 0;
            while (true) {
                if (i2 < i) {
                    if (iArr[i2] != iArr2[i2]) {
                        break;
                    }
                    i2++;
                } else {
                    Object[] objArr = this.zzd;
                    Object[] objArr2 = zzmmVar.zzd;
                    int i3 = this.zzb;
                    for (int i4 = 0; i4 < i3; i4++) {
                        if (objArr[i4].equals(objArr2[i4])) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzb;
        int i2 = (i + 527) * 31;
        int[] iArr = this.zzc;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = (i2 + i4) * 31;
        Object[] objArr = this.zzd;
        int i7 = this.zzb;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    public final int zza() {
        int zzA;
        int zzB;
        int i = this.zze;
        if (i == -1) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.zzb; i3++) {
                int i4 = this.zzc[i3];
                int i5 = i4 >>> 3;
                int i6 = i4 & 7;
                if (i6 != 0) {
                    if (i6 != 1) {
                        if (i6 != 2) {
                            if (i6 != 3) {
                                if (i6 == 5) {
                                    ((Integer) this.zzd[i3]).getClass();
                                    i2 = AbstractC1320xaf50c7e8.m4359x9e171bf9(i5 << 3, 4, i2);
                                } else {
                                    throw new IllegalStateException(zzkm.zza());
                                }
                            } else {
                                int zzz = zzjj.zzz(i5);
                                zzA = zzz + zzz;
                                zzB = ((zzmm) this.zzd[i3]).zza();
                            }
                        } else {
                            zzjb zzjbVar = (zzjb) this.zzd[i3];
                            int zzA2 = zzjj.zzA(i5 << 3);
                            int zzd = zzjbVar.zzd();
                            i2 = AbstractC1320xaf50c7e8.m4355x3271d0aa(zzd, zzd, zzA2, i2);
                        }
                    } else {
                        ((Long) this.zzd[i3]).getClass();
                        i2 = AbstractC1320xaf50c7e8.m4359x9e171bf9(i5 << 3, 8, i2);
                    }
                } else {
                    long longValue = ((Long) this.zzd[i3]).longValue();
                    zzA = zzjj.zzA(i5 << 3);
                    zzB = zzjj.zzB(longValue);
                }
                i2 = zzB + zzA + i2;
            }
            this.zze = i2;
            return i2;
        }
        return i;
    }

    public final int zzb() {
        int i = this.zze;
        if (i == -1) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.zzb; i3++) {
                int i4 = this.zzc[i3];
                zzjb zzjbVar = (zzjb) this.zzd[i3];
                int zzA = zzjj.zzA(8);
                int zzd = zzjbVar.zzd();
                int i5 = i4 >>> 3;
                i2 += zzjj.zzA(zzd) + zzd + zzjj.zzA(24) + AbstractC1320xaf50c7e8.m4359x9e171bf9(i5, zzjj.zzA(16), zzA + zzA);
            }
            this.zze = i2;
            return i2;
        }
        return i;
    }

    public final void zzf() {
        this.zzf = false;
    }

    public final void zzg(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzll.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    public final void zzh(int i, Object obj) {
        int i2;
        if (this.zzf) {
            int i3 = this.zzb;
            int[] iArr = this.zzc;
            if (i3 == iArr.length) {
                if (i3 < 4) {
                    i2 = 8;
                } else {
                    i2 = i3 >> 1;
                }
                int i4 = i3 + i2;
                this.zzc = Arrays.copyOf(iArr, i4);
                this.zzd = Arrays.copyOf(this.zzd, i4);
            }
            int[] iArr2 = this.zzc;
            int i5 = this.zzb;
            iArr2[i5] = i;
            this.zzd[i5] = obj;
            this.zzb = i5 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final void zzi(zznd zzndVar) {
        if (this.zzb != 0) {
            for (int i = 0; i < this.zzb; i++) {
                int i2 = this.zzc[i];
                Object obj = this.zzd[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 != 0) {
                    if (i4 != 1) {
                        if (i4 != 2) {
                            if (i4 != 3) {
                                if (i4 == 5) {
                                    zzndVar.zzk(i3, ((Integer) obj).intValue());
                                } else {
                                    throw new RuntimeException(zzkm.zza());
                                }
                            } else {
                                zzndVar.zzE(i3);
                                ((zzmm) obj).zzi(zzndVar);
                                zzndVar.zzh(i3);
                            }
                        } else {
                            zzndVar.zzd(i3, (zzjb) obj);
                        }
                    } else {
                        zzndVar.zzm(i3, ((Long) obj).longValue());
                    }
                } else {
                    zzndVar.zzt(i3, ((Long) obj).longValue());
                }
            }
        }
    }

    private zzmm() {
        this(0, new int[8], new Object[8], true);
    }
}
