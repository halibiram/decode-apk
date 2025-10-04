package com.google.zxing.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.encoder.ByteMatrix;
import com.google.zxing.qrcode.encoder.Encoder;
import com.google.zxing.qrcode.encoder.QRCode;
import com.panda912.muddy.ObfuscatedString;
import java.util.Map;

/* loaded from: classes3.dex */
public final class QRCodeWriter implements Writer {
    private static final int QUIET_ZONE_SIZE = 4;

    private static BitMatrix renderResult(QRCode qRCode, int i, int i2, int i3) {
        ByteMatrix matrix = qRCode.getMatrix();
        if (matrix != null) {
            int width = matrix.getWidth();
            int height = matrix.getHeight();
            int i4 = i3 * 2;
            int i5 = width + i4;
            int i6 = i4 + height;
            int max = Math.max(i, i5);
            int max2 = Math.max(i2, i6);
            int min = Math.min(max / i5, max2 / i6);
            int i7 = (max - (width * min)) / 2;
            int i8 = (max2 - (height * min)) / 2;
            BitMatrix bitMatrix = new BitMatrix(max, max2);
            int i9 = 0;
            while (i9 < height) {
                int i10 = i7;
                int i11 = 0;
                while (i11 < width) {
                    if (matrix.get(i11, i9) == 1) {
                        bitMatrix.setRegion(i10, i8, min, min);
                    }
                    i11++;
                    i10 += min;
                }
                i9++;
                i8 += min;
            }
            return bitMatrix;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) {
        return encode(str, barcodeFormat, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        int i3 = 4;
        if (!str.isEmpty()) {
            if (barcodeFormat != BarcodeFormat.QR_CODE) {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{4670591388016680690L, 6219956381927556135L, -5087124902324804726L, -4806242482882650670L, -2422487302045264665L, -7329510774326170969L}).toString() + barcodeFormat);
            }
            if (i >= 0 && i2 >= 0) {
                ErrorCorrectionLevel errorCorrectionLevel = ErrorCorrectionLevel.L;
                if (map != null) {
                    EncodeHintType encodeHintType = EncodeHintType.ERROR_CORRECTION;
                    if (map.containsKey(encodeHintType)) {
                        errorCorrectionLevel = ErrorCorrectionLevel.valueOf(map.get(encodeHintType).toString());
                    }
                    EncodeHintType encodeHintType2 = EncodeHintType.MARGIN;
                    if (map.containsKey(encodeHintType2)) {
                        i3 = Integer.parseInt(map.get(encodeHintType2).toString());
                    }
                }
                return renderResult(Encoder.encode(str, errorCorrectionLevel, map), i, i2, i3);
            }
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-6769968187360785532L, 841156390207740164L, -5858046308134827153L, -4288223219546002846L, -5517034845095848376L, 3007637571306160096L}).toString() + i + 'x' + i2);
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-6724624860716949385L, 59235559711325977L, 5584335469088844269L, 5384876970934621580L}).toString());
    }
}
