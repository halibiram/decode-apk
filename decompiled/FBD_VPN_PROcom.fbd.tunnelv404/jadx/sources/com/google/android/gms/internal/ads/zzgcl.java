package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.math.RoundingMode;

/* loaded from: classes2.dex */
public final class zzgcl {
    static {
        Math.log(2.0d);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0029, code lost:
    
        if (java.lang.Math.abs(r10 - r3) == 0.5d) goto L37;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0014. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long zza(double d, RoundingMode roundingMode) {
        double d2;
        long j;
        long j2;
        int i;
        boolean z;
        if (zzgcm.zza(d)) {
            boolean z2 = true;
            switch (zzgck.zza[roundingMode.ordinal()]) {
                case 1:
                    zzgcr.zzb(zzb(d));
                    d2 = d;
                    if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (d2 >= 9.223372036854776E18d) {
                        z2 = false;
                    }
                    if (!(z & z2)) {
                        return (long) d2;
                    }
                    String valueOf = String.valueOf(roundingMode);
                    StringBuilder sb = new StringBuilder();
                    sb.append(new ObfuscatedString(new long[]{1243927597846593748L, 8554403150988817920L, 2789749090955055539L, -2614065788257196650L, 5178948225748674371L, -2982748286628853400L}).toString());
                    sb.append(d);
                    throw new ArithmeticException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-1061569250679296954L, 2952388234544781200L, -4545681240969424971L, 4020549897810144563L}), sb, valueOf));
                case 2:
                    if (d < 0.0d && !zzb(d)) {
                        j = (long) d;
                        j2 = -1;
                        d2 = j + j2;
                        if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                        }
                        if (d2 >= 9.223372036854776E18d) {
                        }
                        if (!(z & z2)) {
                        }
                    }
                    d2 = d;
                    if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                    }
                    if (d2 >= 9.223372036854776E18d) {
                    }
                    if (!(z & z2)) {
                    }
                    break;
                case 3:
                    if (d > 0.0d && !zzb(d)) {
                        j = (long) d;
                        j2 = 1;
                        d2 = j + j2;
                        if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                        }
                        if (d2 >= 9.223372036854776E18d) {
                        }
                        if (!(z & z2)) {
                        }
                    }
                    d2 = d;
                    if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                    }
                    if (d2 >= 9.223372036854776E18d) {
                    }
                    if (!(z & z2)) {
                    }
                    break;
                case 4:
                    d2 = d;
                    if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                    }
                    if (d2 >= 9.223372036854776E18d) {
                    }
                    if (!(z & z2)) {
                    }
                    break;
                case 5:
                    if (!zzb(d)) {
                        long j3 = (long) d;
                        if (d > 0.0d) {
                            i = 1;
                        } else {
                            i = -1;
                        }
                        d2 = j3 + i;
                        if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                        }
                        if (d2 >= 9.223372036854776E18d) {
                        }
                        if (!(z & z2)) {
                        }
                    }
                    d2 = d;
                    if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                    }
                    if (d2 >= 9.223372036854776E18d) {
                    }
                    if (!(z & z2)) {
                    }
                    break;
                case 6:
                    d2 = Math.rint(d);
                    if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                    }
                    if (d2 >= 9.223372036854776E18d) {
                    }
                    if (!(z & z2)) {
                    }
                    break;
                case 7:
                    d2 = Math.rint(d);
                    if (Math.abs(d - d2) == 0.5d) {
                        d2 = Math.copySign(0.5d, d) + d;
                    }
                    if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                    }
                    if (d2 >= 9.223372036854776E18d) {
                    }
                    if (!(z & z2)) {
                    }
                    break;
                case 8:
                    d2 = Math.rint(d);
                    break;
                default:
                    throw new AssertionError();
            }
        } else {
            throw new ArithmeticException(new ObfuscatedString(new long[]{-2518050916717180585L, 2196052781690451679L, -1582121788502257461L, -5023571946142469122L}).toString());
        }
    }

    public static boolean zzb(double d) {
        long j;
        if (!zzgcm.zza(d)) {
            return false;
        }
        if (d != 0.0d) {
            zzfxe.zzf(zzgcm.zza(d), new ObfuscatedString(new long[]{8451616733892941004L, -8763549406771647332L, 7650896045488332999L, -4235471003239175289L}).toString());
            int exponent = Math.getExponent(d);
            long doubleToRawLongBits = Double.doubleToRawLongBits(d) & 4503599627370495L;
            if (exponent == -1023) {
                j = doubleToRawLongBits + doubleToRawLongBits;
            } else {
                j = doubleToRawLongBits | 4503599627370496L;
            }
            if (52 - Long.numberOfTrailingZeros(j) > Math.getExponent(d)) {
                return false;
            }
            return true;
        }
        return true;
    }
}
