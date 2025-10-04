package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Comparator;

@ElementTypesAreNonnullByDefault
@Beta
@GwtCompatible
/* loaded from: classes2.dex */
public final class UnsignedLongs {
    public static final long MAX_VALUE = -1;

    /* loaded from: classes2.dex */
    public enum LexicographicalComparator implements Comparator<long[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return new ObfuscatedString(new long[]{5367212577989818875L, 3917489202151424139L, -8189682456608170953L, 3953932184482410367L, 2142630663475353534L, 8978605702981234336L, 5574777646804970415L}).toString();
        }

        @Override // java.util.Comparator
        public int compare(long[] jArr, long[] jArr2) {
            int min = Math.min(jArr.length, jArr2.length);
            for (int i = 0; i < min; i++) {
                long j = jArr[i];
                long j2 = jArr2[i];
                if (j != j2) {
                    return UnsignedLongs.compare(j, j2);
                }
            }
            return jArr.length - jArr2.length;
        }
    }

    /* loaded from: classes2.dex */
    public static final class ParseOverflowDetection {
        static final long[] maxValueDivs = new long[37];
        static final int[] maxValueMods = new int[37];
        static final int[] maxSafeDigits = new int[37];

        static {
            BigInteger bigInteger = new BigInteger(new ObfuscatedString(new long[]{-7883608269087442737L, 8737848588296180380L, 1967559740208269269L, -2431639837192462476L}).toString(), 16);
            for (int i = 2; i <= 36; i++) {
                long j = i;
                maxValueDivs[i] = UnsignedLongs.divide(-1L, j);
                maxValueMods[i] = (int) UnsignedLongs.remainder(-1L, j);
                maxSafeDigits[i] = bigInteger.toString(i).length() - 1;
            }
        }

        private ParseOverflowDetection() {
        }

        public static boolean overflowInParse(long j, int i, int i2) {
            if (j < 0) {
                return true;
            }
            long j2 = maxValueDivs[i2];
            if (j < j2) {
                return false;
            }
            if (j > j2 || i > maxValueMods[i2]) {
                return true;
            }
            return false;
        }
    }

    private UnsignedLongs() {
    }

    public static int compare(long j, long j2) {
        return Longs.compare(flip(j), flip(j2));
    }

    @CanIgnoreReturnValue
    public static long decode(String str) {
        String str2;
        ParseRequest fromString = ParseRequest.fromString(str);
        try {
            return parseUnsignedLong(fromString.rawValue, fromString.radix);
        } catch (NumberFormatException e) {
            String obfuscatedString = new ObfuscatedString(new long[]{-560023317633309992L, 1807598029533144164L, -5996437615139311415L, 9003205695161102658L}).toString();
            String valueOf = String.valueOf(str);
            if (valueOf.length() != 0) {
                str2 = obfuscatedString.concat(valueOf);
            } else {
                str2 = new String(obfuscatedString);
            }
            NumberFormatException numberFormatException = new NumberFormatException(str2);
            numberFormatException.initCause(e);
            throw numberFormatException;
        }
    }

    public static long divide(long j, long j2) {
        if (j2 < 0) {
            if (compare(j, j2) < 0) {
                return 0L;
            }
            return 1L;
        }
        if (j >= 0) {
            return j / j2;
        }
        int i = 1;
        long j3 = ((j >>> 1) / j2) << 1;
        if (compare(j - (j3 * j2), j2) < 0) {
            i = 0;
        }
        return j3 + i;
    }

    private static long flip(long j) {
        return j ^ Long.MIN_VALUE;
    }

    public static String join(String str, long... jArr) {
        Preconditions.checkNotNull(str);
        if (jArr.length == 0) {
            return new ObfuscatedString(new long[]{4111846465473017725L}).toString();
        }
        StringBuilder sb = new StringBuilder(jArr.length * 5);
        sb.append(toString(jArr[0]));
        for (int i = 1; i < jArr.length; i++) {
            sb.append(str);
            sb.append(toString(jArr[i]));
        }
        return sb.toString();
    }

    public static Comparator<long[]> lexicographicalComparator() {
        return LexicographicalComparator.INSTANCE;
    }

    public static long max(long... jArr) {
        boolean z;
        if (jArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        long flip = flip(jArr[0]);
        for (int i = 1; i < jArr.length; i++) {
            long flip2 = flip(jArr[i]);
            if (flip2 > flip) {
                flip = flip2;
            }
        }
        return flip(flip);
    }

    public static long min(long... jArr) {
        boolean z;
        if (jArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        long flip = flip(jArr[0]);
        for (int i = 1; i < jArr.length; i++) {
            long flip2 = flip(jArr[i]);
            if (flip2 < flip) {
                flip = flip2;
            }
        }
        return flip(flip);
    }

    @CanIgnoreReturnValue
    public static long parseUnsignedLong(String str) {
        return parseUnsignedLong(str, 10);
    }

    public static long remainder(long j, long j2) {
        if (j2 < 0) {
            if (compare(j, j2) < 0) {
                return j;
            }
            return j - j2;
        }
        if (j >= 0) {
            return j % j2;
        }
        long j3 = j - ((((j >>> 1) / j2) << 1) * j2);
        if (compare(j3, j2) < 0) {
            j2 = 0;
        }
        return j3 - j2;
    }

    public static void sort(long[] jArr) {
        Preconditions.checkNotNull(jArr);
        sort(jArr, 0, jArr.length);
    }

    public static void sortDescending(long[] jArr) {
        Preconditions.checkNotNull(jArr);
        sortDescending(jArr, 0, jArr.length);
    }

    public static String toString(long j) {
        return toString(j, 10);
    }

    @CanIgnoreReturnValue
    public static long parseUnsignedLong(String str, int i) {
        Preconditions.checkNotNull(str);
        if (str.length() == 0) {
            throw new NumberFormatException(new ObfuscatedString(new long[]{7337918956304621491L, 8048108890409654625L, 638394262022368328L}).toString());
        }
        if (i >= 2 && i <= 36) {
            int i2 = ParseOverflowDetection.maxSafeDigits[i] - 1;
            long j = 0;
            for (int i3 = 0; i3 < str.length(); i3++) {
                int digit = Character.digit(str.charAt(i3), i);
                if (digit != -1) {
                    if (i3 > i2 && ParseOverflowDetection.overflowInParse(j, digit, i)) {
                        String obfuscatedString = new ObfuscatedString(new long[]{5261812694162833275L, -8666266823860384466L, -4342338859978511980L, -7908061113315229616L, 3584682854800515395L}).toString();
                        throw new NumberFormatException(str.length() != 0 ? obfuscatedString.concat(str) : new String(obfuscatedString));
                    }
                    j = (j * i) + digit;
                } else {
                    throw new NumberFormatException(str);
                }
            }
            return j;
        }
        throw new NumberFormatException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{7699739136857678196L, 3537652493179376852L, -1024733329572619747L}), new StringBuilder(26), i));
    }

    public static String toString(long j, int i) {
        long divide;
        int i2;
        Preconditions.checkArgument(i >= 2 && i <= 36, new ObfuscatedString(new long[]{-2866331602512991489L, 3436060607692902057L, 6390017514778854639L, -2229094505963521163L, 7190125332872868088L, -8035077847538856094L, 8008154997631998519L, 4855480345156744035L, 294957538968927814L, -5563883568298733811L}).toString(), i);
        if (j == 0) {
            return new ObfuscatedString(new long[]{6301632169823560723L, -1814669385591421172L}).toString();
        }
        if (j > 0) {
            return Long.toString(j, i);
        }
        char[] cArr = new char[64];
        int i3 = i - 1;
        if ((i & i3) == 0) {
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
            i2 = 64;
            do {
                i2--;
                cArr[i2] = Character.forDigit(((int) j) & i3, i);
                j >>>= numberOfTrailingZeros;
            } while (j != 0);
        } else {
            if ((i & 1) == 0) {
                divide = (j >>> 1) / (i >>> 1);
            } else {
                divide = divide(j, i);
            }
            long j2 = i;
            cArr[63] = Character.forDigit((int) (j - (divide * j2)), i);
            i2 = 63;
            while (divide > 0) {
                i2--;
                cArr[i2] = Character.forDigit((int) (divide % j2), i);
                divide /= j2;
            }
        }
        return new String(cArr, i2, 64 - i2);
    }

    public static void sort(long[] jArr, int i, int i2) {
        Preconditions.checkNotNull(jArr);
        Preconditions.checkPositionIndexes(i, i2, jArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            jArr[i3] = flip(jArr[i3]);
        }
        Arrays.sort(jArr, i, i2);
        while (i < i2) {
            jArr[i] = flip(jArr[i]);
            i++;
        }
    }

    public static void sortDescending(long[] jArr, int i, int i2) {
        Preconditions.checkNotNull(jArr);
        Preconditions.checkPositionIndexes(i, i2, jArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            jArr[i3] = Long.MAX_VALUE ^ jArr[i3];
        }
        Arrays.sort(jArr, i, i2);
        while (i < i2) {
            jArr[i] = jArr[i] ^ Long.MAX_VALUE;
            i++;
        }
    }
}
