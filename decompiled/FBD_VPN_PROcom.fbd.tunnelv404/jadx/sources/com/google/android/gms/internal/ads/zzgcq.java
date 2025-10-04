package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.math.RoundingMode;

/* loaded from: classes2.dex */
public final class zzgcq {
    private static final long[][] zza = {new long[]{291830, 126401071349994536L}, new long[]{885594168, 725270293939359937L, 3569819667048198375L}, new long[]{273919523040L, 15, 7363882082L, 992620450144556L}, new long[]{47636622961200L, 2, 2570940, 211991001, 3749873356L}, new long[]{7999252175582850L, 2, 4130806001517L, 149795463772692060L, 186635894390467037L, 3967304179347715805L}, new long[]{585226005592931976L, 2, 123635709730000L, 9233062284813009L, 43835965440333360L, 761179012939631437L, 1263739024124850375L}, new long[]{Long.MAX_VALUE, 2, 325, 9375, 28178, 450775, 9780504, 1795265022}};

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0049, code lost:
    
        if (r8 > 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x004c, code lost:
    
        if (r8 < 0) goto L23;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001f. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long zza(long j, long j2, RoundingMode roundingMode) {
        roundingMode.getClass();
        long j3 = j / j2;
        long j4 = j - (j2 * j3);
        if (j4 != 0) {
            int i = ((int) ((j ^ j2) >> 63)) | 1;
            switch (zzgcp.zza[roundingMode.ordinal()]) {
                case 1:
                    zzgcr.zzb(false);
                case 2:
                case 3:
                    break;
                case 4:
                    return j3 + i;
                case 5:
                    break;
                case 6:
                case 7:
                case 8:
                    long abs = Math.abs(j4);
                    long abs2 = abs - (Math.abs(j2) - abs);
                    return abs2 != 0 ? j3 : j3;
                default:
                    throw new AssertionError();
            }
        }
    }

    public static long zzb(long j, long j2) {
        zzgcr.zza(new ObfuscatedString(new long[]{-4084292789767405351L, -6372641772611937703L}).toString(), j);
        zzgcr.zza(new ObfuscatedString(new long[]{8942961153767193341L, 2811835956082892752L}).toString(), j2);
        if (j == 0) {
            return j2;
        }
        if (j2 == 0) {
            return j;
        }
        int numberOfTrailingZeros = Long.numberOfTrailingZeros(j);
        long j3 = j >> numberOfTrailingZeros;
        int numberOfTrailingZeros2 = Long.numberOfTrailingZeros(j2);
        long j4 = j2 >> numberOfTrailingZeros2;
        while (j3 != j4) {
            long j5 = j3 - j4;
            long j6 = (j5 >> 63) & j5;
            long j7 = (j5 - j6) - j6;
            j3 = j7 >> Long.numberOfTrailingZeros(j7);
            j4 += j6;
        }
        return j3 << Math.min(numberOfTrailingZeros, numberOfTrailingZeros2);
    }

    public static long zzc(long j, long j2) {
        boolean z;
        boolean z2;
        long j3 = ~j;
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(~j2) + Long.numberOfLeadingZeros(j2) + Long.numberOfLeadingZeros(j3) + Long.numberOfLeadingZeros(j);
        if (numberOfLeadingZeros > 65) {
            return j * j2;
        }
        long j4 = j ^ j2;
        boolean z3 = false;
        if (numberOfLeadingZeros < 64) {
            z = true;
        } else {
            z = false;
        }
        if (j < 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (j2 == Long.MIN_VALUE) {
            z3 = true;
        }
        long j5 = (j4 >>> 63) + Long.MAX_VALUE;
        if (z | (z3 & z2)) {
            return j5;
        }
        long j6 = j * j2;
        if (j != 0 && j6 / j != j2) {
            return j5;
        }
        return j6;
    }
}
