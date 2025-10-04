package com.google.common.math;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Booleans;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.Iterator;

@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
/* loaded from: classes2.dex */
public final class DoubleMath {

    @VisibleForTesting
    static final int MAX_FACTORIAL = 170;
    private static final double MAX_INT_AS_DOUBLE = 2.147483647E9d;
    private static final double MAX_LONG_AS_DOUBLE_PLUS_ONE = 9.223372036854776E18d;
    private static final double MIN_INT_AS_DOUBLE = -2.147483648E9d;
    private static final double MIN_LONG_AS_DOUBLE = -9.223372036854776E18d;
    private static final double LN_2 = Math.log(2.0d);

    @VisibleForTesting
    static final double[] everySixteenthFactorial = {1.0d, 2.0922789888E13d, 2.631308369336935E35d, 1.2413915592536073E61d, 1.2688693218588417E89d, 7.156945704626381E118d, 9.916779348709496E149d, 1.974506857221074E182d, 3.856204823625804E215d, 5.5502938327393044E249d, 4.7147236359920616E284d};

    /* renamed from: com.google.common.math.DoubleMath$1, reason: invalid class name */
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
                $SwitchMap$java$math$RoundingMode[RoundingMode.FLOOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.CEILING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.UP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_EVEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_DOWN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    private DoubleMath() {
    }

    @CanIgnoreReturnValue
    @GwtIncompatible
    private static double checkFinite(double d) {
        Preconditions.checkArgument(DoubleUtils.isFinite(d));
        return d;
    }

    public static double factorial(int i) {
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{2127702135739691142L, -422070498459524526L}).toString(), i);
        if (i > MAX_FACTORIAL) {
            return Double.POSITIVE_INFINITY;
        }
        double d = 1.0d;
        for (int i2 = (i & (-16)) + 1; i2 <= i; i2++) {
            d *= i2;
        }
        return d * everySixteenthFactorial[i >> 4];
    }

    public static int fuzzyCompare(double d, double d2, double d3) {
        if (fuzzyEquals(d, d2, d3)) {
            return 0;
        }
        if (d < d2) {
            return -1;
        }
        if (d > d2) {
            return 1;
        }
        return Booleans.compare(Double.isNaN(d), Double.isNaN(d2));
    }

    public static boolean fuzzyEquals(double d, double d2, double d3) {
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{2186401415511429758L, 702383899064349856L, 3144028821777629534L}).toString(), d3);
        if (Math.copySign(d - d2, 1.0d) > d3 && d != d2 && (!Double.isNaN(d) || !Double.isNaN(d2))) {
            return false;
        }
        return true;
    }

    @GwtIncompatible
    public static boolean isMathematicalInteger(double d) {
        if (DoubleUtils.isFinite(d) && (d == 0.0d || 52 - Long.numberOfTrailingZeros(DoubleUtils.getSignificand(d)) <= Math.getExponent(d))) {
            return true;
        }
        return false;
    }

    @GwtIncompatible
    public static boolean isPowerOfTwo(double d) {
        if (d <= 0.0d || !DoubleUtils.isFinite(d)) {
            return false;
        }
        long significand = DoubleUtils.getSignificand(d);
        if ((significand & (significand - 1)) != 0) {
            return false;
        }
        return true;
    }

    public static double log2(double d) {
        return Math.log(d) / LN_2;
    }

    @GwtIncompatible
    @Deprecated
    public static double mean(double... dArr) {
        Preconditions.checkArgument(dArr.length > 0, new ObfuscatedString(new long[]{-2469724776902329014L, -6553753770397956143L, -6271482721796964494L, -4355966109967334087L, 9195635987004869904L}).toString());
        double checkFinite = checkFinite(dArr[0]);
        long j = 1;
        for (int i = 1; i < dArr.length; i++) {
            checkFinite(dArr[i]);
            j++;
            checkFinite += (dArr[i] - checkFinite) / j;
        }
        return checkFinite;
    }

    @GwtIncompatible
    public static double roundIntermediate(double d, RoundingMode roundingMode) {
        int i;
        if (DoubleUtils.isFinite(d)) {
            switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
                case 1:
                    MathPreconditions.checkRoundingUnnecessary(isMathematicalInteger(d));
                    return d;
                case 2:
                    if (d < 0.0d && !isMathematicalInteger(d)) {
                        return ((long) d) - 1;
                    }
                    return d;
                case 3:
                    if (d > 0.0d && !isMathematicalInteger(d)) {
                        return ((long) d) + 1;
                    }
                    return d;
                case 4:
                    return d;
                case 5:
                    if (isMathematicalInteger(d)) {
                        return d;
                    }
                    long j = (long) d;
                    if (d > 0.0d) {
                        i = 1;
                    } else {
                        i = -1;
                    }
                    return j + i;
                case 6:
                    return Math.rint(d);
                case 7:
                    double rint = Math.rint(d);
                    if (Math.abs(d - rint) == 0.5d) {
                        return Math.copySign(0.5d, d) + d;
                    }
                    return rint;
                case 8:
                    double rint2 = Math.rint(d);
                    if (Math.abs(d - rint2) == 0.5d) {
                        return d;
                    }
                    return rint2;
                default:
                    throw new AssertionError();
            }
        }
        throw new ArithmeticException(new ObfuscatedString(new long[]{-1543015992433865260L, -8292189620850237321L, 8485174464789220088L, -747243921632952685L}).toString());
    }

    @GwtIncompatible
    public static BigInteger roundToBigInteger(double d, RoundingMode roundingMode) {
        boolean z;
        double roundIntermediate = roundIntermediate(d, roundingMode);
        boolean z2 = false;
        if (MIN_LONG_AS_DOUBLE - roundIntermediate < 1.0d) {
            z = true;
        } else {
            z = false;
        }
        if (roundIntermediate < MAX_LONG_AS_DOUBLE_PLUS_ONE) {
            z2 = true;
        }
        if (z2 & z) {
            return BigInteger.valueOf((long) roundIntermediate);
        }
        BigInteger shiftLeft = BigInteger.valueOf(DoubleUtils.getSignificand(roundIntermediate)).shiftLeft(Math.getExponent(roundIntermediate) - 52);
        if (roundIntermediate < 0.0d) {
            return shiftLeft.negate();
        }
        return shiftLeft;
    }

    @GwtIncompatible
    public static int roundToInt(double d, RoundingMode roundingMode) {
        boolean z;
        double roundIntermediate = roundIntermediate(d, roundingMode);
        boolean z2 = false;
        if (roundIntermediate > -2.147483649E9d) {
            z = true;
        } else {
            z = false;
        }
        if (roundIntermediate < 2.147483648E9d) {
            z2 = true;
        }
        MathPreconditions.checkInRangeForRoundingInputs(z & z2, d, roundingMode);
        return (int) roundIntermediate;
    }

    @GwtIncompatible
    public static long roundToLong(double d, RoundingMode roundingMode) {
        boolean z;
        double roundIntermediate = roundIntermediate(d, roundingMode);
        boolean z2 = false;
        if (MIN_LONG_AS_DOUBLE - roundIntermediate < 1.0d) {
            z = true;
        } else {
            z = false;
        }
        if (roundIntermediate < MAX_LONG_AS_DOUBLE_PLUS_ONE) {
            z2 = true;
        }
        MathPreconditions.checkInRangeForRoundingInputs(z & z2, d, roundingMode);
        return (long) roundIntermediate;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:12:0x0040. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    @GwtIncompatible
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int log2(double d, RoundingMode roundingMode) {
        boolean isPowerOfTwo;
        Preconditions.checkArgument(d > 0.0d && DoubleUtils.isFinite(d), new ObfuscatedString(new long[]{4095728631086323069L, -5849547183337698360L, 5432631577679537410L, -4773090409979332763L, -6738302311915275832L}).toString());
        int exponent = Math.getExponent(d);
        if (!DoubleUtils.isNormal(d)) {
            return log2(d * 4.503599627370496E15d, roundingMode) - 52;
        }
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(isPowerOfTwo(d));
                return !r2 ? exponent + 1 : exponent;
            case 2:
                if (!r2) {
                }
                break;
            case 3:
                r2 = !isPowerOfTwo(d);
                if (!r2) {
                }
                break;
            case 4:
                r2 = exponent < 0;
                isPowerOfTwo = isPowerOfTwo(d);
                r2 &= !isPowerOfTwo;
                if (!r2) {
                }
                break;
            case 5:
                r2 = exponent >= 0;
                isPowerOfTwo = isPowerOfTwo(d);
                r2 &= !isPowerOfTwo;
                if (!r2) {
                }
                break;
            case 6:
            case 7:
            case 8:
                double scaleNormalize = DoubleUtils.scaleNormalize(d);
                if (scaleNormalize * scaleNormalize > 2.0d) {
                    r2 = true;
                }
                if (!r2) {
                }
                break;
            default:
                throw new AssertionError();
        }
    }

    @Deprecated
    public static double mean(int... iArr) {
        Preconditions.checkArgument(iArr.length > 0, new ObfuscatedString(new long[]{921488084237294180L, 7001223320331719170L, 4192377192717624605L, -5337060760061924820L, 4888408573773013513L}).toString());
        long j = 0;
        for (int i : iArr) {
            j += i;
        }
        return j / iArr.length;
    }

    @Deprecated
    public static double mean(long... jArr) {
        Preconditions.checkArgument(jArr.length > 0, new ObfuscatedString(new long[]{4565998724574054465L, -1327930364681000304L, 7105626954991705344L, -3655026054445693511L, 407230307143478185L}).toString());
        double d = jArr[0];
        long j = 1;
        for (int i = 1; i < jArr.length; i++) {
            j++;
            d += (jArr[i] - d) / j;
        }
        return d;
    }

    @GwtIncompatible
    @Deprecated
    public static double mean(Iterable<? extends Number> iterable) {
        return mean(iterable.iterator());
    }

    @GwtIncompatible
    @Deprecated
    public static double mean(Iterator<? extends Number> it) {
        Preconditions.checkArgument(it.hasNext(), new ObfuscatedString(new long[]{-2335333815605085527L, 4872738802224658126L, 4591878470303409136L, -1322585586121587516L, -6774456251687398770L}).toString());
        double checkFinite = checkFinite(it.next().doubleValue());
        long j = 1;
        while (it.hasNext()) {
            j++;
            checkFinite += (checkFinite(it.next().doubleValue()) - checkFinite) / j;
        }
        return checkFinite;
    }
}
