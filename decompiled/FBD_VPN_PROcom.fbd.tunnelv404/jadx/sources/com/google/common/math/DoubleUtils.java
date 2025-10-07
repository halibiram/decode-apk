package com.google.common.math;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.math.BigInteger;

@ElementTypesAreNonnullByDefault
@GwtIncompatible
/* loaded from: classes2.dex */
final class DoubleUtils {
    static final int EXPONENT_BIAS = 1023;
    static final long EXPONENT_MASK = 9218868437227405312L;
    static final long IMPLICIT_BIT = 4503599627370496L;

    @VisibleForTesting
    static final long ONE_BITS = 4607182418800017408L;
    static final int SIGNIFICAND_BITS = 52;
    static final long SIGNIFICAND_MASK = 4503599627370495L;
    static final long SIGN_MASK = Long.MIN_VALUE;

    private DoubleUtils() {
    }

    public static double bigToDouble(BigInteger bigInteger) {
        BigInteger abs = bigInteger.abs();
        int bitLength = abs.bitLength();
        int i = bitLength - 1;
        if (i < 63) {
            return bigInteger.longValue();
        }
        if (i > EXPONENT_BIAS) {
            return bigInteger.signum() * Double.POSITIVE_INFINITY;
        }
        int i2 = bitLength - 54;
        long longValue = abs.shiftRight(i2).longValue();
        long j = longValue >> 1;
        long j2 = SIGNIFICAND_MASK & j;
        if ((longValue & 1) != 0 && ((j & 1) != 0 || abs.getLowestSetBit() < i2)) {
            j2++;
        }
        return Double.longBitsToDouble((((bitLength + 1022) << 52) + j2) | (bigInteger.signum() & Long.MIN_VALUE));
    }

    public static double ensureNonNegative(double d) {
        Preconditions.checkArgument(!Double.isNaN(d));
        return Math.max(d, 0.0d);
    }

    public static long getSignificand(double d) {
        Preconditions.checkArgument(isFinite(d), new ObfuscatedString(new long[]{5821590678520005833L, -5298866292148099172L, -2657303802085777407L, -1781998760699883061L}).toString());
        int exponent = Math.getExponent(d);
        long doubleToRawLongBits = Double.doubleToRawLongBits(d) & SIGNIFICAND_MASK;
        if (exponent == -1023) {
            return doubleToRawLongBits << 1;
        }
        return doubleToRawLongBits | IMPLICIT_BIT;
    }

    public static boolean isFinite(double d) {
        if (Math.getExponent(d) <= EXPONENT_BIAS) {
            return true;
        }
        return false;
    }

    public static boolean isNormal(double d) {
        if (Math.getExponent(d) >= -1022) {
            return true;
        }
        return false;
    }

    public static double nextDown(double d) {
        return -Math.nextUp(-d);
    }

    public static double scaleNormalize(double d) {
        return Double.longBitsToDouble((Double.doubleToRawLongBits(d) & SIGNIFICAND_MASK) | ONE_BITS);
    }
}
