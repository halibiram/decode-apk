package com.google.zxing.common;

import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class BitArray implements Cloneable {
    private static final int[] EMPTY_BITS = new int[0];
    private static final float LOAD_FACTOR = 0.75f;
    private int[] bits;
    private int size;

    public BitArray() {
        this.size = 0;
        this.bits = EMPTY_BITS;
    }

    private void ensureCapacity(int i) {
        if (i > this.bits.length * 32) {
            int[] makeArray = makeArray((int) Math.ceil(i / 0.75f));
            int[] iArr = this.bits;
            System.arraycopy(iArr, 0, makeArray, 0, iArr.length);
            this.bits = makeArray;
        }
    }

    private static int[] makeArray(int i) {
        return new int[(i + 31) / 32];
    }

    public void appendBit(boolean z) {
        ensureCapacity(this.size + 1);
        if (z) {
            int[] iArr = this.bits;
            int i = this.size;
            int i2 = i / 32;
            iArr[i2] = (1 << (i & 31)) | iArr[i2];
        }
        this.size++;
    }

    public void appendBitArray(BitArray bitArray) {
        int i = bitArray.size;
        ensureCapacity(this.size + i);
        for (int i2 = 0; i2 < i; i2++) {
            appendBit(bitArray.get(i2));
        }
    }

    public void appendBits(int i, int i2) {
        if (i2 >= 0 && i2 <= 32) {
            int i3 = this.size;
            ensureCapacity(i3 + i2);
            for (int i4 = i2 - 1; i4 >= 0; i4--) {
                if (((1 << i4) & i) != 0) {
                    int[] iArr = this.bits;
                    int i5 = i3 / 32;
                    iArr[i5] = iArr[i5] | (1 << (i3 & 31));
                }
                i3++;
            }
            this.size = i3;
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{2630059309536129982L, 2626074996520032801L, -4484594580905088960L, 6047427063950440559L, 3503147169644542419L, 8423600693990241891L}).toString());
    }

    public void clear() {
        int length = this.bits.length;
        for (int i = 0; i < length; i++) {
            this.bits[i] = 0;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BitArray)) {
            return false;
        }
        BitArray bitArray = (BitArray) obj;
        if (this.size != bitArray.size || !Arrays.equals(this.bits, bitArray.bits)) {
            return false;
        }
        return true;
    }

    public void flip(int i) {
        int[] iArr = this.bits;
        int i2 = i / 32;
        iArr[i2] = (1 << (i & 31)) ^ iArr[i2];
    }

    public boolean get(int i) {
        if (((1 << (i & 31)) & this.bits[i / 32]) != 0) {
            return true;
        }
        return false;
    }

    public int[] getBitArray() {
        return this.bits;
    }

    public int getNextSet(int i) {
        int i2 = this.size;
        if (i >= i2) {
            return i2;
        }
        int i3 = i / 32;
        int i4 = (-(1 << (i & 31))) & this.bits[i3];
        while (i4 == 0) {
            i3++;
            int[] iArr = this.bits;
            if (i3 == iArr.length) {
                return this.size;
            }
            i4 = iArr[i3];
        }
        return Math.min(Integer.numberOfTrailingZeros(i4) + (i3 * 32), this.size);
    }

    public int getNextUnset(int i) {
        int i2 = this.size;
        if (i >= i2) {
            return i2;
        }
        int i3 = i / 32;
        int i4 = (-(1 << (i & 31))) & (~this.bits[i3]);
        while (i4 == 0) {
            i3++;
            int[] iArr = this.bits;
            if (i3 == iArr.length) {
                return this.size;
            }
            i4 = ~iArr[i3];
        }
        return Math.min(Integer.numberOfTrailingZeros(i4) + (i3 * 32), this.size);
    }

    public int getSize() {
        return this.size;
    }

    public int getSizeInBytes() {
        return (this.size + 7) / 8;
    }

    public int hashCode() {
        return Arrays.hashCode(this.bits) + (this.size * 31);
    }

    public boolean isRange(int i, int i2, boolean z) {
        int i3;
        if (i2 >= i && i >= 0 && i2 <= this.size) {
            if (i2 == i) {
                return true;
            }
            int i4 = i2 - 1;
            int i5 = i / 32;
            int i6 = i4 / 32;
            for (int i7 = i5; i7 <= i6; i7++) {
                int i8 = 31;
                if (i7 > i5) {
                    i3 = 0;
                } else {
                    i3 = i & 31;
                }
                if (i7 >= i6) {
                    i8 = 31 & i4;
                }
                int i9 = (2 << i8) - (1 << i3);
                int i10 = this.bits[i7] & i9;
                if (!z) {
                    i9 = 0;
                }
                if (i10 != i9) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalArgumentException();
    }

    public void reverse() {
        int[] iArr = new int[this.bits.length];
        int i = (this.size - 1) / 32;
        int i2 = i + 1;
        for (int i3 = 0; i3 < i2; i3++) {
            iArr[i - i3] = Integer.reverse(this.bits[i3]);
        }
        int i4 = this.size;
        int i5 = i2 * 32;
        if (i4 != i5) {
            int i6 = i5 - i4;
            int i7 = iArr[0] >>> i6;
            for (int i8 = 1; i8 < i2; i8++) {
                int i9 = iArr[i8];
                iArr[i8 - 1] = i7 | (i9 << (32 - i6));
                i7 = i9 >>> i6;
            }
            iArr[i] = i7;
        }
        this.bits = iArr;
    }

    public void set(int i) {
        int[] iArr = this.bits;
        int i2 = i / 32;
        iArr[i2] = (1 << (i & 31)) | iArr[i2];
    }

    public void setBulk(int i, int i2) {
        this.bits[i / 32] = i2;
    }

    public void setRange(int i, int i2) {
        int i3;
        if (i2 >= i && i >= 0 && i2 <= this.size) {
            if (i2 == i) {
                return;
            }
            int i4 = i2 - 1;
            int i5 = i / 32;
            int i6 = i4 / 32;
            for (int i7 = i5; i7 <= i6; i7++) {
                int i8 = 31;
                if (i7 > i5) {
                    i3 = 0;
                } else {
                    i3 = i & 31;
                }
                if (i7 >= i6) {
                    i8 = 31 & i4;
                }
                int i9 = (2 << i8) - (1 << i3);
                int[] iArr = this.bits;
                iArr[i7] = i9 | iArr[i7];
            }
            return;
        }
        throw new IllegalArgumentException();
    }

    public void toBytes(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < 8; i6++) {
                if (get(i)) {
                    i5 |= 1 << (7 - i6);
                }
                i++;
            }
            bArr[i2 + i4] = (byte) i5;
        }
    }

    public String toString() {
        char c;
        int i = this.size;
        StringBuilder sb = new StringBuilder((i / 8) + i + 1);
        for (int i2 = 0; i2 < this.size; i2++) {
            if ((i2 & 7) == 0) {
                sb.append(' ');
            }
            if (get(i2)) {
                c = 'X';
            } else {
                c = '.';
            }
            sb.append(c);
        }
        return sb.toString();
    }

    public void xor(BitArray bitArray) {
        if (this.size == bitArray.size) {
            int i = 0;
            while (true) {
                int[] iArr = this.bits;
                if (i < iArr.length) {
                    iArr[i] = iArr[i] ^ bitArray.bits[i];
                    i++;
                } else {
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-5364557678716179198L, 1201183528076124197L, -2290189851896503407L, -675571390456832651L}).toString());
        }
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BitArray m1324clone() {
        return new BitArray((int[]) this.bits.clone(), this.size);
    }

    public BitArray(int i) {
        this.size = i;
        this.bits = makeArray(i);
    }

    public BitArray(int[] iArr, int i) {
        this.bits = iArr;
        this.size = i;
    }
}
