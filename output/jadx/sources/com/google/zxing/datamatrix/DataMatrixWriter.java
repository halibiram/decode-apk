package com.google.zxing.datamatrix;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Dimension;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.datamatrix.encoder.DefaultPlacement;
import com.google.zxing.datamatrix.encoder.ErrorCorrection;
import com.google.zxing.datamatrix.encoder.HighLevelEncoder;
import com.google.zxing.datamatrix.encoder.MinimalEncoder;
import com.google.zxing.datamatrix.encoder.SymbolInfo;
import com.google.zxing.datamatrix.encoder.SymbolShapeHint;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import com.panda912.muddy.ObfuscatedString;
import java.nio.charset.Charset;
import java.util.Map;

/* loaded from: classes3.dex */
public final class DataMatrixWriter implements Writer {
    private static BitMatrix convertByteMatrixToBitMatrix(ByteMatrix byteMatrix, int i, int i2) {
        BitMatrix bitMatrix;
        int width = byteMatrix.getWidth();
        int height = byteMatrix.getHeight();
        int max = Math.max(i, width);
        int max2 = Math.max(i2, height);
        int min = Math.min(max / width, max2 / height);
        int i3 = (max - (width * min)) / 2;
        int i4 = (max2 - (height * min)) / 2;
        if (i2 >= height && i >= width) {
            bitMatrix = new BitMatrix(i, i2);
        } else {
            bitMatrix = new BitMatrix(width, height);
            i3 = 0;
            i4 = 0;
        }
        bitMatrix.clear();
        int i5 = 0;
        while (i5 < height) {
            int i6 = i3;
            int i7 = 0;
            while (i7 < width) {
                if (byteMatrix.get(i7, i5) == 1) {
                    bitMatrix.setRegion(i6, i4, min, min);
                }
                i7++;
                i6 += min;
            }
            i5++;
            i4 += min;
        }
        return bitMatrix;
    }

    private static BitMatrix encodeLowLevel(DefaultPlacement defaultPlacement, SymbolInfo symbolInfo, int i, int i2) {
        boolean z;
        boolean z2;
        int symbolDataWidth = symbolInfo.getSymbolDataWidth();
        int symbolDataHeight = symbolInfo.getSymbolDataHeight();
        ByteMatrix byteMatrix = new ByteMatrix(symbolInfo.getSymbolWidth(), symbolInfo.getSymbolHeight());
        int i3 = 0;
        for (int i4 = 0; i4 < symbolDataHeight; i4++) {
            if (i4 % symbolInfo.matrixHeight == 0) {
                int i5 = 0;
                for (int i6 = 0; i6 < symbolInfo.getSymbolWidth(); i6++) {
                    if (i6 % 2 == 0) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    byteMatrix.set(i5, i3, z2);
                    i5++;
                }
                i3++;
            }
            int i7 = 0;
            for (int i8 = 0; i8 < symbolDataWidth; i8++) {
                if (i8 % symbolInfo.matrixWidth == 0) {
                    byteMatrix.set(i7, i3, true);
                    i7++;
                }
                byteMatrix.set(i7, i3, defaultPlacement.getBit(i8, i4));
                int i9 = i7 + 1;
                int i10 = symbolInfo.matrixWidth;
                if (i8 % i10 == i10 - 1) {
                    if (i4 % 2 == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    byteMatrix.set(i9, i3, z);
                    i7 += 2;
                } else {
                    i7 = i9;
                }
            }
            int i11 = i3 + 1;
            int i12 = symbolInfo.matrixHeight;
            if (i4 % i12 == i12 - 1) {
                int i13 = 0;
                for (int i14 = 0; i14 < symbolInfo.getSymbolWidth(); i14++) {
                    byteMatrix.set(i13, i11, true);
                    i13++;
                }
                i3 += 2;
            } else {
                i3 = i11;
            }
        }
        return convertByteMatrixToBitMatrix(byteMatrix, i, i2);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) {
        return encode(str, barcodeFormat, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        Dimension dimension;
        Dimension dimension2;
        String encodeHighLevel;
        if (!str.isEmpty()) {
            if (barcodeFormat != BarcodeFormat.DATA_MATRIX) {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{-4105253785691776273L, 8961783671931673158L, -5455819128375585512L, 2279892121605072359L, 8299379525049396938L, -8783377815228968104L}).toString() + barcodeFormat);
            }
            if (i >= 0 && i2 >= 0) {
                SymbolShapeHint symbolShapeHint = SymbolShapeHint.FORCE_NONE;
                if (map != null) {
                    SymbolShapeHint symbolShapeHint2 = (SymbolShapeHint) map.get(EncodeHintType.DATA_MATRIX_SHAPE);
                    if (symbolShapeHint2 != null) {
                        symbolShapeHint = symbolShapeHint2;
                    }
                    dimension = (Dimension) map.get(EncodeHintType.MIN_SIZE);
                    if (dimension == null) {
                        dimension = null;
                    }
                    dimension2 = (Dimension) map.get(EncodeHintType.MAX_SIZE);
                    if (dimension2 == null) {
                        dimension2 = null;
                    }
                } else {
                    dimension = null;
                    dimension2 = null;
                }
                boolean z = false;
                if (map != null) {
                    EncodeHintType encodeHintType = EncodeHintType.DATA_MATRIX_COMPACT;
                    if (map.containsKey(encodeHintType) && Boolean.parseBoolean(map.get(encodeHintType).toString())) {
                        EncodeHintType encodeHintType2 = EncodeHintType.GS1_FORMAT;
                        if (map.containsKey(encodeHintType2) && Boolean.parseBoolean(map.get(encodeHintType2).toString())) {
                            z = true;
                        }
                        EncodeHintType encodeHintType3 = EncodeHintType.CHARACTER_SET;
                        encodeHighLevel = MinimalEncoder.encodeHighLevel(str, map.containsKey(encodeHintType3) ? Charset.forName(map.get(encodeHintType3).toString()) : null, z ? 29 : -1, symbolShapeHint);
                        SymbolInfo lookup = SymbolInfo.lookup(encodeHighLevel.length(), symbolShapeHint, dimension, dimension2, true);
                        DefaultPlacement defaultPlacement = new DefaultPlacement(ErrorCorrection.encodeECC200(encodeHighLevel, lookup), lookup.getSymbolDataWidth(), lookup.getSymbolDataHeight());
                        defaultPlacement.place();
                        return encodeLowLevel(defaultPlacement, lookup, i, i2);
                    }
                }
                if (map != null) {
                    EncodeHintType encodeHintType4 = EncodeHintType.FORCE_C40;
                    if (map.containsKey(encodeHintType4) && Boolean.parseBoolean(map.get(encodeHintType4).toString())) {
                        z = true;
                    }
                }
                encodeHighLevel = HighLevelEncoder.encodeHighLevel(str, symbolShapeHint, dimension, dimension2, z);
                SymbolInfo lookup2 = SymbolInfo.lookup(encodeHighLevel.length(), symbolShapeHint, dimension, dimension2, true);
                DefaultPlacement defaultPlacement2 = new DefaultPlacement(ErrorCorrection.encodeECC200(encodeHighLevel, lookup2), lookup2.getSymbolDataWidth(), lookup2.getSymbolDataHeight());
                defaultPlacement2.place();
                return encodeLowLevel(defaultPlacement2, lookup2, i, i2);
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{1610701552376436027L, 8270410529678020527L, -2509658680376090602L, 4996133450288628807L, 8067590169807854264L, 5550823723102652486L}).toString() + i + 'x' + i2);
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-1291474388034314621L, 8252370836915662274L, 7287122612369914908L, 4293647586944684135L}).toString());
    }
}
