package com.journeyapps.barcodescanner;

import android.graphics.Bitmap;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.MultiFormatWriter;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import java.util.Map;

/* loaded from: classes3.dex */
public class BarcodeEncoder {
    private static final int BLACK = -16777216;
    private static final int WHITE = -1;

    public Bitmap createBitmap(BitMatrix bitMatrix) {
        int i;
        int width = bitMatrix.getWidth();
        int height = bitMatrix.getHeight();
        int[] iArr = new int[width * height];
        for (int i2 = 0; i2 < height; i2++) {
            int i3 = i2 * width;
            for (int i4 = 0; i4 < width; i4++) {
                int i5 = i3 + i4;
                if (bitMatrix.get(i4, i2)) {
                    i = -16777216;
                } else {
                    i = -1;
                }
                iArr[i5] = i;
            }
        }
        Bitmap createBitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        createBitmap.setPixels(iArr, 0, width, 0, 0, width, height);
        return createBitmap;
    }

    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) {
        try {
            return new MultiFormatWriter().encode(str, barcodeFormat, i, i2);
        } catch (WriterException e) {
            throw e;
        } catch (Exception e2) {
            throw new WriterException(e2);
        }
    }

    public Bitmap encodeBitmap(String str, BarcodeFormat barcodeFormat, int i, int i2) {
        return createBitmap(encode(str, barcodeFormat, i, i2));
    }

    public Bitmap encodeBitmap(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        return createBitmap(encode(str, barcodeFormat, i, i2, map));
    }

    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        try {
            return new MultiFormatWriter().encode(str, barcodeFormat, i, i2, map);
        } catch (WriterException e) {
            throw e;
        } catch (Exception e2) {
            throw new WriterException(e2);
        }
    }
}
