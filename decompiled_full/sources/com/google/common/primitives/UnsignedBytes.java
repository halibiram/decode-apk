package com.google.common.primitives;

import com.google.common.annotations.Beta;
import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;
import java.lang.reflect.Field;
import java.nio.ByteOrder;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import java.security.PrivilegedExceptionAction;
import java.util.Arrays;
import java.util.Comparator;
import sun.misc.Unsafe;

@ElementTypesAreNonnullByDefault
@GwtIncompatible
/* loaded from: classes2.dex */
public final class UnsignedBytes {
    public static final byte MAX_POWER_OF_TWO = Byte.MIN_VALUE;
    public static final byte MAX_VALUE = -1;
    private static final int UNSIGNED_MASK = 255;

    @VisibleForTesting
    /* loaded from: classes2.dex */
    public static class LexicographicalComparatorHolder {
        static final String UNSAFE_COMPARATOR_NAME = LexicographicalComparatorHolder.class.getName().concat(new ObfuscatedString(new long[]{8640366136849449467L, 5653916368389399618L, 5387853661949622282L, -1927586762585599194L}).toString());
        static final Comparator<byte[]> BEST_COMPARATOR = getBestComparator();

        /* loaded from: classes2.dex */
        public enum PureJavaComparator implements Comparator<byte[]> {
            INSTANCE;

            @Override // java.lang.Enum
            public String toString() {
                return new ObfuscatedString(new long[]{1213248072931763317L, -3818785033042358105L, 4405170619743814524L, 6587558517842491598L, -368271258107159822L, -1498684049070691034L, -6197593711057628656L, -2440437207970644465L, 2300944028968464515L}).toString();
            }

            @Override // java.util.Comparator
            public int compare(byte[] bArr, byte[] bArr2) {
                int min = Math.min(bArr.length, bArr2.length);
                for (int i = 0; i < min; i++) {
                    int compare = UnsignedBytes.compare(bArr[i], bArr2[i]);
                    if (compare != 0) {
                        return compare;
                    }
                }
                return bArr.length - bArr2.length;
            }
        }

        @VisibleForTesting
        /* loaded from: classes2.dex */
        public enum UnsafeComparator implements Comparator<byte[]> {
            INSTANCE;

            static final boolean BIG_ENDIAN = ByteOrder.nativeOrder().equals(ByteOrder.BIG_ENDIAN);
            static final int BYTE_ARRAY_BASE_OFFSET;
            static final Unsafe theUnsafe;

            static {
                Unsafe unsafe = getUnsafe();
                theUnsafe = unsafe;
                int arrayBaseOffset = unsafe.arrayBaseOffset(byte[].class);
                BYTE_ARRAY_BASE_OFFSET = arrayBaseOffset;
                if (new ObfuscatedString(new long[]{5822491889963701746L, 9142453911155230525L}).toString().equals(System.getProperty(new ObfuscatedString(new long[]{-3795312274201644185L, -3388035305535241768L, -5133737565638573751L, -4859897805202689721L}).toString())) && arrayBaseOffset % 8 == 0 && unsafe.arrayIndexScale(byte[].class) == 1) {
                } else {
                    throw new Error();
                }
            }

            private static Unsafe getUnsafe() {
                try {
                    try {
                        return Unsafe.getUnsafe();
                    } catch (PrivilegedActionException e) {
                        throw new RuntimeException(new ObfuscatedString(new long[]{8062174457619854496L, 3472538176100790796L, -4708985743284178384L, 903765928128538425L, -6267160959552423675L}).toString(), e.getCause());
                    }
                } catch (SecurityException unused) {
                    return (Unsafe) AccessController.doPrivileged(new PrivilegedExceptionAction<Unsafe>() { // from class: com.google.common.primitives.UnsignedBytes.LexicographicalComparatorHolder.UnsafeComparator.1
                        @Override // java.security.PrivilegedExceptionAction
                        public Unsafe run() {
                            for (Field field : Unsafe.class.getDeclaredFields()) {
                                field.setAccessible(true);
                                Object obj = field.get(null);
                                if (Unsafe.class.isInstance(obj)) {
                                    return (Unsafe) Unsafe.class.cast(obj);
                                }
                            }
                            throw new NoSuchFieldError(new ObfuscatedString(new long[]{-106286410768480973L, 8223782813605317353L, 4663821652193198694L}).toString());
                        }
                    });
                }
            }

            @Override // java.lang.Enum
            public String toString() {
                return new ObfuscatedString(new long[]{-6929056390906805620L, -8664056874316364880L, 8961124114598850473L, 7606785380794235831L, 3221425596250237761L, -5252640715834333615L, 2513726146271342816L, 7464366762565362268L, 8636490061392309419L, 12709140339832519L}).toString();
            }

            @Override // java.util.Comparator
            public int compare(byte[] bArr, byte[] bArr2) {
                int min = Math.min(bArr.length, bArr2.length);
                int i = min & (-8);
                int i2 = 0;
                while (i2 < i) {
                    Unsafe unsafe = theUnsafe;
                    int i3 = BYTE_ARRAY_BASE_OFFSET;
                    long j = i2;
                    long j2 = unsafe.getLong(bArr, i3 + j);
                    long j3 = unsafe.getLong(bArr2, i3 + j);
                    if (j2 != j3) {
                        if (BIG_ENDIAN) {
                            return UnsignedLongs.compare(j2, j3);
                        }
                        int numberOfTrailingZeros = Long.numberOfTrailingZeros(j2 ^ j3) & (-8);
                        return ((int) ((j2 >>> numberOfTrailingZeros) & 255)) - ((int) ((j3 >>> numberOfTrailingZeros) & 255));
                    }
                    i2 += 8;
                }
                while (i2 < min) {
                    int compare = UnsignedBytes.compare(bArr[i2], bArr2[i2]);
                    if (compare != 0) {
                        return compare;
                    }
                    i2++;
                }
                return bArr.length - bArr2.length;
            }
        }

        public static Comparator<byte[]> getBestComparator() {
            try {
                Object[] enumConstants = Class.forName(UNSAFE_COMPARATOR_NAME).getEnumConstants();
                Objects.requireNonNull(enumConstants);
                return (Comparator) enumConstants[0];
            } catch (Throwable unused) {
                return UnsignedBytes.lexicographicalComparatorJavaImpl();
            }
        }
    }

    private UnsignedBytes() {
    }

    @CanIgnoreReturnValue
    public static byte checkedCast(long j) {
        boolean z;
        if ((j >> 8) == 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{7383297224471109405L, 175492673198123153L, -1974675867855022346L}).toString(), j);
        return (byte) j;
    }

    public static int compare(byte b, byte b2) {
        return toInt(b) - toInt(b2);
    }

    private static byte flip(byte b) {
        return (byte) (b ^ 128);
    }

    public static String join(String str, byte... bArr) {
        Preconditions.checkNotNull(str);
        if (bArr.length == 0) {
            return new ObfuscatedString(new long[]{-267846428590830417L}).toString();
        }
        StringBuilder sb = new StringBuilder((str.length() + 3) * bArr.length);
        sb.append(toInt(bArr[0]));
        for (int i = 1; i < bArr.length; i++) {
            sb.append(str);
            sb.append(toString(bArr[i]));
        }
        return sb.toString();
    }

    public static Comparator<byte[]> lexicographicalComparator() {
        return LexicographicalComparatorHolder.BEST_COMPARATOR;
    }

    @VisibleForTesting
    public static Comparator<byte[]> lexicographicalComparatorJavaImpl() {
        return LexicographicalComparatorHolder.PureJavaComparator.INSTANCE;
    }

    public static byte max(byte... bArr) {
        boolean z;
        if (bArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        int i = toInt(bArr[0]);
        for (int i2 = 1; i2 < bArr.length; i2++) {
            int i3 = toInt(bArr[i2]);
            if (i3 > i) {
                i = i3;
            }
        }
        return (byte) i;
    }

    public static byte min(byte... bArr) {
        boolean z;
        if (bArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z);
        int i = toInt(bArr[0]);
        for (int i2 = 1; i2 < bArr.length; i2++) {
            int i3 = toInt(bArr[i2]);
            if (i3 < i) {
                i = i3;
            }
        }
        return (byte) i;
    }

    @CanIgnoreReturnValue
    @Beta
    public static byte parseUnsignedByte(String str) {
        return parseUnsignedByte(str, 10);
    }

    public static byte saturatedCast(long j) {
        if (j > toInt((byte) -1)) {
            return (byte) -1;
        }
        if (j < 0) {
            return (byte) 0;
        }
        return (byte) j;
    }

    public static void sort(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        sort(bArr, 0, bArr.length);
    }

    public static void sortDescending(byte[] bArr) {
        Preconditions.checkNotNull(bArr);
        sortDescending(bArr, 0, bArr.length);
    }

    public static int toInt(byte b) {
        return b & 255;
    }

    @Beta
    public static String toString(byte b) {
        return toString(b, 10);
    }

    @CanIgnoreReturnValue
    @Beta
    public static byte parseUnsignedByte(String str, int i) {
        int parseInt = Integer.parseInt((String) Preconditions.checkNotNull(str), i);
        if ((parseInt >> 8) == 0) {
            return (byte) parseInt;
        }
        throw new NumberFormatException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-519310426754677919L, -3468695145995636559L, 7874364046967326870L}), new StringBuilder(25), parseInt));
    }

    @Beta
    public static String toString(byte b, int i) {
        Preconditions.checkArgument(i >= 2 && i <= 36, new ObfuscatedString(new long[]{-1413884221509349260L, -6670253724288230730L, 6544882912901214993L, 3017517160645337945L, -527602666284068698L, 2087252504231603408L, -5480224677562587989L, -5649727256432016525L, 7918008721552268409L, -3914554411236652296L}).toString(), i);
        return Integer.toString(toInt(b), i);
    }

    public static void sort(byte[] bArr, int i, int i2) {
        Preconditions.checkNotNull(bArr);
        Preconditions.checkPositionIndexes(i, i2, bArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            bArr[i3] = flip(bArr[i3]);
        }
        Arrays.sort(bArr, i, i2);
        while (i < i2) {
            bArr[i] = flip(bArr[i]);
            i++;
        }
    }

    public static void sortDescending(byte[] bArr, int i, int i2) {
        Preconditions.checkNotNull(bArr);
        Preconditions.checkPositionIndexes(i, i2, bArr.length);
        for (int i3 = i; i3 < i2; i3++) {
            bArr[i3] = (byte) (bArr[i3] ^ Byte.MAX_VALUE);
        }
        Arrays.sort(bArr, i, i2);
        while (i < i2) {
            bArr[i] = (byte) (bArr[i] ^ Byte.MAX_VALUE);
            i++;
        }
    }
}
