package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.Arrays;
import java.util.Comparator;

@ElementTypesAreNonnullByDefault
@Beta
@GwtCompatible
/* loaded from: classes2.dex */
public final class UnsignedInts {
    static final long INT_MASK = 4294967295L;

    /* loaded from: classes2.dex */
    public enum LexicographicalComparator implements Comparator<int[]> {
        INSTANCE;

        @Override // java.lang.Enum
        public String toString() {
            return new ObfuscatedString(new long[]{-1811238265113694057L, 5876937113717597653L, 1620718165496018675L, 3419416250176311349L, -8746256990982128665L, 4998958859654544716L}).toString();
        }

        @Override // java.util.Comparator
        public int compare(int[] iArr, int[] iArr2) {
            int min = Math.min(iArr.length, iArr2.length);
            for (int i = 0; i < min; i++) {
                int i2 = iArr[i];
                int i3 = iArr2[i];
                if (i2 != i3) {
                    return UnsignedInts.compare(i2, i3);
                }
            }
            return iArr.length - iArr2.length;
        }
    }

    private UnsignedInts() {
    }

    public static int checkedCast(long j) {
        boolean z;
        if ((j >> 32) == 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{-8875333190586779940L, 8224324218483040082L, -4116682088757868806L}).toString(), j);
        return (int) j;
    }

    public static int compare(int i, int i2) {
        return Ints.compare(flip(i), flip(i2));
    }

    @CanIgnoreReturnValue
    public static int decode(String str) {
        String str2;
        ParseRequest fromString = ParseRequest.fromString(str);
        try {
            return parseUnsignedInt(fromString.rawValue, fromString.radix);
        } catch (NumberFormatException e) {
            String obfuscatedString = new ObfuscatedString(new long[]{5996227211976060991L, 6986505441244586107L, -4155116898185724602L, 2109786530241375743L}).toString();
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

    public static int divide(int i, int i2) {
        return (int) (toLong(i) / toLong(i2));
    }

    public static int flip(int i) {
        return i ^ Integer.MIN_VALUE;
    }

    public static String join(String str, int... iArr) {
        Preconditions.checkNotNull(str);
        if (iArr.length == 0) {
            return new ObfuscatedString(new long[]{-67935070809341602L}).toString();
        }
        StringBuilder sb = new StringBuilder(iArr.length * 5);
        sb.append(toString(iArr[0]));
        for (int i = 1; i < iArr.length; i++) {
            sb.append(str);
            sb.append(toString(iArr[i]));
        }
        return sb.toString();
    }

    public static Comparator<int[]> lexicographicalComparator() {
        return LexicographicalComparator.INSTANCE;
    }

    public static int max(int... iArr) {
        boolean z;
        if (iArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        int flip = flip(iArr[0]);
        for (int i = 1; i < iArr.length; i++) {
            int flip2 = flip(iArr[i]);
            if (flip2 > flip) {
                flip = flip2;
            }
        }
        return flip(flip);
    }

    public static int min(int... iArr) {
        boolean z;
        if (iArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        int flip = flip(iArr[0]);
        for (int i = 1; i < iArr.length; i++) {
            int flip2 = flip(iArr[i]);
            if (flip2 < flip) {
                flip = flip2;
            }
        }
        return flip(flip);
    }

    @CanIgnoreReturnValue
    public static int parseUnsignedInt(String str) {
        return parseUnsignedInt(str, 10);
    }

    public static int remainder(int i, int i2) {
        return (int) (toLong(i) % toLong(i2));
    }

    public static int saturatedCast(long j) {
        if (j <= 0) {
            return 0;
        }
        if (j >= 4294967296L) {
            return -1;
        }
        return (int) j;
    }

    public static void sort(int[] iArr) {
        Preconditions.checkNotNull(iArr);
        sort(iArr, 0, iArr.length);
    }

    public static void sortDescending(int[] iArr) {
        Preconditions.checkNotNull(iArr);
        sortDescending(iArr, 0, iArr.length);
    }

    public static long toLong(int i) {
        return i & INT_MASK;
    }

    public static String toString(int i) {
        return toString(i, 10);
    }

    @CanIgnoreReturnValue
    public static int parseUnsignedInt(String str, int i) {
        Preconditions.checkNotNull(str);
        long parseLong = Long.parseLong(str, i);
        if ((INT_MASK & parseLong) == parseLong) {
            return (int) parseLong;
        }
        StringBuilder sb = new StringBuilder(AbstractC1320xaf50c7e8.m4356x1378447b(69, str));
        sb.append(new ObfuscatedString(new long[]{-4630145061391708301L, -1916793340978618971L}).toString());
        sb.append(str);
        sb.append(new ObfuscatedString(new long[]{-3943204037122210636L, 5186303042778105981L, -4727627800141558194L}).toString());
        sb.append(i);
        throw new NumberFormatException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-196506316827371302L, 8765432853466893549L, 244264260193974032L, -3668259308219105607L, 752864199638965641L, -4415809247439853029L, 740093788897078869L}), sb));
    }

    public static String toString(int i, int i2) {
        return Long.toString(i & INT_MASK, i2);
    }

    public static void sort(int[] iArr, int i, int i2) {
        Preconditions.checkNotNull(iArr);
        Preconditions.checkPositionIndexes(i, i2, iArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            iArr[i3] = flip(iArr[i3]);
        }
        Arrays.sort(iArr, i, i2);
        while (i < i2) {
            iArr[i] = flip(iArr[i]);
            i++;
        }
    }

    public static void sortDescending(int[] iArr, int i, int i2) {
        Preconditions.checkNotNull(iArr);
        Preconditions.checkPositionIndexes(i, i2, iArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            iArr[i3] = Integer.MAX_VALUE ^ iArr[i3];
        }
        Arrays.sort(iArr, i, i2);
        while (i < i2) {
            iArr[i] = iArr[i] ^ Integer.MAX_VALUE;
            i++;
        }
    }
}
