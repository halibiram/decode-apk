package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.util.Pair;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzpd {
    public static final zzpd zza = new zzpd(new int[]{2}, 10);

    @SuppressLint({"InlinedApi"})
    private static final zzgaa zzb = zzgaa.zzo(2, 5, 6);
    private static final zzgad zzc;
    private final int[] zzd;
    private final int zze;

    static {
        zzgac zzgacVar = new zzgac();
        zzgacVar.zza(5, 6);
        zzgacVar.zza(17, 6);
        zzgacVar.zza(7, 6);
        zzgacVar.zza(30, 10);
        zzgacVar.zza(18, 6);
        zzgacVar.zza(6, 8);
        zzgacVar.zza(8, 8);
        zzgacVar.zza(14, 8);
        zzc = zzgacVar.zzc();
    }

    public zzpd(@Nullable int[] iArr, int i) {
        int[] copyOf = Arrays.copyOf(iArr, 1);
        this.zzd = copyOf;
        Arrays.sort(copyOf);
        this.zze = 10;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof zzpd) && Arrays.equals(this.zzd, ((zzpd) obj).zzd)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.zzd) * 31) + 10;
    }

    public final String toString() {
        String arrays = Arrays.toString(this.zzd);
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{7398175935609037955L, -4487440736735690544L, -3695575594603095631L, 6566950428146888180L, -4032936182445485346L, 4702958689825755349L, 6330305103165917553L, 7207981278226100848L, 7163296877660134497L}).toString());
        sb.append(arrays);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-1595012679988898163L, 6551037477626388145L}), sb);
    }

    /* JADX WARN: Code restructure failed: missing block: B:59:0x0042, code lost:
    
        if (zzc(30) == false) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e1 A[ORIG_RETURN, RETURN] */
    @Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Pair zza(zzam zzamVar, zzk zzkVar) {
        int zzg;
        int i = 2;
        String str = zzamVar.zzm;
        str.getClass();
        int zza2 = zzcb.zza(str, zzamVar.zzj);
        zzgad zzgadVar = zzc;
        if (zzgadVar.containsKey(Integer.valueOf(zza2))) {
            int i2 = 8;
            if (zza2 == 18) {
                if (!zzc(18)) {
                    zza2 = 6;
                    if (zzc(zza2)) {
                        int i3 = zzamVar.zzz;
                        if (i3 != -1 && zza2 != 18) {
                            if (zzamVar.zzm.equals(new ObfuscatedString(new long[]{-1103060273468119053L, -3763056917360435620L, 1272483117608135117L, -2309176527864442680L, 3898232656372273241L}).toString())) {
                                if (i3 > 10) {
                                    return null;
                                }
                            } else if (i3 > 10) {
                                return null;
                            }
                        } else {
                            int i4 = zzamVar.zzA;
                            if (i4 == -1) {
                                i4 = 48000;
                            }
                            if (zzfy.zza >= 29) {
                                i3 = zzpc.zza(zza2, i4, zzkVar);
                            } else {
                                Integer num = (Integer) zzgadVar.getOrDefault(Integer.valueOf(zza2), 0);
                                num.getClass();
                                i3 = num.intValue();
                            }
                        }
                        int i5 = zzfy.zza;
                        if (i5 <= 28) {
                            if (i3 != 7) {
                                if (i3 == 3 || i3 == 4 || i3 == 5) {
                                    i2 = 6;
                                }
                            }
                            if (i5 <= 26 || !new ObfuscatedString(new long[]{5429500177275616078L, 4014382748019258025L}).toString().equals(zzfy.zzb) || i2 != 1) {
                                i = i2;
                            }
                            zzg = zzfy.zzg(i);
                            if (zzg == 0) {
                                return Pair.create(Integer.valueOf(zza2), Integer.valueOf(zzg));
                            }
                            return null;
                        }
                        i2 = i3;
                        if (i5 <= 26) {
                        }
                        i = i2;
                        zzg = zzfy.zzg(i);
                        if (zzg == 0) {
                        }
                    } else {
                        return null;
                    }
                } else {
                    zza2 = 18;
                }
            }
            if (zza2 == 8) {
                if (zzc(8)) {
                    zza2 = 8;
                }
                zza2 = 7;
                if (zzc(zza2)) {
                }
            }
            if (zza2 == 30) {
            }
            if (zzc(zza2)) {
            }
        } else {
            return null;
        }
    }

    public final boolean zzc(int i) {
        if (Arrays.binarySearch(this.zzd, i) >= 0) {
            return true;
        }
        return false;
    }
}
