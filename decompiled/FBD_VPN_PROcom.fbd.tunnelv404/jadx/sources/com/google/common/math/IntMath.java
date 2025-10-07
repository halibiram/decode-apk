package com.google.common.math;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.math.RoundingMode;
import kotlin.time.DurationKt;

@ElementTypesAreNonnullByDefault
@GwtCompatible(emulated = true)
/* loaded from: classes2.dex */
public final class IntMath {

    @VisibleForTesting
    static final int FLOOR_SQRT_MAX_INT = 46340;

    @VisibleForTesting
    static final int MAX_POWER_OF_SQRT2_UNSIGNED = -1257966797;

    @VisibleForTesting
    static final int MAX_SIGNED_POWER_OF_TWO = 1073741824;

    @VisibleForTesting
    static final byte[] maxLog10ForLeadingZeros = {9, 9, 9, 8, 8, 8, 7, 7, 7, 6, 6, 6, 6, 5, 5, 5, 4, 4, 4, 3, 3, 3, 3, 2, 2, 2, 1, 1, 1, 0, 0, 0, 0};

    @VisibleForTesting
    static final int[] powersOf10 = {1, 10, 100, 1000, 10000, 100000, DurationKt.NANOS_IN_MILLIS, 10000000, 100000000, 1000000000};

    @VisibleForTesting
    static final int[] halfPowersOf10 = {3, 31, TypedValues.AttributesType.TYPE_PATH_ROTATE, 3162, 31622, 316227, 3162277, 31622776, 316227766, Integer.MAX_VALUE};
    private static final int[] factorials = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880, 3628800, 39916800, 479001600};

    @VisibleForTesting
    static int[] biggestBinomials = {Integer.MAX_VALUE, Integer.MAX_VALUE, 65536, 2345, 477, 193, 110, 75, 58, 49, 43, 39, 37, 35, 34, 34, 33};

    /* renamed from: com.google.common.math.IntMath$1, reason: invalid class name */
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

    private IntMath() {
    }

    public static int binomial(int i, int i2) {
        boolean z;
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{2385763450586037702L, -5605976106466375978L}).toString(), i);
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{-6378703673907862236L, 1287960756148281547L}).toString(), i2);
        int i3 = 0;
        if (i2 <= i) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{6989414472391835760L, -1781100948553514838L, 8683271521913992647L}).toString(), i2, i);
        if (i2 > (i >> 1)) {
            i2 = i - i2;
        }
        int[] iArr = biggestBinomials;
        if (i2 < iArr.length && i <= iArr[i2]) {
            if (i2 == 0) {
                return 1;
            }
            if (i2 != 1) {
                long j = 1;
                while (i3 < i2) {
                    long j2 = j * (i - i3);
                    i3++;
                    j = j2 / i3;
                }
                return (int) j;
            }
            return i;
        }
        return Integer.MAX_VALUE;
    }

    @Beta
    public static int ceilingPowerOfTwo(int i) {
        MathPreconditions.checkPositive(new ObfuscatedString(new long[]{1075185183159338639L, -6439874915601561703L}).toString(), i);
        if (i <= 1073741824) {
            return 1 << (-Integer.numberOfLeadingZeros(i - 1));
        }
        StringBuilder sb = new StringBuilder(58);
        sb.append(new ObfuscatedString(new long[]{-3490193302236265026L, 147114219917201240L, -7823446848584686521L, 622830263544823231L}).toString());
        sb.append(i);
        throw new ArithmeticException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{8305178820333519076L, -6260999663273241697L, 4201945220632070399L, 326556047318602666L, -1302869991946838188L}), sb));
    }

    public static int checkedAdd(int i, int i2) {
        boolean z;
        long j = i + i2;
        int i3 = (int) j;
        if (j == i3) {
            z = true;
        } else {
            z = false;
        }
        MathPreconditions.checkNoOverflow(z, new ObfuscatedString(new long[]{8918059517763417499L, -3474886760647634871L, 1855411521465572114L}).toString(), i, i2);
        return i3;
    }

    public static int checkedMultiply(int i, int i2) {
        boolean z;
        long j = i * i2;
        int i3 = (int) j;
        if (j == i3) {
            z = true;
        } else {
            z = false;
        }
        MathPreconditions.checkNoOverflow(z, new ObfuscatedString(new long[]{833777860270930908L, 7422128996211537026L, 2722623996541982826L}).toString(), i, i2);
        return i3;
    }

    public static int checkedPow(int i, int i2) {
        boolean z;
        boolean z2;
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{7241547595865127029L, 1800164706214899959L}).toString(), i2);
        boolean z3 = false;
        if (i != -2) {
            if (i != -1) {
                if (i != 0) {
                    if (i == 1) {
                        return 1;
                    }
                    if (i != 2) {
                        int i3 = 1;
                        while (i2 != 0) {
                            if (i2 != 1) {
                                if ((i2 & 1) != 0) {
                                    i3 = checkedMultiply(i3, i);
                                }
                                i2 >>= 1;
                                if (i2 > 0) {
                                    if (-46340 <= i) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    if (i <= FLOOR_SQRT_MAX_INT) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    MathPreconditions.checkNoOverflow(z & z2, new ObfuscatedString(new long[]{8471268866516997352L, 8579709802197716893L, -8840069354502003163L}).toString(), i, i2);
                                    i *= i;
                                }
                            } else {
                                return checkedMultiply(i3, i);
                            }
                        }
                        return i3;
                    }
                    if (i2 < 31) {
                        z3 = true;
                    }
                    MathPreconditions.checkNoOverflow(z3, new ObfuscatedString(new long[]{3560024603699362226L, -7402416353671804946L, 8927686423279235187L}).toString(), i, i2);
                    return 1 << i2;
                }
                if (i2 == 0) {
                    return 1;
                }
                return 0;
            }
            if ((i2 & 1) == 0) {
                return 1;
            }
            return -1;
        }
        if (i2 < 32) {
            z3 = true;
        }
        MathPreconditions.checkNoOverflow(z3, new ObfuscatedString(new long[]{-7134801084278610542L, -8745011131337233637L, -919980017462544986L}).toString(), i, i2);
        if ((i2 & 1) == 0) {
            return 1 << i2;
        }
        return (-1) << i2;
    }

    public static int checkedSubtract(int i, int i2) {
        boolean z;
        long j = i - i2;
        int i3 = (int) j;
        if (j == i3) {
            z = true;
        } else {
            z = false;
        }
        MathPreconditions.checkNoOverflow(z, new ObfuscatedString(new long[]{-5427807520847543867L, -7601850115921583144L, -953111801807176842L}).toString(), i, i2);
        return i3;
    }

    public static int divide(int i, int i2, RoundingMode roundingMode) {
        boolean z;
        boolean z2 = true;
        Preconditions.checkNotNull(roundingMode);
        if (i2 != 0) {
            int i3 = i / i2;
            int i4 = i - (i2 * i3);
            if (i4 == 0) {
                return i3;
            }
            int i5 = ((i ^ i2) >> 31) | 1;
            switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
                case 1:
                    if (i4 != 0) {
                        z2 = false;
                    }
                    MathPreconditions.checkRoundingUnnecessary(z2);
                    return i3;
                case 2:
                    return i3;
                case 3:
                    if (i5 >= 0) {
                        return i3;
                    }
                    break;
                case 4:
                    break;
                case 5:
                    if (i5 <= 0) {
                        return i3;
                    }
                    break;
                case 6:
                case 7:
                case 8:
                    int abs = Math.abs(i4);
                    int abs2 = abs - (Math.abs(i2) - abs);
                    if (abs2 == 0) {
                        if (roundingMode != RoundingMode.HALF_UP) {
                            if (roundingMode == RoundingMode.HALF_EVEN) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if ((i3 & 1) == 0) {
                                z2 = false;
                            }
                            if (!(z & z2)) {
                                return i3;
                            }
                        }
                    } else if (abs2 <= 0) {
                        return i3;
                    }
                    break;
                default:
                    throw new AssertionError();
            }
            return i3 + i5;
        }
        throw new ArithmeticException(new ObfuscatedString(new long[]{2127279295167216646L, -7631485164127022064L, -7842630485055611462L}).toString());
    }

    public static int factorial(int i) {
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{-2244698868857693141L, 1819789140840017837L}).toString(), i);
        int[] iArr = factorials;
        if (i < iArr.length) {
            return iArr[i];
        }
        return Integer.MAX_VALUE;
    }

    @Beta
    public static int floorPowerOfTwo(int i) {
        MathPreconditions.checkPositive(new ObfuscatedString(new long[]{-1481801583353609045L, 6240807347734833427L}).toString(), i);
        return Integer.highestOneBit(i);
    }

    public static int gcd(int i, int i2) {
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{5407374276492248775L, -3861401491049389403L}).toString(), i);
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{5817607316399652010L, 1069853262718321324L}).toString(), i2);
        if (i == 0) {
            return i2;
        }
        if (i2 == 0) {
            return i;
        }
        int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
        int i3 = i >> numberOfTrailingZeros;
        int numberOfTrailingZeros2 = Integer.numberOfTrailingZeros(i2);
        int i4 = i2 >> numberOfTrailingZeros2;
        while (i3 != i4) {
            int i5 = i3 - i4;
            int i6 = (i5 >> 31) & i5;
            int i7 = (i5 - i6) - i6;
            i4 += i6;
            i3 = i7 >> Integer.numberOfTrailingZeros(i7);
        }
        return i3 << Math.min(numberOfTrailingZeros, numberOfTrailingZeros2);
    }

    public static boolean isPowerOfTwo(int i) {
        return (i > 0) & ((i & (i + (-1))) == 0);
    }

    @Beta
    @GwtIncompatible
    public static boolean isPrime(int i) {
        return LongMath.isPrime(i);
    }

    @VisibleForTesting
    public static int lessThanBranchFree(int i, int i2) {
        return (~(~(i - i2))) >>> 31;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0022. Please report as an issue. */
    @GwtIncompatible
    public static int log10(int i, RoundingMode roundingMode) {
        boolean z;
        int lessThanBranchFree;
        MathPreconditions.checkPositive(new ObfuscatedString(new long[]{4009264492358301157L, -1071615469301244693L}).toString(), i);
        int log10Floor = log10Floor(i);
        int i2 = powersOf10[log10Floor];
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                if (i == i2) {
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
                lessThanBranchFree = lessThanBranchFree(i2, i);
                return lessThanBranchFree + log10Floor;
            case 6:
            case 7:
            case 8:
                lessThanBranchFree = lessThanBranchFree(halfPowersOf10[log10Floor], i);
                return lessThanBranchFree + log10Floor;
            default:
                throw new AssertionError();
        }
    }

    private static int log10Floor(int i) {
        byte b = maxLog10ForLeadingZeros[Integer.numberOfLeadingZeros(i)];
        return b - lessThanBranchFree(i, powersOf10[b]);
    }

    public static int log2(int i, RoundingMode roundingMode) {
        MathPreconditions.checkPositive(new ObfuscatedString(new long[]{115623151397919613L, -6293680552677224476L}).toString(), i);
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                MathPreconditions.checkRoundingUnnecessary(isPowerOfTwo(i));
                break;
            case 2:
            case 3:
                break;
            case 4:
            case 5:
                return 32 - Integer.numberOfLeadingZeros(i - 1);
            case 6:
            case 7:
            case 8:
                int numberOfLeadingZeros = Integer.numberOfLeadingZeros(i);
                return lessThanBranchFree(MAX_POWER_OF_SQRT2_UNSIGNED >>> numberOfLeadingZeros, i) + (31 - numberOfLeadingZeros);
            default:
                throw new AssertionError();
        }
        return 31 - Integer.numberOfLeadingZeros(i);
    }

    public static int mean(int i, int i2) {
        return (i & i2) + ((i ^ i2) >> 1);
    }

    public static int mod(int i, int i2) {
        if (i2 > 0) {
            int i3 = i % i2;
            if (i3 < 0) {
                return i3 + i2;
            }
            return i3;
        }
        StringBuilder sb = new StringBuilder(31);
        sb.append(new ObfuscatedString(new long[]{1775657374761772173L, 5381817247201732939L}).toString());
        sb.append(i2);
        throw new ArithmeticException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5435712931485229728L, -5944550985036245344L, 2899455131651723398L}), sb));
    }

    @GwtIncompatible
    public static int pow(int i, int i2) {
        int i3;
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{6211391895171769496L, -2493547918624264138L}).toString(), i2);
        if (i != -2) {
            if (i != -1) {
                if (i != 0) {
                    if (i == 1) {
                        return 1;
                    }
                    if (i != 2) {
                        int i4 = 1;
                        while (i2 != 0) {
                            if (i2 != 1) {
                                if ((i2 & 1) == 0) {
                                    i3 = 1;
                                } else {
                                    i3 = i;
                                }
                                i4 *= i3;
                                i *= i;
                                i2 >>= 1;
                            } else {
                                return i * i4;
                            }
                        }
                        return i4;
                    }
                    if (i2 >= 32) {
                        return 0;
                    }
                    return 1 << i2;
                }
                if (i2 == 0) {
                    return 1;
                }
                return 0;
            }
            if ((i2 & 1) == 0) {
                return 1;
            }
            return -1;
        }
        if (i2 >= 32) {
            return 0;
        }
        if ((i2 & 1) == 0) {
            return 1 << i2;
        }
        return -(1 << i2);
    }

    @Beta
    public static int saturatedAdd(int i, int i2) {
        return Ints.saturatedCast(i + i2);
    }

    @Beta
    public static int saturatedMultiply(int i, int i2) {
        return Ints.saturatedCast(i * i2);
    }

    @Beta
    public static int saturatedPow(int i, int i2) {
        boolean z;
        boolean z2;
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{-5573871557264868052L, 6063694991424926770L}).toString(), i2);
        if (i != -2) {
            if (i != -1) {
                if (i != 0) {
                    if (i == 1) {
                        return 1;
                    }
                    if (i != 2) {
                        int i3 = ((i >>> 31) & i2 & 1) + Integer.MAX_VALUE;
                        int i4 = 1;
                        while (i2 != 0) {
                            if (i2 != 1) {
                                if ((i2 & 1) != 0) {
                                    i4 = saturatedMultiply(i4, i);
                                }
                                i2 >>= 1;
                                if (i2 > 0) {
                                    if (-46340 > i) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    if (i > FLOOR_SQRT_MAX_INT) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    if (z | z2) {
                                        return i3;
                                    }
                                    i *= i;
                                }
                            } else {
                                return saturatedMultiply(i4, i);
                            }
                        }
                        return i4;
                    }
                    if (i2 >= 31) {
                        return Integer.MAX_VALUE;
                    }
                    return 1 << i2;
                }
                if (i2 == 0) {
                    return 1;
                }
                return 0;
            }
            if ((i2 & 1) == 0) {
                return 1;
            }
            return -1;
        }
        if (i2 >= 32) {
            return (i2 & 1) + Integer.MAX_VALUE;
        }
        if ((i2 & 1) == 0) {
            return 1 << i2;
        }
        return (-1) << i2;
    }

    @Beta
    public static int saturatedSubtract(int i, int i2) {
        return Ints.saturatedCast(i - i2);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x001e. Please report as an issue. */
    @GwtIncompatible
    public static int sqrt(int i, RoundingMode roundingMode) {
        boolean z;
        int lessThanBranchFree;
        MathPreconditions.checkNonNegative(new ObfuscatedString(new long[]{450305942874756761L, -1887477798515024286L}).toString(), i);
        int sqrtFloor = sqrtFloor(i);
        switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
            case 1:
                if (sqrtFloor * sqrtFloor == i) {
                    z = true;
                } else {
                    z = false;
                }
                MathPreconditions.checkRoundingUnnecessary(z);
            case 2:
            case 3:
                return sqrtFloor;
            case 4:
            case 5:
                lessThanBranchFree = lessThanBranchFree(sqrtFloor * sqrtFloor, i);
                return lessThanBranchFree + sqrtFloor;
            case 6:
            case 7:
            case 8:
                lessThanBranchFree = lessThanBranchFree((sqrtFloor * sqrtFloor) + sqrtFloor, i);
                return lessThanBranchFree + sqrtFloor;
            default:
                throw new AssertionError();
        }
    }

    private static int sqrtFloor(int i) {
        return (int) Math.sqrt(i);
    }
}
