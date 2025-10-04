package com.google.common.math;

import androidx.work.WorkRequest;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Longs;
import com.google.common.primitives.UnsignedLongs;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.math.RoundingMode;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.HttpStatusCodesKt;

@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
/* loaded from: classes2.dex */
public final class LongMath {

    @VisibleForTesting
    static final long FLOOR_SQRT_MAX_LONG = 3037000499L;

    @VisibleForTesting
    static final long MAX_POWER_OF_SQRT2_UNSIGNED = -5402926248376769404L;

    @VisibleForTesting
    static final long MAX_SIGNED_POWER_OF_TWO = 4611686018427387904L;
    private static final int SIEVE_30 = -545925251;

    @VisibleForTesting
    static final byte[] maxLog10ForLeadingZeros = {19, Ascii.DC2, Ascii.DC2, Ascii.DC2, Ascii.DC2, 17, 17, 17, Ascii.DLE, Ascii.DLE, Ascii.DLE, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SI, Ascii.SO, Ascii.SO, Ascii.SO, 13, 13, 13, 12, 12, 12, 12, 11, 11, 11, 10, 10, 10, 9, 9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0};

    @VisibleForTesting
    @GwtIncompatible
    static final long[] powersOf10 = {1, 10, 100, 1000, WorkRequest.MIN_BACKOFF_MILLIS, 100000, 1000000, 10000000, 100000000, 1000000000, RealConnection.IDLE_CONNECTION_HEALTHY_NS, 100000000000L, 1000000000000L, 10000000000000L, 100000000000000L, 1000000000000000L, 10000000000000000L, 100000000000000000L, 1000000000000000000L};

    @VisibleForTesting
    @GwtIncompatible
    static final long[] halfPowersOf10 = {3, 31, 316, 3162, 31622, 316227, 3162277, 31622776, 316227766, 3162277660L, 31622776601L, 316227766016L, 3162277660168L, 31622776601683L, 316227766016837L, 3162277660168379L, 31622776601683793L, 316227766016837933L, 3162277660168379331L};
    static final long[] factorials = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600, 6227020800L, 87178291200L, 1307674368000L, 20922789888000L, 355687428096000L, 6402373705728000L, 121645100408832000L, 2432902008176640000L};
    static final int[] biggestBinomials = {Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, 3810779, 121977, 16175, 4337, 1733, 887, 534, 361, 265, HttpStatusCodesKt.HTTP_PARTIAL_CONTENT, 169, 143, 125, 111, 101, 94, 88, 83, 79, 76, 74, 72, 70, 69, 68, 67, 67, 66, 66, 66, 66};

    @VisibleForTesting
    static final int[] biggestSimpleBinomials = {Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, 2642246, 86251, 11724, 3218, 1313, 684, HttpStatusCodesKt.HTTP_INSUFFICIENT_SPACE_ON_RESOURCE, 287, 214, 169, 139, 119, 105, 95, 87, 81, 76, 73, 70, 68, 66, 64, 63, 62, 62, 61, 61, 61};
    private static final long[][] millerRabinBaseSets = {new long[]{291830, 126401071349994536L}, new long[]{885594168, 725270293939359937L, 3569819667048198375L}, new long[]{273919523040L, 15, 7363882082L, 992620450144556L}, new long[]{47636622961200L, 2, 2570940, 211991001, 3749873356L}, new long[]{7999252175582850L, 2, 4130806001517L, 149795463772692060L, 186635894390467037L, 3967304179347715805L}, new long[]{585226005592931976L, 2, 123635709730000L, 9233062284813009L, 43835965440333360L, 761179012939631437L, 1263739024124850375L}, new long[]{Long.MAX_VALUE, 2, 325, 9375, 28178, 450775, 9780504, 1795265022}};

    /* renamed from: com.google.common.math.LongMath$1, reason: invalid class name */
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

    /* loaded from: classes2.dex */
    public enum MillerRabinTester {
        SMALL { // from class: com.google.common.math.LongMath.MillerRabinTester.1
            @Override // com.google.common.math.LongMath.MillerRabinTester
            public long mulMod(long j, long j2, long j3) {
                return (j * j2) % j3;
            }

            @Override // com.google.common.math.LongMath.MillerRabinTester
            public long squareMod(long j, long j2) {
                return (j * j) % j2;
            }
        },
        LARGE { // from class: com.google.common.math.LongMath.MillerRabinTester.2
            private long plusMod(long j, long j2, long j3) {
                long j4 = j + j2;
                return j >= j3 - j2 ? j4 - j3 : j4;
            }

            private long times2ToThe32Mod(long j, long j2) {
                int i = 32;
                do {
                    int min = Math.min(i, Long.numberOfLeadingZeros(j));
                    j = UnsignedLongs.remainder(j << min, j2);
                    i -= min;
                } while (i > 0);
                return j;
            }

            @Override // com.google.common.math.LongMath.MillerRabinTester
            public long mulMod(long j, long j2, long j3) {
                long j4 = j >>> 32;
                long j5 = j2 >>> 32;
                long j6 = j & 4294967295L;
                long j7 = j2 & 4294967295L;
                long times2ToThe32Mod = (j4 * j7) + times2ToThe32Mod(j4 * j5, j3);
                if (times2ToThe32Mod < 0) {
                    times2ToThe32Mod = UnsignedLongs.remainder(times2ToThe32Mod, j3);
                }
                Long.signum(j6);
                return plusMod(times2ToThe32Mod((j5 * j6) + times2ToThe32Mod, j3), UnsignedLongs.remainder(j6 * j7, j3), j3);
            }

            @Override // com.google.common.math.LongMath.MillerRabinTester
            public long squareMod(long j, long j2) {
                long j3 = j >>> 32;
                long j4 = j & 4294967295L;
                long times2ToThe32Mod = times2ToThe32Mod(j3 * j3, j2);
                long j5 = j3 * j4 * 2;
                if (j5 < 0) {
                    j5 = UnsignedLongs.remainder(j5, j2);
                }
                return plusMod(times2ToThe32Mod(times2ToThe32Mod + j5, j2), UnsignedLongs.remainder(j4 * j4, j2), j2);
            }
        };

        private long powMod(long j, long j2, long j3) {
            long j4 = 1;
            while (j2 != 0) {
                if ((j2 & 1) != 0) {
                    j4 = mulMod(j4, j, j3);
                }
                j = squareMod(j, j3);
                j2 >>= 1;
            }
            return j4;
        }

        public static boolean test(long j, long j2) {
            MillerRabinTester millerRabinTester;
            if (j2 <= LongMath.FLOOR_SQRT_MAX_LONG) {
                millerRabinTester = SMALL;
            } else {
                millerRabinTester = LARGE;
            }
            return millerRabinTester.testWitness(j, j2);
        }

        private boolean testWitness(long j, long j2) {
            long j3 = j2 - 1;
            int numberOfTrailingZeros = Long.numberOfTrailingZeros(j3);
            long j4 = j3 >> numberOfTrailingZeros;
            long j5 = j % j2;
            if (j5 == 0) {
                return true;
            }
            long powMod = powMod(j5, j4, j2);
            if (powMod == 1) {
                return true;
            }
            int i = 0;
            while (powMod != j3) {
                i++;
                if (i == numberOfTrailingZeros) {
                    return false;
                }
                powMod = squareMod(powMod, j2);
            }
            return true;
        }

        public abstract long mulMod(long j, long j2, long j3);

        public abstract long squareMod(long j, long j2);

        /* synthetic */ MillerRabinTester(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    private LongMath() {
    }

    public static long binomial(int i, int i2) {
        boolean z;
        int i3 = 2;
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{4193148854325360533L, 4749444244051555391L}).toString(), i);
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{3116804509093114583L, 8713264143068335164L}).toString(), i2);
        if (i2 <= i) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-7657910511454673050L, -5770366752831364207L, -1074611443596207473L}).toString(), i2, i);
        if (i2 > (i >> 1)) {
            i2 = i - i2;
        }
        if (i2 == 0) {
            return 1L;
        }
        if (i2 != 1) {
            long[] jArr = factorials;
            if (i < jArr.length) {
                return jArr[i] / (jArr[i2] * jArr[i - i2]);
            }
            int[] iArr = biggestBinomials;
            if (i2 < iArr.length && i <= iArr[i2]) {
                int[] iArr2 = biggestSimpleBinomials;
                if (i2 < iArr2.length && i <= iArr2[i2]) {
                    int i4 = i - 1;
                    long j = i;
                    while (i3 <= i2) {
                        j = (j * i4) / i3;
                        i4--;
                        i3++;
                    }
                    return j;
                }
                long j2 = i;
                int log2 = log2(j2, RoundingMode.CEILING);
                int i5 = i - 1;
                long j3 = 1;
                long j4 = 1;
                long j5 = j2;
                int i6 = log2;
                while (i3 <= i2) {
                    i6 += log2;
                    if (i6 < 63) {
                        j5 *= i5;
                        j4 *= i3;
                    } else {
                        long multiplyFraction = multiplyFraction(j3, j5, j4);
                        j5 = i5;
                        j4 = i3;
                        j3 = multiplyFraction;
                        i6 = log2;
                    }
                    i3++;
                    i5--;
                }
                return multiplyFraction(j3, j5, j4);
            }
            return Long.MAX_VALUE;
        }
        return i;
    }

    @Beta
    public static long ceilingPowerOfTwo(long j) {
        MathPreconditions.checkPositive(new ObfuscatedString(new long[]{1523711785769382325L, -1649621658533474852L}).toString(), j);
        if (j <= 4611686018427387904L) {
            return 1 << (-Long.numberOfLeadingZeros(j - 1));
        }
        StringBuilder sb = new StringBuilder(70);
        sb.append(new ObfuscatedString(new long[]{-1220332234556754920L, -761615333638051286L, -8782855519492957038L, 904283252822829622L}).toString());
        sb.append(j);
        throw new ArithmeticException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6500784458618692297L, 8742587503151232192L, -1786173641443776850L, -8287618678355895649L, 6348490682848295414L}), sb));
    }

    @GwtIncompatible
    public static long checkedAdd(long j, long j2) {
        boolean z;
        long j3 = j + j2;
        boolean z2 = false;
        if ((j ^ j2) < 0) {
            z = true;
        } else {
            z = false;
        }
        if ((j ^ j3) >= 0) {
            z2 = true;
        }
        MathPreconditions.checkNoOverflow(z | z2, new ObfuscatedString(new long[]{976072988931434260L, -5140443623055209276L, 3194659653614174645L}).toString(), j, j2);
        return j3;
    }

    public static long checkedMultiply(long j, long j2) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(~j2) + Long.numberOfLeadingZeros(j2) + Long.numberOfLeadingZeros(~j) + Long.numberOfLeadingZeros(j);
        if (numberOfLeadingZeros > 65) {
            return j * j2;
        }
        if (numberOfLeadingZeros >= 64) {
            z = true;
        } else {
            z = false;
        }
        MathPreconditions.checkNoOverflow(z, new ObfuscatedString(new long[]{7812746081860346401L, 2216407356475511452L, 356109201052467216L}).toString(), j, j2);
        if (j >= 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (j2 != Long.MIN_VALUE) {
            z3 = true;
        } else {
            z3 = false;
        }
        MathPreconditions.checkNoOverflow(z2 | z3, new ObfuscatedString(new long[]{2673074040235082928L, 7807185423365290552L, 793552800234024379L}).toString(), j, j2);
        long j3 = j * j2;
        if (j != 0 && j3 / j != j2) {
            z4 = false;
        } else {
            z4 = true;
        }
        MathPreconditions.checkNoOverflow(z4, new ObfuscatedString(new long[]{157059060441317198L, -5192190356385869861L, 5051746542699165475L}).toString(), j, j2);
        return j3;
    }

    @GwtIncompatible
    public static long checkedPow(long j, int i) {
        boolean z;
        boolean z2;
        long j2;
        boolean z3;
        int i2 = i;
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{2177873293813440244L, -9198625099437738801L}).toString(), i2);
        boolean z4 = false;
        if (j >= -2) {
            z = true;
        } else {
            z = false;
        }
        if (j <= 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        boolean z5 = z & z2;
        long j3 = 1;
        if (z5) {
            int i3 = (int) j;
            if (i3 != -2) {
                if (i3 != -1) {
                    if (i3 != 0) {
                        if (i3 == 1) {
                            return 1L;
                        }
                        if (i3 == 2) {
                            if (i2 < 63) {
                                z4 = true;
                            }
                            MathPreconditions.checkNoOverflow(z4, new ObfuscatedString(new long[]{6528047289404316099L, -4531390131548106359L, -3979282390010383845L}).toString(), j, i2);
                            return 1 << i2;
                        }
                        throw new AssertionError();
                    }
                    if (i2 == 0) {
                        return 1L;
                    }
                    return 0L;
                }
                if ((i2 & 1) == 0) {
                    return 1L;
                }
                return -1L;
            }
            if (i2 < 64) {
                z4 = true;
            }
            MathPreconditions.checkNoOverflow(z4, new ObfuscatedString(new long[]{6479432932466308688L, 8035818979062024147L, 9147175887203780951L}).toString(), j, i2);
            if ((i2 & 1) == 0) {
                return 1 << i2;
            }
            return (-1) << i2;
        }
        long j4 = j;
        while (i2 != 0) {
            if (i2 != 1) {
                if ((i2 & 1) != 0) {
                    j2 = checkedMultiply(j3, j4);
                } else {
                    j2 = j3;
                }
                int i4 = i2 >> 1;
                if (i4 > 0) {
                    if (-3037000499L <= j4 && j4 <= FLOOR_SQRT_MAX_LONG) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    MathPreconditions.checkNoOverflow(z3, new ObfuscatedString(new long[]{-8066626717070847744L, 7943351123181990337L, -1739266528641920896L}).toString(), j4, i4);
                    j4 *= j4;
                }
                i2 = i4;
                j3 = j2;
            } else {
                return checkedMultiply(j3, j4);
            }
        }
        return j3;
    }

    @GwtIncompatible
    public static long checkedSubtract(long j, long j2) {
        boolean z;
        long j3 = j - j2;
        boolean z2 = false;
        if ((j ^ j2) >= 0) {
            z = true;
        } else {
            z = false;
        }
        if ((j ^ j3) >= 0) {
            z2 = true;
        }
        MathPreconditions.checkNoOverflow(z | z2, new ObfuscatedString(new long[]{4580532018714025592L, -8871855667979723368L, 1207756213167742609L}).toString(), j, j2);
        return j3;
    }

    @GwtIncompatible
    public static long divide(long j, long j2, RoundingMode roundingMode) {
        Preconditions.checkNotNull(roundingMode);
        long j3 = j / j2;
        long j4 = j - (j2 * j3);
        if (j4 == 0) {
            return j3;
        }
        int i = (int) ((j ^ j2) >> 63);
        boolean z = true;
        int i2 = i | 1;
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                if (j4 != 0) {
                    z = false;
                }
                MathPreconditions.checkRoundingUnnecessary(z);
                return j3;
            case 2:
                return j3;
            case 3:
                if (i2 >= 0) {
                    return j3;
                }
                break;
            case 4:
                break;
            case 5:
                if (i2 <= 0) {
                    return j3;
                }
                break;
            case 6:
            case 7:
            case 8:
                long abs = Math.abs(j4);
                long abs2 = abs - (Math.abs(j2) - abs);
                if (abs2 == 0) {
                    if (roundingMode != RoundingMode.HALF_UP && (roundingMode != RoundingMode.HALF_EVEN || (1 & j3) == 0)) {
                        return j3;
                    }
                } else if (abs2 <= 0) {
                    return j3;
                }
                break;
            default:
                throw new AssertionError();
        }
        return j3 + i2;
    }

    @GwtIncompatible
    public static long factorial(int i) {
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{3846838017996349203L, 5973219007234772421L}).toString(), i);
        long[] jArr = factorials;
        if (i < jArr.length) {
            return jArr[i];
        }
        return Long.MAX_VALUE;
    }

    public static boolean fitsInInt(long j) {
        return ((long) ((int) j)) == j;
    }

    @Beta
    public static long floorPowerOfTwo(long j) {
        MathPreconditions.checkPositive(new ObfuscatedString(new long[]{7803324429282818594L, -2212277346878564599L}).toString(), j);
        return 1 << (63 - Long.numberOfLeadingZeros(j));
    }

    public static long gcd(long j, long j2) {
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{-4434414477307143236L, 8257627231660517215L}).toString(), j);
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{7267574343647328826L, 7526846531488168510L}).toString(), j2);
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
            j4 += j6;
            j3 = j7 >> Long.numberOfTrailingZeros(j7);
        }
        return j3 << Math.min(numberOfTrailingZeros, numberOfTrailingZeros2);
    }

    public static boolean isPowerOfTwo(long j) {
        return (j > 0) & ((j & (j - 1)) == 0);
    }

    @Beta
    @GwtIncompatible
    public static boolean isPrime(long j) {
        if (j < 2) {
            MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{6854737489057091603L, 564804910246436242L}).toString(), j);
            return false;
        }
        if (j < 66) {
            if (((722865708377213483 >> (((int) j) - 2)) & 1) != 0) {
                return true;
            }
            return false;
        }
        if (((1 << ((int) (j % 30))) & SIEVE_30) != 0 || j % 7 == 0 || j % 11 == 0 || j % 13 == 0) {
            return false;
        }
        if (j < 289) {
            return true;
        }
        for (long[] jArr : millerRabinBaseSets) {
            if (j <= jArr[0]) {
                for (int i = 1; i < jArr.length; i++) {
                    if (!MillerRabinTester.test(jArr[i], j)) {
                        return false;
                    }
                }
                return true;
            }
        }
        throw new AssertionError();
    }

    @VisibleForTesting
    public static int lessThanBranchFree(long j, long j2) {
        return (int) ((~(~(j - j2))) >>> 63);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0022. Please report as an issue. */
    @GwtIncompatible
    public static int log10(long j, RoundingMode roundingMode) {
        boolean z;
        int lessThanBranchFree;
        MathPreconditions.checkPositive(new ObfuscatedString(new long[]{-4069819673755354490L, -2961260314598131619L}).toString(), j);
        int log10Floor = log10Floor(j);
        long j2 = powersOf10[log10Floor];
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                if (j == j2) {
                    z = true;
                } else {
                    z = false;
                }
                MathPreconditions.checkRoundingUnnecessary(z);
            case 2:
            case 3:
                return log10Floor;
            case 4:
            case 5:
                lessThanBranchFree = lessThanBranchFree(j2, j);
                return lessThanBranchFree + log10Floor;
            case 6:
            case 7:
            case 8:
                lessThanBranchFree = lessThanBranchFree(halfPowersOf10[log10Floor], j);
                return lessThanBranchFree + log10Floor;
            default:
                throw new AssertionError();
        }
    }

    @GwtIncompatible
    public static int log10Floor(long j) {
        byte b = maxLog10ForLeadingZeros[Long.numberOfLeadingZeros(j)];
        return b - lessThanBranchFree(j, powersOf10[b]);
    }

    public static int log2(long j, RoundingMode roundingMode) {
        MathPreconditions.checkPositive(new ObfuscatedString(new long[]{774492950340291132L, -7188286917666610550L}).toString(), j);
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(isPowerOfTwo(j));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 64 - Long.numberOfLeadingZeros(j - 1);
            case 6:
            case 7:
            case 8:
                int numberOfLeadingZeros = Long.numberOfLeadingZeros(j);
                return lessThanBranchFree(MAX_POWER_OF_SQRT2_UNSIGNED >>> numberOfLeadingZeros, j) + (63 - numberOfLeadingZeros);
            default:
                throw new AssertionError(new ObfuscatedString(new long[]{2501113306511036792L, 7060143641269769431L, 8447438340911618668L}).toString());
        }
        return 63 - Long.numberOfLeadingZeros(j);
    }

    public static long mean(long j, long j2) {
        return (j & j2) + ((j ^ j2) >> 1);
    }

    @GwtIncompatible
    public static int mod(long j, int i) {
        return (int) mod(j, i);
    }

    public static long multiplyFraction(long j, long j2, long j3) {
        if (j == 1) {
            return j2 / j3;
        }
        long gcd = gcd(j, j3);
        return (j2 / (j3 / gcd)) * (j / gcd);
    }

    @GwtIncompatible
    public static long pow(long j, int i) {
        long j2;
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{-1448713195383294738L, 1833366351991719910L}).toString(), i);
        if (-2 <= j && j <= 2) {
            int i2 = (int) j;
            if (i2 != -2) {
                if (i2 != -1) {
                    if (i2 != 0) {
                        if (i2 == 1) {
                            return 1L;
                        }
                        if (i2 == 2) {
                            if (i >= 64) {
                                return 0L;
                            }
                            return 1 << i;
                        }
                        throw new AssertionError();
                    }
                    if (i == 0) {
                        return 1L;
                    }
                    return 0L;
                }
                if ((i & 1) == 0) {
                    return 1L;
                }
                return -1L;
            }
            if (i >= 64) {
                return 0L;
            }
            if ((i & 1) == 0) {
                return 1 << i;
            }
            return -(1 << i);
        }
        long j3 = 1;
        while (i != 0) {
            if (i != 1) {
                if ((i & 1) == 0) {
                    j2 = 1;
                } else {
                    j2 = j;
                }
                j3 *= j2;
                j *= j;
                i >>= 1;
            } else {
                return j3 * j;
            }
        }
        return j3;
    }

    @GwtIncompatible
    public static double roundToDouble(long j, RoundingMode roundingMode) {
        int compare;
        boolean z;
        double d;
        long j2;
        double d2 = j;
        long j3 = (long) d2;
        if (j3 == Long.MAX_VALUE) {
            compare = -1;
        } else {
            compare = Longs.compare(j, j3);
        }
        int[] iArr = AnonymousClass1.$SwitchMap$java$math$RoundingMode;
        switch (iArr[roundingMode.ordinal()]) {
            case 1:
                if (compare == 0) {
                    z = true;
                } else {
                    z = false;
                }
                MathPreconditions.checkRoundingUnnecessary(z);
                return d2;
            case 2:
                if (j >= 0) {
                    if (compare < 0) {
                        return DoubleUtils.nextDown(d2);
                    }
                    return d2;
                }
                if (compare > 0) {
                    return Math.nextUp(d2);
                }
                return d2;
            case 3:
                if (compare < 0) {
                    return DoubleUtils.nextDown(d2);
                }
                return d2;
            case 4:
                if (j >= 0) {
                    if (compare > 0) {
                        return Math.nextUp(d2);
                    }
                    return d2;
                }
                if (compare < 0) {
                    return DoubleUtils.nextDown(d2);
                }
                return d2;
            case 5:
                if (compare > 0) {
                    return Math.nextUp(d2);
                }
                return d2;
            case 6:
            case 7:
            case 8:
                if (compare >= 0) {
                    d = Math.nextUp(d2);
                    j2 = (long) Math.ceil(d);
                } else {
                    double nextDown = DoubleUtils.nextDown(d2);
                    j3 = (long) Math.floor(nextDown);
                    d = d2;
                    d2 = nextDown;
                    j2 = j3;
                }
                long j4 = j - j3;
                long j5 = j2 - j;
                if (j2 == Long.MAX_VALUE) {
                    j5++;
                }
                int compare2 = Longs.compare(j4, j5);
                if (compare2 < 0) {
                    return d2;
                }
                if (compare2 > 0) {
                    return d;
                }
                int i = iArr[roundingMode.ordinal()];
                if (i != 6) {
                    if (i != 7) {
                        if (i == 8) {
                            if ((DoubleUtils.getSignificand(d2) & 1) != 0) {
                                return d;
                            }
                            return d2;
                        }
                        throw new AssertionError(new ObfuscatedString(new long[]{4495116047643774272L, -1178897622266616360L, 8043123116191353037L}).toString());
                    }
                    if (j >= 0) {
                        return d;
                    }
                    return d2;
                }
                if (j < 0) {
                    return d;
                }
                return d2;
            default:
                throw new AssertionError(new ObfuscatedString(new long[]{-8228201547032622326L, -5345773019612780393L, -4196091429092102978L}).toString());
        }
    }

    @Beta
    public static long saturatedAdd(long j, long j2) {
        long j3 = j + j2;
        return (((j2 ^ j) > 0L ? 1 : ((j2 ^ j) == 0L ? 0 : -1)) < 0) | ((j ^ j3) >= 0) ? j3 : ((j3 >>> 63) ^ 1) + Long.MAX_VALUE;
    }

    @Beta
    public static long saturatedMultiply(long j, long j2) {
        boolean z;
        boolean z2;
        int numberOfLeadingZeros = Long.numberOfLeadingZeros(~j2) + Long.numberOfLeadingZeros(j2) + Long.numberOfLeadingZeros(~j) + Long.numberOfLeadingZeros(j);
        if (numberOfLeadingZeros > 65) {
            return j * j2;
        }
        long j3 = ((j ^ j2) >>> 63) + Long.MAX_VALUE;
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
        if (z | (z3 & z2)) {
            return j3;
        }
        long j4 = j * j2;
        if (j != 0 && j4 / j != j2) {
            return j3;
        }
        return j4;
    }

    @Beta
    public static long saturatedPow(long j, int i) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{470639924301001806L, -1257215387135104060L}).toString(), i);
        if (j >= -2) {
            z = true;
        } else {
            z = false;
        }
        if (j <= 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        long j2 = 1;
        if (z & z2) {
            int i2 = (int) j;
            if (i2 != -2) {
                if (i2 != -1) {
                    if (i2 != 0) {
                        if (i2 == 1) {
                            return 1L;
                        }
                        if (i2 == 2) {
                            if (i >= 63) {
                                return Long.MAX_VALUE;
                            }
                            return 1 << i;
                        }
                        throw new AssertionError();
                    }
                    if (i == 0) {
                        return 1L;
                    }
                    return 0L;
                }
                if ((i & 1) == 0) {
                    return 1L;
                }
                return -1L;
            }
            if (i >= 64) {
                return (i & 1) + Long.MAX_VALUE;
            }
            if ((i & 1) == 0) {
                return 1 << i;
            }
            return (-1) << i;
        }
        long j3 = ((j >>> 63) & i & 1) + Long.MAX_VALUE;
        while (i != 0) {
            if (i != 1) {
                if ((i & 1) != 0) {
                    j2 = saturatedMultiply(j2, j);
                }
                i >>= 1;
                if (i > 0) {
                    if (-3037000499L > j) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (j > FLOOR_SQRT_MAX_LONG) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    if (z3 | z4) {
                        return j3;
                    }
                    j *= j;
                }
            } else {
                return saturatedMultiply(j2, j);
            }
        }
        return j2;
    }

    @Beta
    public static long saturatedSubtract(long j, long j2) {
        long j3 = j - j2;
        return (((j2 ^ j) > 0L ? 1 : ((j2 ^ j) == 0L ? 0 : -1)) >= 0) | ((j ^ j3) >= 0) ? j3 : ((j3 >>> 63) ^ 1) + Long.MAX_VALUE;
    }

    @GwtIncompatible
    public static long sqrt(long j, RoundingMode roundingMode) {
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{-4841480532773797522L, -4573000957555828698L}).toString(), j);
        if (fitsInInt(j)) {
            return IntMath.sqrt((int) j, roundingMode);
        }
        long sqrt = (long) Math.sqrt(j);
        long j2 = sqrt * sqrt;
        boolean z = false;
        int i = 0;
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                if (j2 == j) {
                    z = true;
                }
                MathPreconditions.checkRoundingUnnecessary(z);
                return sqrt;
            case 2:
            case 3:
                if (j < j2) {
                    return sqrt - 1;
                }
                return sqrt;
            case 4:
            case 5:
                if (j > j2) {
                    return sqrt + 1;
                }
                return sqrt;
            case 6:
            case 7:
            case 8:
                if (j < j2) {
                    i = 1;
                }
                return (sqrt - i) + lessThanBranchFree((r0 * r0) + r0, j);
            default:
                throw new AssertionError();
        }
    }

    @GwtIncompatible
    public static long mod(long j, long j2) {
        if (j2 > 0) {
            long j3 = j % j2;
            return j3 >= 0 ? j3 : j3 + j2;
        }
        throw new ArithmeticException(new ObfuscatedString(new long[]{2084085991898236957L, 211113621526865186L, -1478188133426317464L, 5387965657956561126L}).toString());
    }
}
