package com.google.android.gms.internal.ads;

import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzhcq {
    private static final zzhcq zza = new zzhcq(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzhcq(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzhcq zzc() {
        return zza;
    }

    public static zzhcq zze(zzhcq zzhcqVar, zzhcq zzhcqVar2) {
        int i = zzhcqVar.zzb + zzhcqVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzhcqVar.zzc, i);
        System.arraycopy(zzhcqVar2.zzc, 0, copyOf, zzhcqVar.zzb, zzhcqVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzhcqVar.zzd, i);
        System.arraycopy(zzhcqVar2.zzd, 0, copyOf2, zzhcqVar.zzb, zzhcqVar2.zzb);
        return new zzhcq(i, copyOf, copyOf2, true);
    }

    public static zzhcq zzf() {
        return new zzhcq(0, new int[8], new Object[8], true);
    }

    private final void zzl(int i) {
        int[] iArr = this.zzc;
        if (i > iArr.length) {
            int i2 = this.zzb;
            int i3 = (i2 / 2) + i2;
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.zzc = Arrays.copyOf(iArr, i);
            this.zzd = Arrays.copyOf(this.zzd, i);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzhcq)) {
            return false;
        }
        zzhcq zzhcqVar = (zzhcq) obj;
        int i = this.zzb;
        if (i == zzhcqVar.zzb) {
            int[] iArr = this.zzc;
            int[] iArr2 = zzhcqVar.zzc;
            int i2 = 0;
            while (true) {
                if (i2 < i) {
                    if (iArr[i2] != iArr2[i2]) {
                        break;
                    }
                    i2++;
                } else {
                    Object[] objArr = this.zzd;
                    Object[] objArr2 = zzhcqVar.zzd;
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
        int i2 = i + 527;
        int[] iArr = this.zzc;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = ((i2 * 31) + i4) * 31;
        Object[] objArr = this.zzd;
        int i7 = this.zzb;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }

    public final int zza() {
        int zzz;
        int zzA;
        int zzz2;
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
                                    zzz2 = zzgza.zzz(i5 << 3) + 4;
                                } else {
                                    throw new IllegalStateException(zzhag.zza());
                                }
                            } else {
                                int zzz3 = zzgza.zzz(i5 << 3);
                                zzz = zzz3 + zzz3;
                                zzA = ((zzhcq) this.zzd[i3]).zza();
                            }
                        } else {
                            int i7 = i5 << 3;
                            zzgyl zzgylVar = (zzgyl) this.zzd[i3];
                            int zzz4 = zzgza.zzz(i7);
                            int zzd = zzgylVar.zzd();
                            i2 = zzgza.zzz(zzd) + zzd + zzz4 + i2;
                        }
                    } else {
                        ((Long) this.zzd[i3]).getClass();
                        zzz2 = zzgza.zzz(i5 << 3) + 8;
                    }
                    i2 = zzz2 + i2;
                } else {
                    int i8 = i5 << 3;
                    long longValue = ((Long) this.zzd[i3]).longValue();
                    zzz = zzgza.zzz(i8);
                    zzA = zzgza.zzA(longValue);
                }
                i2 = zzA + zzz + i2;
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
                int i4 = this.zzc[i3] >>> 3;
                zzgyl zzgylVar = (zzgyl) this.zzd[i3];
                int zzz = zzgza.zzz(8);
                int zzz2 = zzgza.zzz(i4) + zzgza.zzz(16);
                int zzz3 = zzgza.zzz(24);
                int zzd = zzgylVar.zzd();
                i2 = AbstractC0362x4440ab85.m2926x3271d0aa(zzz + zzz, zzz2, AbstractC1320xaf50c7e8.m4354xfbe0c504(zzd, zzd, zzz3), i2);
            }
            this.zze = i2;
            return i2;
        }
        return i;
    }

    public final zzhcq zzd(zzhcq zzhcqVar) {
        if (zzhcqVar.equals(zza)) {
            return this;
        }
        zzg();
        int i = this.zzb + zzhcqVar.zzb;
        zzl(i);
        System.arraycopy(zzhcqVar.zzc, 0, this.zzc, this.zzb, zzhcqVar.zzb);
        System.arraycopy(zzhcqVar.zzd, 0, this.zzd, this.zzb, zzhcqVar.zzb);
        this.zzb = i;
        return this;
    }

    public final void zzg() {
        if (this.zzf) {
        } else {
            throw new UnsupportedOperationException();
        }
    }

    public final void zzh() {
        if (this.zzf) {
            this.zzf = false;
        }
    }

    public final void zzi(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzhbg.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    public final void zzj(int i, Object obj) {
        zzg();
        zzl(this.zzb + 1);
        int[] iArr = this.zzc;
        int i2 = this.zzb;
        iArr[i2] = i;
        this.zzd[i2] = obj;
        this.zzb = i2 + 1;
    }

    public final void zzk(zzgzb zzgzbVar) {
        if (this.zzb != 0) {
            for (int i = 0; i < this.zzb; i++) {
                int i2 = this.zzc[i];
                Object obj = this.zzd[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 != 0) {
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 != 3) {
                                if (i3 == 5) {
                                    zzgzbVar.zzk(i4, ((Integer) obj).intValue());
                                } else {
                                    throw new RuntimeException(zzhag.zza());
                                }
                            } else {
                                zzgzbVar.zzE(i4);
                                ((zzhcq) obj).zzk(zzgzbVar);
                                zzgzbVar.zzh(i4);
                            }
                        } else {
                            zzgzbVar.zzd(i4, (zzgyl) obj);
                        }
                    } else {
                        zzgzbVar.zzm(i4, ((Long) obj).longValue());
                    }
                } else {
                    zzgzbVar.zzt(i4, ((Long) obj).longValue());
                }
            }
        }
    }

    private zzhcq() {
        this(0, new int[8], new Object[8], true);
    }
}
