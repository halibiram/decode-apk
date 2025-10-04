package com.google.zxing.aztec.encoder;

import com.google.zxing.common.BitArray;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.common.reedsolomon.GenericGF;
import com.google.zxing.common.reedsolomon.ReedSolomonEncoder;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;

/* loaded from: classes3.dex */
public final class Encoder {
    public static final int DEFAULT_AZTEC_LAYERS = 0;
    public static final int DEFAULT_EC_PERCENT = 33;
    private static final int MAX_NB_BITS = 32;
    private static final int MAX_NB_BITS_COMPACT = 4;
    private static final int[] WORD_SIZE = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    private Encoder() {
    }

    private static int[] bitsToWords(BitArray bitArray, int i, int i2) {
        int i3;
        int[] iArr = new int[i2];
        int size = bitArray.getSize() / i;
        for (int i4 = 0; i4 < size; i4++) {
            int i5 = 0;
            for (int i6 = 0; i6 < i; i6++) {
                if (bitArray.get((i4 * i) + i6)) {
                    i3 = 1 << ((i - i6) - 1);
                } else {
                    i3 = 0;
                }
                i5 |= i3;
            }
            iArr[i4] = i5;
        }
        return iArr;
    }

    private static void drawBullsEye(BitMatrix bitMatrix, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3 += 2) {
            int i4 = i - i3;
            int i5 = i4;
            while (true) {
                int i6 = i + i3;
                if (i5 <= i6) {
                    bitMatrix.set(i5, i4);
                    bitMatrix.set(i5, i6);
                    bitMatrix.set(i4, i5);
                    bitMatrix.set(i6, i5);
                    i5++;
                }
            }
        }
        int i7 = i - i2;
        bitMatrix.set(i7, i7);
        int i8 = i7 + 1;
        bitMatrix.set(i8, i7);
        bitMatrix.set(i7, i8);
        int i9 = i + i2;
        bitMatrix.set(i9, i7);
        bitMatrix.set(i9, i8);
        bitMatrix.set(i9, i9 - 1);
    }

    private static void drawModeMessage(BitMatrix bitMatrix, boolean z, int i, BitArray bitArray) {
        int i2 = i / 2;
        int i3 = 0;
        if (z) {
            while (i3 < 7) {
                int i4 = (i2 - 3) + i3;
                if (bitArray.get(i3)) {
                    bitMatrix.set(i4, i2 - 5);
                }
                if (bitArray.get(i3 + 7)) {
                    bitMatrix.set(i2 + 5, i4);
                }
                if (bitArray.get(20 - i3)) {
                    bitMatrix.set(i4, i2 + 5);
                }
                if (bitArray.get(27 - i3)) {
                    bitMatrix.set(i2 - 5, i4);
                }
                i3++;
            }
            return;
        }
        while (i3 < 10) {
            int i5 = (i3 / 5) + (i2 - 5) + i3;
            if (bitArray.get(i3)) {
                bitMatrix.set(i5, i2 - 7);
            }
            if (bitArray.get(i3 + 10)) {
                bitMatrix.set(i2 + 7, i5);
            }
            if (bitArray.get(29 - i3)) {
                bitMatrix.set(i5, i2 + 7);
            }
            if (bitArray.get(39 - i3)) {
                bitMatrix.set(i2 - 7, i5);
            }
            i3++;
        }
    }

    public static AztecCode encode(String str) {
        return encode(str.getBytes(StandardCharsets.ISO_8859_1));
    }

    private static BitArray generateCheckWords(BitArray bitArray, int i, int i2) {
        int size = bitArray.getSize() / i2;
        ReedSolomonEncoder reedSolomonEncoder = new ReedSolomonEncoder(getGF(i2));
        int i3 = i / i2;
        int[] bitsToWords = bitsToWords(bitArray, i2, i3);
        reedSolomonEncoder.encode(bitsToWords, i3 - size);
        BitArray bitArray2 = new BitArray();
        bitArray2.appendBits(0, i % i2);
        for (int i4 : bitsToWords) {
            bitArray2.appendBits(i4, i2);
        }
        return bitArray2;
    }

    public static BitArray generateModeMessage(boolean z, int i, int i2) {
        BitArray bitArray = new BitArray();
        if (z) {
            bitArray.appendBits(i - 1, 2);
            bitArray.appendBits(i2 - 1, 6);
            return generateCheckWords(bitArray, 28, 4);
        }
        bitArray.appendBits(i - 1, 5);
        bitArray.appendBits(i2 - 1, 11);
        return generateCheckWords(bitArray, 40, 4);
    }

    private static GenericGF getGF(int i) {
        if (i != 4) {
            if (i != 6) {
                if (i != 8) {
                    if (i != 10) {
                        if (i == 12) {
                            return GenericGF.AZTEC_DATA_12;
                        }
                        throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{6006562500902638292L, 6147082792322723572L, -5616692727465329825L, 1546761393770749824L}), new StringBuilder(), i));
                    }
                    return GenericGF.AZTEC_DATA_10;
                }
                return GenericGF.AZTEC_DATA_8;
            }
            return GenericGF.AZTEC_DATA_6;
        }
        return GenericGF.AZTEC_PARAM;
    }

    public static BitArray stuffBits(BitArray bitArray, int i) {
        BitArray bitArray2 = new BitArray();
        int size = bitArray.getSize();
        int i2 = (1 << i) - 2;
        int i3 = 0;
        while (i3 < size) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                int i6 = i3 + i5;
                if (i6 >= size || bitArray.get(i6)) {
                    i4 |= 1 << ((i - 1) - i5);
                }
            }
            int i7 = i4 & i2;
            if (i7 == i2) {
                bitArray2.appendBits(i7, i);
            } else if (i7 == 0) {
                bitArray2.appendBits(i4 | 1, i);
            } else {
                bitArray2.appendBits(i4, i);
                i3 += i;
            }
            i3--;
            i3 += i;
        }
        return bitArray2;
    }

    private static int totalBitsInLayer(int i, boolean z) {
        return ((i * 16) + (z ? 88 : 112)) * i;
    }

    public static AztecCode encode(String str, int i, int i2) {
        return encode(str.getBytes(StandardCharsets.ISO_8859_1), i, i2, (Charset) null);
    }

    public static AztecCode encode(String str, int i, int i2, Charset charset) {
        return encode(str.getBytes(charset != null ? charset : StandardCharsets.ISO_8859_1), i, i2, charset);
    }

    public static AztecCode encode(byte[] bArr) {
        return encode(bArr, 33, 0, (Charset) null);
    }

    public static AztecCode encode(byte[] bArr, int i, int i2) {
        return encode(bArr, i, i2, (Charset) null);
    }

    public static AztecCode encode(byte[] bArr, int i, int i2, Charset charset) {
        int i3;
        BitArray bitArray;
        int i4;
        boolean z;
        int i5;
        int i6;
        int i7 = 2;
        BitArray encode = new HighLevelEncoder(bArr, charset).encode();
        int size = ((encode.getSize() * i) / 100) + 11;
        int size2 = encode.getSize() + size;
        int i8 = 1;
        if (i2 != 0) {
            z = i2 < 0;
            i5 = Math.abs(i2);
            if (i5 <= (z ? 4 : 32)) {
                i3 = totalBitsInLayer(i5, z);
                i4 = WORD_SIZE[i5];
                int i9 = i3 - (i3 % i4);
                bitArray = stuffBits(encode, i4);
                if (bitArray.getSize() + size <= i9) {
                    if (z && bitArray.getSize() > i4 * 64) {
                        throw new IllegalArgumentException(new ObfuscatedString(new long[]{1300342445442137644L, -8127111065041659838L, 1107074222807366050L, 6346751250339157605L, -5710359403761497377L, 5863997509826927703L}).toString());
                    }
                } else {
                    throw new IllegalArgumentException(new ObfuscatedString(new long[]{4863107109279103051L, -4406199444592799016L, -5298247329498407529L, 1552222459682875961L, -4608074721916155821L, -8161674853088547087L}).toString());
                }
            } else {
                throw new IllegalArgumentException(String.format(new ObfuscatedString(new long[]{1961962357228273108L, 248581866023241548L, -5886518683524388151L, 4774570333261062793L, 1171644614609409611L}).toString(), Integer.valueOf(i2)));
            }
        } else {
            BitArray bitArray2 = null;
            int i10 = 0;
            int i11 = 0;
            while (i10 <= r7) {
                boolean z2 = i10 <= 3;
                int i12 = z2 ? i10 + 1 : i10;
                int i13 = totalBitsInLayer(i12, z2);
                if (size2 <= i13) {
                    if (bitArray2 == null || i11 != WORD_SIZE[i12]) {
                        int i14 = WORD_SIZE[i12];
                        bitArray2 = stuffBits(encode, i14);
                        i11 = i14;
                    }
                    int i15 = i13 - (i13 % i11);
                    if ((!z2 || bitArray2.getSize() <= i11 * 64) && bitArray2.getSize() + size <= i15) {
                        i3 = i13;
                        bitArray = bitArray2;
                        i4 = i11;
                        z = z2;
                        i5 = i12;
                    }
                }
                i10++;
                i7 = 2;
                r7 = 32;
                i8 = 1;
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-3779316139930035644L, -92301753514060031L, -5838233140813236651L, -891870039788086968L, -3374694892484816770L}).toString());
        }
        BitArray generateCheckWords = generateCheckWords(bitArray, i3, i4);
        int size3 = bitArray.getSize() / i4;
        BitArray generateModeMessage = generateModeMessage(z, i5, size3);
        int i16 = (i5 * 4) + (z ? 11 : 14);
        int[] iArr = new int[i16];
        if (z) {
            for (int i17 = 0; i17 < i16; i17 += i8) {
                iArr[i17] = i17;
            }
            i6 = i16;
        } else {
            int i18 = i16 / 2;
            i6 = (((i18 - 1) / 15) * 2) + i16 + 1;
            int i19 = i6 / 2;
            for (int i20 = 0; i20 < i18; i20 += i8) {
                iArr[(i18 - i20) - 1] = (i19 - r15) - 1;
                iArr[i18 + i20] = (i20 / 15) + i20 + i19 + i8;
            }
        }
        BitMatrix bitMatrix = new BitMatrix(i6);
        int i21 = 0;
        int i22 = 0;
        while (i21 < i5) {
            int i23 = ((i5 - i21) * 4) + (z ? 9 : 12);
            int i24 = 0;
            while (i24 < i23) {
                int i25 = i24 * 2;
                int i26 = 0;
                while (i26 < i7) {
                    if (generateCheckWords.get(i22 + i25 + i26)) {
                        int i27 = i21 * 2;
                        bitMatrix.set(iArr[i27 + i26], iArr[i27 + i24]);
                    }
                    if (generateCheckWords.get((i23 * 2) + i22 + i25 + i26)) {
                        int i28 = i21 * 2;
                        bitMatrix.set(iArr[i28 + i24], iArr[((i16 - 1) - i28) - i26]);
                    }
                    if (generateCheckWords.get((i23 * 4) + i22 + i25 + i26)) {
                        int i29 = (i16 - 1) - (i21 * 2);
                        bitMatrix.set(iArr[i29 - i26], iArr[i29 - i24]);
                    }
                    if (generateCheckWords.get((i23 * 6) + i22 + i25 + i26)) {
                        int i30 = i21 * 2;
                        bitMatrix.set(iArr[((i16 - 1) - i30) - i24], iArr[i30 + i26]);
                    }
                    i26++;
                    i7 = 2;
                }
                i24++;
                i7 = 2;
            }
            i22 += i23 * 8;
            i21++;
            i7 = 2;
        }
        drawModeMessage(bitMatrix, z, i6, generateModeMessage);
        if (z) {
            drawBullsEye(bitMatrix, i6 / 2, 5);
        } else {
            int i31 = i6 / 2;
            drawBullsEye(bitMatrix, i31, 7);
            int i32 = 0;
            int i33 = 0;
            while (i32 < (i16 / 2) - 1) {
                for (int i34 = i31 & 1; i34 < i6; i34 += 2) {
                    int i35 = i31 - i33;
                    bitMatrix.set(i35, i34);
                    int i36 = i31 + i33;
                    bitMatrix.set(i36, i34);
                    bitMatrix.set(i34, i35);
                    bitMatrix.set(i34, i36);
                }
                i32 += 15;
                i33 += 16;
            }
        }
        AztecCode aztecCode = new AztecCode();
        aztecCode.setCompact(z);
        aztecCode.setSize(i6);
        aztecCode.setLayers(i5);
        aztecCode.setCodeWords(size3);
        aztecCode.setMatrix(bitMatrix);
        return aztecCode;
    }
}
