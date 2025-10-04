package com.google.zxing.common;

import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class BitMatrix implements Cloneable {
    private int[] bits;
    private int height;
    private int rowSize;
    private int width;

    public BitMatrix(int i) {
        this(i, i);
    }

    private String buildToString(String str, String str2, String str3) {
        String str4;
        StringBuilder sb = new StringBuilder((this.width + 1) * this.height);
        for (int i = 0; i < this.height; i++) {
            for (int i2 = 0; i2 < this.width; i2++) {
                if (get(i2, i)) {
                    str4 = str;
                } else {
                    str4 = str2;
                }
                sb.append(str4);
            }
            sb.append(str3);
        }
        return sb.toString();
    }

    public static BitMatrix parse(boolean[][] zArr) {
        int length = zArr.length;
        int length2 = zArr[0].length;
        BitMatrix bitMatrix = new BitMatrix(length2, length);
        for (int i = 0; i < length; i++) {
            boolean[] zArr2 = zArr[i];
            for (int i2 = 0; i2 < length2; i2++) {
                if (zArr2[i2]) {
                    bitMatrix.set(i2, i);
                }
            }
        }
        return bitMatrix;
    }

    public void clear() {
        int length = this.bits.length;
        for (int i = 0; i < length; i++) {
            this.bits[i] = 0;
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BitMatrix)) {
            return false;
        }
        BitMatrix bitMatrix = (BitMatrix) obj;
        if (this.width != bitMatrix.width || this.height != bitMatrix.height || this.rowSize != bitMatrix.rowSize || !Arrays.equals(this.bits, bitMatrix.bits)) {
            return false;
        }
        return true;
    }

    public void flip(int i, int i2) {
        int i3 = (i / 32) + (i2 * this.rowSize);
        int[] iArr = this.bits;
        iArr[i3] = (1 << (i & 31)) ^ iArr[i3];
    }

    public boolean get(int i, int i2) {
        if (((this.bits[(i / 32) + (i2 * this.rowSize)] >>> (i & 31)) & 1) != 0) {
            return true;
        }
        return false;
    }

    public int[] getBottomRightOnBit() {
        int length = this.bits.length - 1;
        while (length >= 0 && this.bits[length] == 0) {
            length--;
        }
        if (length < 0) {
            return null;
        }
        int i = this.rowSize;
        int i2 = length / i;
        int i3 = (length % i) * 32;
        int i4 = 31;
        while ((this.bits[length] >>> i4) == 0) {
            i4--;
        }
        return new int[]{i3 + i4, i2};
    }

    public int[] getEnclosingRectangle() {
        int i = this.width;
        int i2 = this.height;
        int i3 = -1;
        int i4 = -1;
        for (int i5 = 0; i5 < this.height; i5++) {
            int i6 = 0;
            while (true) {
                int i7 = this.rowSize;
                if (i6 < i7) {
                    int i8 = this.bits[(i7 * i5) + i6];
                    if (i8 != 0) {
                        if (i5 < i2) {
                            i2 = i5;
                        }
                        if (i5 > i4) {
                            i4 = i5;
                        }
                        int i9 = i6 * 32;
                        if (i9 < i) {
                            int i10 = 0;
                            while ((i8 << (31 - i10)) == 0) {
                                i10++;
                            }
                            int i11 = i10 + i9;
                            if (i11 < i) {
                                i = i11;
                            }
                        }
                        if (i9 + 31 > i3) {
                            int i12 = 31;
                            while ((i8 >>> i12) == 0) {
                                i12--;
                            }
                            int i13 = i9 + i12;
                            if (i13 > i3) {
                                i3 = i13;
                            }
                        }
                    }
                    i6++;
                }
            }
        }
        if (i3 >= i && i4 >= i2) {
            return new int[]{i, i2, (i3 - i) + 1, (i4 - i2) + 1};
        }
        return null;
    }

    public int getHeight() {
        return this.height;
    }

    public BitArray getRow(int i, BitArray bitArray) {
        if (bitArray != null && bitArray.getSize() >= this.width) {
            bitArray.clear();
        } else {
            bitArray = new BitArray(this.width);
        }
        int i2 = i * this.rowSize;
        for (int i3 = 0; i3 < this.rowSize; i3++) {
            bitArray.setBulk(i3 * 32, this.bits[i2 + i3]);
        }
        return bitArray;
    }

    public int getRowSize() {
        return this.rowSize;
    }

    public int[] getTopLeftOnBit() {
        int[] iArr;
        int i = 0;
        int i2 = 0;
        while (true) {
            iArr = this.bits;
            if (i2 >= iArr.length || iArr[i2] != 0) {
                break;
            }
            i2++;
        }
        if (i2 == iArr.length) {
            return null;
        }
        int i3 = this.rowSize;
        int i4 = i2 / i3;
        int i5 = (i2 % i3) * 32;
        while ((iArr[i2] << (31 - i)) == 0) {
            i++;
        }
        return new int[]{i5 + i, i4};
    }

    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        int i = this.width;
        return Arrays.hashCode(this.bits) + (((((((i * 31) + i) * 31) + this.height) * 31) + this.rowSize) * 31);
    }

    public void rotate(int i) {
        int i2 = i % 360;
        if (i2 != 0) {
            if (i2 != 90) {
                if (i2 != 180) {
                    if (i2 == 270) {
                        rotate90();
                        rotate180();
                        return;
                    }
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{5869996948375727802L, 3438800869490044064L, 1789521550065092601L, 5555467674093573295L, 5367308407812530307L, 6027112652110377967L, 5381245279737933090L}).toString());
                }
                rotate180();
                return;
            }
            rotate90();
        }
    }

    public void rotate180() {
        BitArray bitArray = new BitArray(this.width);
        BitArray bitArray2 = new BitArray(this.width);
        int i = (this.height + 1) / 2;
        for (int i2 = 0; i2 < i; i2++) {
            bitArray = getRow(i2, bitArray);
            int i3 = (this.height - 1) - i2;
            bitArray2 = getRow(i3, bitArray2);
            bitArray.reverse();
            bitArray2.reverse();
            setRow(i2, bitArray2);
            setRow(i3, bitArray);
        }
    }

    public void rotate90() {
        int i = this.height;
        int i2 = this.width;
        int i3 = (i + 31) / 32;
        int[] iArr = new int[i3 * i2];
        for (int i4 = 0; i4 < this.height; i4++) {
            for (int i5 = 0; i5 < this.width; i5++) {
                if (((this.bits[(i5 / 32) + (this.rowSize * i4)] >>> (i5 & 31)) & 1) != 0) {
                    int i6 = (i4 / 32) + (((i2 - 1) - i5) * i3);
                    iArr[i6] = iArr[i6] | (1 << (i4 & 31));
                }
            }
        }
        this.width = i;
        this.height = i2;
        this.rowSize = i3;
        this.bits = iArr;
    }

    public void set(int i, int i2) {
        int i3 = (i / 32) + (i2 * this.rowSize);
        int[] iArr = this.bits;
        iArr[i3] = (1 << (i & 31)) | iArr[i3];
    }

    public void setRegion(int i, int i2, int i3, int i4) {
        if (i2 >= 0 && i >= 0) {
            if (i4 >= 1 && i3 >= 1) {
                int i5 = i3 + i;
                int i6 = i4 + i2;
                if (i6 <= this.height && i5 <= this.width) {
                    while (i2 < i6) {
                        int i7 = this.rowSize * i2;
                        for (int i8 = i; i8 < i5; i8++) {
                            int[] iArr = this.bits;
                            int i9 = (i8 / 32) + i7;
                            iArr[i9] = iArr[i9] | (1 << (i8 & 31));
                        }
                        i2++;
                    }
                    return;
                }
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{-7356916930811799910L, 4892698129119921946L, -5932776527803167923L, 5186908885689739212L, 3933100258162278732L, -170513719526866225L}).toString());
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-431170311844818977L, 8898307734819161713L, 7647937225957825885L, 8720168498436543571L, -9125175911696657873L, 7006469687052343699L}).toString());
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{8947522375321149618L, 892457324219900281L, 2129779320041610202L, -8983909848569604515L, -6230511693064008103L}).toString());
    }

    public void setRow(int i, BitArray bitArray) {
        int[] bitArray2 = bitArray.getBitArray();
        int[] iArr = this.bits;
        int i2 = this.rowSize;
        System.arraycopy(bitArray2, 0, iArr, i * i2, i2);
    }

    public String toString() {
        return toString(new ObfuscatedString(new long[]{4660715623258262979L, -5490208960639885093L}).toString(), new ObfuscatedString(new long[]{6796685616434021929L, -7297223308229292822L}).toString());
    }

    public void unset(int i, int i2) {
        int i3 = (i / 32) + (i2 * this.rowSize);
        int[] iArr = this.bits;
        iArr[i3] = (~(1 << (i & 31))) & iArr[i3];
    }

    public void xor(BitMatrix bitMatrix) {
        int i = this.width;
        if (i == bitMatrix.width && this.height == bitMatrix.height && this.rowSize == bitMatrix.rowSize) {
            BitArray bitArray = new BitArray(i);
            for (int i2 = 0; i2 < this.height; i2++) {
                int i3 = this.rowSize * i2;
                int[] bitArray2 = bitMatrix.getRow(i2, bitArray).getBitArray();
                for (int i4 = 0; i4 < this.rowSize; i4++) {
                    int[] iArr = this.bits;
                    int i5 = i3 + i4;
                    iArr[i5] = iArr[i5] ^ bitArray2[i4];
                }
            }
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{4479265975828822674L, -3119455223645482254L, -3804946642701318377L, 3711239884944506468L, 871407972807406201L, -5532309460598759987L}).toString());
    }

    public BitMatrix(int i, int i2) {
        if (i >= 1 && i2 >= 1) {
            this.width = i;
            this.height = i2;
            int i3 = (i + 31) / 32;
            this.rowSize = i3;
            this.bits = new int[i3 * i2];
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-7031033725219843911L, 1578334126724949548L, -7109577793975627550L, -7798748111403434794L, 468992834427753678L, -4370731172123823406L}).toString());
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public BitMatrix m1325clone() {
        return new BitMatrix(this.width, this.height, this.rowSize, (int[]) this.bits.clone());
    }

    public String toString(String str, String str2) {
        return buildToString(str, str2, new ObfuscatedString(new long[]{1912964422533016240L, -3370432550668494316L}).toString());
    }

    public void flip() {
        int length = this.bits.length;
        for (int i = 0; i < length; i++) {
            int[] iArr = this.bits;
            iArr[i] = ~iArr[i];
        }
    }

    @Deprecated
    public String toString(String str, String str2, String str3) {
        return buildToString(str, str2, str3);
    }

    public static BitMatrix parse(String str, String str2, String str3) {
        if (str != null) {
            boolean[] zArr = new boolean[str.length()];
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            int i4 = -1;
            int i5 = 0;
            while (i < str.length()) {
                if (str.charAt(i) == '\n' || str.charAt(i) == '\r') {
                    if (i2 > i3) {
                        if (i4 == -1) {
                            i4 = i2 - i3;
                        } else if (i2 - i3 != i4) {
                            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-106760525608673207L, -6771383499533560879L, -5496926479071194777L, 6510695510556843539L}).toString());
                        }
                        i5++;
                        i3 = i2;
                    }
                    i++;
                } else {
                    if (str.startsWith(str2, i)) {
                        i += str2.length();
                        zArr[i2] = true;
                    } else if (str.startsWith(str3, i)) {
                        i += str3.length();
                        zArr[i2] = false;
                    } else {
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-5009923945038071669L, -7546021848469962581L, 5492218795183785109L, -3976947074841219408L, -6484228329216077058L}).toString() + str.substring(i));
                    }
                    i2++;
                }
            }
            if (i2 > i3) {
                if (i4 == -1) {
                    i4 = i2 - i3;
                } else if (i2 - i3 != i4) {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{-7011744887359447419L, -9064273315778998617L, -3525289101675265058L, 6961477109219954521L}).toString());
                }
                i5++;
            }
            BitMatrix bitMatrix = new BitMatrix(i4, i5);
            for (int i6 = 0; i6 < i2; i6++) {
                if (zArr[i6]) {
                    bitMatrix.set(i6 % i4, i6 / i4);
                }
            }
            return bitMatrix;
        }
        throw new IllegalArgumentException();
    }

    private BitMatrix(int i, int i2, int i3, int[] iArr) {
        this.width = i;
        this.height = i2;
        this.rowSize = i3;
        this.bits = iArr;
    }
}
