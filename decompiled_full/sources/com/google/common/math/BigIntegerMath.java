package com.google.common.math;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;

@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
/* loaded from: classes2.dex */
public final class BigIntegerMath {

    @VisibleForTesting
    static final int SQRT2_PRECOMPUTE_THRESHOLD = 256;

    @VisibleForTesting
    static final BigInteger SQRT2_PRECOMPUTED_BITS = new BigInteger(new ObfuscatedString(new long[]{7369755148440625975L, -3122040427848502152L, -4788847983617321014L, -7645720405794475583L, 7232613890435494850L, -1013826931440075920L, 1636509449208776709L, -5025686178838066906L, -5903592713815388613L, -867541395864800166L}).toString(), 16);
    private static final double LN_10 = Math.log(10.0d);
    private static final double LN_2 = Math.log(2.0d);

    /* renamed from: com.google.common.math.BigIntegerMath$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$java$math$RoundingMode;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            $SwitchMap$java$math$RoundingMode = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    @GwtIncompatible
    /* loaded from: classes2.dex */
    public static class BigIntegerToDoubleRounder extends ToDoubleRounder<BigInteger> {
        static final BigIntegerToDoubleRounder INSTANCE = new BigIntegerToDoubleRounder();

        private BigIntegerToDoubleRounder() {
        }

        @Override // com.google.common.math.ToDoubleRounder
        public BigInteger minus(BigInteger bigInteger, BigInteger bigInteger2) {
            return bigInteger.subtract(bigInteger2);
        }

        @Override // com.google.common.math.ToDoubleRounder
        public double roundToDoubleArbitrarily(BigInteger bigInteger) {
            return DoubleUtils.bigToDouble(bigInteger);
        }

        @Override // com.google.common.math.ToDoubleRounder
        public int sign(BigInteger bigInteger) {
            return bigInteger.signum();
        }

        @Override // com.google.common.math.ToDoubleRounder
        public BigInteger toX(double d, RoundingMode roundingMode) {
            return DoubleMath.roundToBigInteger(d, roundingMode);
        }
    }

    private BigIntegerMath() {
    }

    public static BigInteger binomial(int i, int i2) {
        boolean z;
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{1183317335513350140L, -3057280526243209987L}).toString(), i);
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{-7688844100125357452L, 4971805294052950393L}).toString(), i2);
        if (i2 <= i) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-6531091685962393372L, -7553701820406417650L, -6222346985407276854L}).toString(), i2, i);
        if (i2 > (i >> 1)) {
            i2 = i - i2;
        }
        int[] iArr = LongMath.biggestBinomials;
        if (i2 < iArr.length && i <= iArr[i2]) {
            return BigInteger.valueOf(LongMath.binomial(i, i2));
        }
        BigInteger bigInteger = BigInteger.ONE;
        long j = i;
        int log2 = LongMath.log2(j, RoundingMode.CEILING);
        long j2 = 1;
        int i3 = log2;
        int i4 = 1;
        while (i4 < i2) {
            int i5 = i - i4;
            i4++;
            i3 += log2;
            if (i3 >= 63) {
                bigInteger = bigInteger.multiply(BigInteger.valueOf(j)).divide(BigInteger.valueOf(j2));
                j = i5;
                j2 = i4;
                i3 = log2;
            } else {
                j *= i5;
                j2 *= i4;
            }
        }
        return bigInteger.multiply(BigInteger.valueOf(j)).divide(BigInteger.valueOf(j2));
    }

    @Beta
    public static BigInteger ceilingPowerOfTwo(BigInteger bigInteger) {
        return BigInteger.ZERO.setBit(log2(bigInteger, RoundingMode.CEILING));
    }

    @GwtIncompatible
    public static BigInteger divide(BigInteger bigInteger, BigInteger bigInteger2, RoundingMode roundingMode) {
        return new BigDecimal(bigInteger).divide(new BigDecimal(bigInteger2), 0, roundingMode).toBigIntegerExact();
    }

    public static BigInteger factorial(int i) {
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{-6784201300252673539L, -1053476173333968707L}).toString(), i);
        long[] jArr = LongMath.factorials;
        if (i < jArr.length) {
            return BigInteger.valueOf(jArr[i]);
        }
        RoundingMode roundingMode = RoundingMode.CEILING;
        ArrayList arrayList = new ArrayList(IntMath.divide(IntMath.log2(i, roundingMode) * i, 64, roundingMode));
        int length = jArr.length;
        long j = jArr[length - 1];
        int numberOfTrailingZeros = Long.numberOfTrailingZeros(j);
        long j2 = j >> numberOfTrailingZeros;
        RoundingMode roundingMode2 = RoundingMode.FLOOR;
        int log2 = LongMath.log2(j2, roundingMode2) + 1;
        long j3 = length;
        int log22 = LongMath.log2(j3, roundingMode2);
        int i2 = log22 + 1;
        int i3 = 1 << log22;
        while (j3 <= i) {
            if ((i3 & j3) != 0) {
                i3 <<= 1;
                i2++;
            }
            int numberOfTrailingZeros2 = Long.numberOfTrailingZeros(j3);
            long j4 = j3 >> numberOfTrailingZeros2;
            numberOfTrailingZeros += numberOfTrailingZeros2;
            if ((i2 - numberOfTrailingZeros2) + log2 >= 64) {
                arrayList.add(BigInteger.valueOf(j2));
                j2 = 1;
            }
            j2 *= j4;
            log2 = LongMath.log2(j2, RoundingMode.FLOOR) + 1;
            j3++;
        }
        if (j2 > 1) {
            arrayList.add(BigInteger.valueOf(j2));
        }
        return listProduct(arrayList).shiftLeft(numberOfTrailingZeros);
    }

    @GwtIncompatible
    public static boolean fitsInLong(BigInteger bigInteger) {
        if (bigInteger.bitLength() <= 63) {
            return true;
        }
        return false;
    }

    @Beta
    public static BigInteger floorPowerOfTwo(BigInteger bigInteger) {
        return BigInteger.ZERO.setBit(log2(bigInteger, RoundingMode.FLOOR));
    }

    public static boolean isPowerOfTwo(BigInteger bigInteger) {
        Preconditions.checkNotNull(bigInteger);
        if (bigInteger.signum() > 0 && bigInteger.getLowestSetBit() == bigInteger.bitLength() - 1) {
            return true;
        }
        return false;
    }

    public static BigInteger listProduct(List<BigInteger> list) {
        return listProduct(list, 0, list.size());
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a4 A[FALL_THROUGH, RETURN] */
    @GwtIncompatible
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int log10(BigInteger bigInteger, RoundingMode roundingMode) {
        int i;
        boolean z = true;
        MathPreconditions.checkPositive(new ObfuscatedString(new long[]{4963714352362049367L, -5093203759612720681L}).toString(), bigInteger);
        if (fitsInLong(bigInteger)) {
            return LongMath.log10(bigInteger.longValue(), roundingMode);
        }
        int log2 = (int) ((log2(bigInteger, RoundingMode.FLOOR) * LN_2) / LN_10);
        BigInteger bigInteger2 = BigInteger.TEN;
        BigInteger pow = bigInteger2.pow(log2);
        int compareTo = pow.compareTo(bigInteger);
        if (compareTo <= 0) {
            BigInteger multiply = bigInteger2.multiply(pow);
            int i2 = compareTo;
            int compareTo2 = multiply.compareTo(bigInteger);
            while (compareTo2 <= 0) {
                log2++;
                BigInteger multiply2 = BigInteger.TEN.multiply(multiply);
                int compareTo3 = multiply2.compareTo(bigInteger);
                pow = multiply;
                multiply = multiply2;
                i2 = compareTo2;
                compareTo2 = compareTo3;
            }
            i = i2;
            switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
                case 1:
                    if (i != 0) {
                        z = false;
                    }
                    MathPreconditions.checkRoundingUnnecessary(z);
                case 2:
                case 3:
                    return log2;
                case 4:
                case 5:
                    if (!pow.equals(bigInteger)) {
                        return log2 + 1;
                    }
                    return log2;
                case 6:
                case 7:
                case 8:
                    if (bigInteger.pow(2).compareTo(pow.pow(2).multiply(BigInteger.TEN)) > 0) {
                        return log2 + 1;
                    }
                    return log2;
                default:
                    throw new AssertionError();
            }
        }
        do {
            log2--;
            pow = pow.divide(BigInteger.TEN);
            i = pow.compareTo(bigInteger);
        } while (i > 0);
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
        }
    }

    public static int log2(BigInteger bigInteger, RoundingMode roundingMode) {
        MathPreconditions.checkPositive(new ObfuscatedString(new long[]{7705239781072567829L, 8014874785832477793L}).toString(), (BigInteger) Preconditions.checkNotNull(bigInteger));
        int bitLength = bigInteger.bitLength();
        int i = bitLength - 1;
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(isPowerOfTwo(bigInteger));
            case 2:
            case 3:
                return i;
            case 4:
            case 5:
                if (isPowerOfTwo(bigInteger)) {
                    return i;
                }
                return bitLength;
            case 6:
            case 7:
            case 8:
                if (i < 256) {
                    if (bigInteger.compareTo(SQRT2_PRECOMPUTED_BITS.shiftRight(256 - i)) <= 0) {
                        return i;
                    }
                    return bitLength;
                }
                if (bigInteger.pow(2).bitLength() - 1 < (i * 2) + 1) {
                    return i;
                }
                return bitLength;
            default:
                throw new AssertionError();
        }
    }

    @GwtIncompatible
    public static double roundToDouble(BigInteger bigInteger, RoundingMode roundingMode) {
        return BigIntegerToDoubleRounder.INSTANCE.roundToDouble(bigInteger, roundingMode);
    }

    @GwtIncompatible
    public static BigInteger sqrt(BigInteger bigInteger, RoundingMode roundingMode) {
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{7781680988654101404L, -133862387913812833L}).toString(), bigInteger);
        if (fitsInLong(bigInteger)) {
            return BigInteger.valueOf(LongMath.sqrt(bigInteger.longValue(), roundingMode));
        }
        BigInteger sqrtFloor = sqrtFloor(bigInteger);
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(sqrtFloor.pow(2).equals(bigInteger));
            case 2:
            case 3:
                return sqrtFloor;
            case 4:
            case 5:
                int intValue = sqrtFloor.intValue();
                if (intValue * intValue != bigInteger.intValue() || !sqrtFloor.pow(2).equals(bigInteger)) {
                    return sqrtFloor.add(BigInteger.ONE);
                }
                return sqrtFloor;
            case 6:
            case 7:
            case 8:
                if (sqrtFloor.pow(2).add(sqrtFloor).compareTo(bigInteger) < 0) {
                    return sqrtFloor.add(BigInteger.ONE);
                }
                return sqrtFloor;
            default:
                throw new AssertionError();
        }
    }

    @GwtIncompatible
    private static BigInteger sqrtApproxWithDoubles(BigInteger bigInteger) {
        return DoubleMath.roundToBigInteger(Math.sqrt(DoubleUtils.bigToDouble(bigInteger)), RoundingMode.HALF_EVEN);
    }

    @GwtIncompatible
    private static BigInteger sqrtFloor(BigInteger bigInteger) {
        BigInteger shiftLeft;
        int log2 = log2(bigInteger, RoundingMode.FLOOR);
        if (log2 < 1023) {
            shiftLeft = sqrtApproxWithDoubles(bigInteger);
        } else {
            int i = (log2 - 52) & (-2);
            shiftLeft = sqrtApproxWithDoubles(bigInteger.shiftRight(i)).shiftLeft(i >> 1);
        }
        BigInteger shiftRight = shiftLeft.add(bigInteger.divide(shiftLeft)).shiftRight(1);
        if (shiftLeft.equals(shiftRight)) {
            return shiftLeft;
        }
        while (true) {
            BigInteger shiftRight2 = shiftRight.add(bigInteger.divide(shiftRight)).shiftRight(1);
            if (shiftRight2.compareTo(shiftRight) >= 0) {
                return shiftRight;
            }
            shiftRight = shiftRight2;
        }
    }

    public static BigInteger listProduct(List<BigInteger> list, int i, int i2) {
        int i3 = i2 - i;
        if (i3 == 0) {
            return BigInteger.ONE;
        }
        if (i3 == 1) {
            return list.get(i);
        }
        if (i3 == 2) {
            return list.get(i).multiply(list.get(i + 1));
        }
        if (i3 != 3) {
            int i4 = (i2 + i) >>> 1;
            return listProduct(list, i, i4).multiply(listProduct(list, i4, i2));
        }
        return list.get(i).multiply(list.get(i + 1)).multiply(list.get(i + 2));
    }
}
