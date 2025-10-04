package com.google.common.collect;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Objects;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Arrays;
import javax.annotation.CheckForNull;
import kotlin.UShort;

@GwtIncompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
final class CompactHashing {
    private static final int BYTE_MASK = 255;
    private static final int BYTE_MAX_SIZE = 256;
    static final int DEFAULT_SIZE = 3;
    static final int HASH_TABLE_BITS_MASK = 31;
    private static final int HASH_TABLE_BITS_MAX_BITS = 5;
    static final int MAX_SIZE = 1073741823;
    private static final int MIN_HASH_TABLE_SIZE = 4;
    static final int MODIFICATION_COUNT_INCREMENT = 32;
    private static final int SHORT_MASK = 65535;
    private static final int SHORT_MAX_SIZE = 65536;
    static final byte UNSET = 0;

    private CompactHashing() {
    }

    public static Object createTable(int i) {
        if (i >= 2 && i <= 1073741824 && Integer.highestOneBit(i) == i) {
            if (i <= 256) {
                return new byte[i];
            }
            if (i <= 65536) {
                return new short[i];
            }
            return new int[i];
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{8851095565330813383L, -3103100421479226283L, -5098012769840619619L, -4446068796249558470L, -4623651827132063758L, 1749524538327749706L, 7029440455991263572L}), new StringBuilder(52), i));
    }

    public static int getHashPrefix(int i, int i2) {
        return i & (~i2);
    }

    public static int getNext(int i, int i2) {
        return i & i2;
    }

    public static int maskCombine(int i, int i2, int i3) {
        return (i & (~i3)) | (i2 & i3);
    }

    public static int newCapacity(int i) {
        return (i + 1) * (i < 32 ? 4 : 2);
    }

    public static int remove(@CheckForNull Object obj, @CheckForNull Object obj2, int i, Object obj3, int[] iArr, Object[] objArr, @CheckForNull Object[] objArr2) {
        int i2;
        int i3;
        int smearedHash = Hashing.smearedHash(obj);
        int i4 = smearedHash & i;
        int tableGet = tableGet(obj3, i4);
        if (tableGet == 0) {
            return -1;
        }
        int hashPrefix = getHashPrefix(smearedHash, i);
        int i5 = -1;
        while (true) {
            i2 = tableGet - 1;
            i3 = iArr[i2];
            if (getHashPrefix(i3, i) != hashPrefix || !Objects.equal(obj, objArr[i2]) || (objArr2 != null && !Objects.equal(obj2, objArr2[i2]))) {
                int next = getNext(i3, i);
                if (next == 0) {
                    return -1;
                }
                i5 = i2;
                tableGet = next;
            }
        }
        int next2 = getNext(i3, i);
        if (i5 == -1) {
            tableSet(obj3, i4, next2);
        } else {
            iArr[i5] = maskCombine(iArr[i5], next2, i);
        }
        return i2;
    }

    public static void tableClear(Object obj) {
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
    }

    public static int tableGet(Object obj, int i) {
        if (obj instanceof byte[]) {
            return ((byte[]) obj)[i] & 255;
        }
        if (obj instanceof short[]) {
            return ((short[]) obj)[i] & UShort.MAX_VALUE;
        }
        return ((int[]) obj)[i];
    }

    public static void tableSet(Object obj, int i, int i2) {
        if (obj instanceof byte[]) {
            ((byte[]) obj)[i] = (byte) i2;
        } else if (obj instanceof short[]) {
            ((short[]) obj)[i] = (short) i2;
        } else {
            ((int[]) obj)[i] = i2;
        }
    }

    public static int tableSize(int i) {
        return Math.max(4, Hashing.closedTableSize(i + 1, 1.0d));
    }
}
