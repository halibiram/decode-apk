package com.google.android.gms.internal.ads;

import java.math.RoundingMode;

/* loaded from: classes2.dex */
public final class zzgco {
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003e, code lost:
    
        if (((r6 & 1) & r3) != 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0041, code lost:
    
        if (r0 > 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0044, code lost:
    
        if (r5 > 0) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0047, code lost:
    
        if (r5 < 0) goto L25;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001c. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int zza(int i, int i2, RoundingMode roundingMode) {
        roundingMode.getClass();
        int i3 = i / 8;
        int i4 = i - (i3 * 8);
        if (i4 != 0) {
            int i5 = 1;
            int i6 = ((i ^ 8) >> 31) | 1;
            switch (zzgcn.zza[roundingMode.ordinal()]) {
                case 1:
                    zzgcr.zzb(false);
                case 2:
                    return i3;
                case 3:
                    break;
                case 4:
                    return i3 + i6;
                case 5:
                    break;
                case 6:
                case 7:
                case 8:
                    int abs = Math.abs(i4);
                    int abs2 = abs - (Math.abs(8) - abs);
                    if (abs2 == 0) {
                        if (roundingMode != RoundingMode.HALF_UP) {
                            if (roundingMode != RoundingMode.HALF_EVEN) {
                                i5 = 0;
                            }
                            break;
                        }
                        return i3 + i6;
                    }
                    break;
                default:
                    throw new AssertionError();
            }
        }
        return i3;
    }
}
