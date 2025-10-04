package com.google.common.math;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import defpackage.AbstractC0749x8313616e;
import java.lang.Comparable;
import java.lang.Number;
import java.math.RoundingMode;

@ElementTypesAreNonnullByDefault
@GwtIncompatible
/* loaded from: classes2.dex */
abstract class ToDoubleRounder<X extends Number & Comparable<X>> {

    /* renamed from: com.google.common.math.ToDoubleRounder$1, reason: invalid class name */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$java$math$RoundingMode;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            $SwitchMap$java$math$RoundingMode = iArr;
            try {
                iArr[RoundingMode.DOWN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_EVEN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_DOWN.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.HALF_UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.FLOOR.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.CEILING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$java$math$RoundingMode[RoundingMode.UNNECESSARY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public abstract X minus(X x, X x2);

    public final double roundToDouble(X x, RoundingMode roundingMode) {
        X x2;
        double d;
        boolean z;
        Preconditions.checkNotNull(x, new ObfuscatedString(new long[]{-1599590436000579842L, -9153369004072273555L}).toString());
        Preconditions.checkNotNull(roundingMode, new ObfuscatedString(new long[]{-7321692705844055595L, -6415710855429551042L}).toString());
        double roundToDoubleArbitrarily = roundToDoubleArbitrarily(x);
        if (Double.isInfinite(roundToDoubleArbitrarily)) {
            switch (AnonymousClass1.$SwitchMap$java$math$RoundingMode[roundingMode.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                    return sign(x) * Double.MAX_VALUE;
                case 5:
                    if (roundToDoubleArbitrarily != Double.POSITIVE_INFINITY) {
                        return Double.NEGATIVE_INFINITY;
                    }
                    return Double.MAX_VALUE;
                case 6:
                    if (roundToDoubleArbitrarily == Double.POSITIVE_INFINITY) {
                        return Double.POSITIVE_INFINITY;
                    }
                    return -1.7976931348623157E308d;
                case 7:
                    return roundToDoubleArbitrarily;
                case 8:
                    String valueOf = String.valueOf(x);
                    throw new ArithmeticException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4857982160743606979L, 2112723484973195709L, -2219850670197821654L, 2100517109353318951L, -2425991959257230353L, -5929568358140363328L, 4993765474598830710L}), AbstractC0362x4440ab85.m2938x1aebc6d9(valueOf.length() + 44, valueOf)));
            }
        }
        X x3 = toX(roundToDoubleArbitrarily, RoundingMode.UNNECESSARY);
        int compareTo = ((Comparable) x).compareTo(x3);
        int[] iArr = AnonymousClass1.$SwitchMap$java$math$RoundingMode;
        switch (iArr[roundingMode.ordinal()]) {
            case 1:
                if (sign(x) >= 0) {
                    if (compareTo < 0) {
                        return DoubleUtils.nextDown(roundToDoubleArbitrarily);
                    }
                    return roundToDoubleArbitrarily;
                }
                if (compareTo > 0) {
                    return Math.nextUp(roundToDoubleArbitrarily);
                }
                return roundToDoubleArbitrarily;
            case 2:
            case 3:
            case 4:
                if (compareTo >= 0) {
                    d = Math.nextUp(roundToDoubleArbitrarily);
                    if (d == Double.POSITIVE_INFINITY) {
                        return roundToDoubleArbitrarily;
                    }
                    x2 = toX(d, RoundingMode.CEILING);
                } else {
                    double nextDown = DoubleUtils.nextDown(roundToDoubleArbitrarily);
                    if (nextDown == Double.NEGATIVE_INFINITY) {
                        return roundToDoubleArbitrarily;
                    }
                    X x4 = toX(nextDown, RoundingMode.FLOOR);
                    x2 = x3;
                    x3 = x4;
                    d = roundToDoubleArbitrarily;
                    roundToDoubleArbitrarily = nextDown;
                }
                int compareTo2 = ((Comparable) minus(x, x3)).compareTo(minus(x2, x));
                if (compareTo2 < 0) {
                    return roundToDoubleArbitrarily;
                }
                if (compareTo2 > 0) {
                    return d;
                }
                int i = iArr[roundingMode.ordinal()];
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            if (sign(x) >= 0) {
                                return d;
                            }
                            return roundToDoubleArbitrarily;
                        }
                        throw new AssertionError(new ObfuscatedString(new long[]{-291052331582669374L, -6079586827617277786L, -7332214201660801964L}).toString());
                    }
                    if (sign(x) < 0) {
                        return d;
                    }
                    return roundToDoubleArbitrarily;
                }
                if ((Double.doubleToRawLongBits(roundToDoubleArbitrarily) & 1) != 0) {
                    return d;
                }
                return roundToDoubleArbitrarily;
            case 5:
                if (compareTo < 0) {
                    return DoubleUtils.nextDown(roundToDoubleArbitrarily);
                }
                return roundToDoubleArbitrarily;
            case 6:
                if (compareTo > 0) {
                    return Math.nextUp(roundToDoubleArbitrarily);
                }
                return roundToDoubleArbitrarily;
            case 7:
                if (sign(x) >= 0) {
                    if (compareTo > 0) {
                        return Math.nextUp(roundToDoubleArbitrarily);
                    }
                    return roundToDoubleArbitrarily;
                }
                if (compareTo < 0) {
                    return DoubleUtils.nextDown(roundToDoubleArbitrarily);
                }
                return roundToDoubleArbitrarily;
            case 8:
                if (compareTo == 0) {
                    z = true;
                } else {
                    z = false;
                }
                MathPreconditions.checkRoundingUnnecessary(z);
                return roundToDoubleArbitrarily;
            default:
                throw new AssertionError(new ObfuscatedString(new long[]{8698116567491150270L, -3117688201482619858L, -8312502204353233433L}).toString());
        }
    }

    public abstract double roundToDoubleArbitrarily(X x);

    public abstract int sign(X x);

    public abstract X toX(double d, RoundingMode roundingMode);
}
