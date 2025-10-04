package com.google.zxing.oned;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.EncodeHintType;
import com.google.zxing.Writer;
import com.google.zxing.common.BitMatrix;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;
import java.util.Map;

/* loaded from: classes3.dex */
public final class UPCAWriter implements Writer {
    private final EAN13Writer subWriter = new EAN13Writer();

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2) {
        return encode(str, barcodeFormat, i, i2, null);
    }

    @Override // com.google.zxing.Writer
    public BitMatrix encode(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) {
        if (barcodeFormat == BarcodeFormat.UPC_A) {
            return this.subWriter.encode(AbstractC0362x4440ab85.m2952x5ac5058d("0", str), BarcodeFormat.EAN_13, i, i2, map);
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{9046827316984634565L, -5965476254525977561L, 4297271407029172748L, -8902843596041762035L, 8140377419208160485L}).toString() + barcodeFormat);
    }
}
