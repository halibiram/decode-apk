package com.google.zxing.pdf417;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.pdf417.encoder.Compaction;
import com.google.zxing.pdf417.encoder.Dimensions;
import com.google.zxing.pdf417.encoder.PDF417;
import com.panda912.muddy.ObfuscatedString;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Map;

/* loaded from: classes3.dex */
public final class PDF417Writer implements Writer {
    private static final int DEFAULT_ERROR_CORRECTION_LEVEL = 2;
    private static final int WHITE_SPACE = 30;

    private static BitMatrix bitMatrixFromBitArray(byte[][] bArr, int i) {
        int i2 = i * 2;
        BitMatrix bitMatrix = new BitMatrix(bArr[0].length + i2, bArr.length + i2);
        bitMatrix.clear();
        int height = (bitMatrix.getHeight() - i) - 1;
        int i3 = 0;
        while (i3 < bArr.length) {
            byte[] bArr2 = bArr[i3];
            for (int i4 = 0; i4 < bArr[0].length; i4++) {
                if (bArr2[i4] == 1) {
                    bitMatrix.set(i4 + i, height);
                }
            }
            i3++;
            height--;
        }
        return bitMatrix;
    }

    private static BitMatrix bitMatrixFromEncoder(PDF417 pdf417, String str, int i, int i2, int i3, int i4, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        pdf417.generateBarcodeLogic(str, i, z);
        byte[][] scaledMatrix = pdf417.getBarcodeMatrix().getScaledMatrix(1, 4);
        if (i3 > i2) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (scaledMatrix[0].length < scaledMatrix.length) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (z2 != z3) {
            scaledMatrix = rotateArray(scaledMatrix);
            z4 = true;
        } else {
            z4 = false;
        }
        int min = Math.min(i2 / scaledMatrix[0].length, i3 / scaledMatrix.length);
        if (min > 1) {
            byte[][] scaledMatrix2 = pdf417.getBarcodeMatrix().getScaledMatrix(min, min * 4);
            if (z4) {
                scaledMatrix2 = rotateArray(scaledMatrix2);
            }
            return bitMatrixFromBitArray(scaledMatrix2, i4);
        }
        return bitMatrixFromBitArray(scaledMatrix, i4);
    }

    private static byte[][] rotateArray(byte[][] bArr) {
        byte[][] bArr2 = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, bArr[0].length, bArr.length);
        for (int i = 0; i < bArr.length; i++) {
            int length = (bArr.length - i) - 1;
            for (int i2 = 0; i2 < bArr[0].length; i2++) {
                bArr2[i2][length] = bArr[i][i2];
            }
        }
        return bArr2;
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        int i3;
        int i4;
        boolean z;
        if (barcodeFormat == BarcodeFormat.PDF_417) {
            PDF417 pdf417 = new PDF417();
            boolean z2 = false;
            if (map != null) {
                EncodeHintType encodeHintType = EncodeHintType.PDF417_COMPACT;
                if (map.containsKey(encodeHintType)) {
                    pdf417.setCompact(Boolean.parseBoolean(map.get(encodeHintType).toString()));
                }
                EncodeHintType encodeHintType2 = EncodeHintType.PDF417_COMPACTION;
                if (map.containsKey(encodeHintType2)) {
                    pdf417.setCompaction(Compaction.valueOf(map.get(encodeHintType2).toString()));
                }
                EncodeHintType encodeHintType3 = EncodeHintType.PDF417_DIMENSIONS;
                if (map.containsKey(encodeHintType3)) {
                    Dimensions dimensions = (Dimensions) map.get(encodeHintType3);
                    pdf417.setDimensions(dimensions.getMaxCols(), dimensions.getMinCols(), dimensions.getMaxRows(), dimensions.getMinRows());
                }
                EncodeHintType encodeHintType4 = EncodeHintType.MARGIN;
                int parseInt = map.containsKey(encodeHintType4) ? Integer.parseInt(map.get(encodeHintType4).toString()) : 30;
                EncodeHintType encodeHintType5 = EncodeHintType.ERROR_CORRECTION;
                int parseInt2 = map.containsKey(encodeHintType5) ? Integer.parseInt(map.get(encodeHintType5).toString()) : 2;
                EncodeHintType encodeHintType6 = EncodeHintType.CHARACTER_SET;
                if (map.containsKey(encodeHintType6)) {
                    pdf417.setEncoding(Charset.forName(map.get(encodeHintType6).toString()));
                }
                EncodeHintType encodeHintType7 = EncodeHintType.PDF417_AUTO_ECI;
                if (map.containsKey(encodeHintType7) && Boolean.parseBoolean(map.get(encodeHintType7).toString())) {
                    z2 = true;
                }
                z = z2;
                i4 = parseInt;
                i3 = parseInt2;
            } else {
                i3 = 2;
                i4 = 30;
                z = false;
            }
            return bitMatrixFromEncoder(pdf417, str, i3, i, i2, i4, z);
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{2016816520245569802L, -4813886428218289331L, 6356894717114819621L, -7052298559151201958L, 865068239472969869L, -9018926759062619044L}).toString() + barcodeFormat);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) {
        return encode(str, barcodeFormat, i, i2, null);
    }
}
