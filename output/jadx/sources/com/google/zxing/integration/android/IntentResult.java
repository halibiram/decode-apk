package com.google.zxing.integration.android;

import android.content.Intent;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public final class IntentResult {
    private final String barcodeImagePath;
    private final String contents;
    private final String errorCorrectionLevel;
    private final String formatName;
    private final Integer orientation;
    private final Intent originalIntent;
    private final byte[] rawBytes;

    public IntentResult() {
        this(null, null, null, null, null, null, null);
    }

    public String getBarcodeImagePath() {
        return this.barcodeImagePath;
    }

    public String getContents() {
        return this.contents;
    }

    public String getErrorCorrectionLevel() {
        return this.errorCorrectionLevel;
    }

    public String getFormatName() {
        return this.formatName;
    }

    public Integer getOrientation() {
        return this.orientation;
    }

    public Intent getOriginalIntent() {
        return this.originalIntent;
    }

    public byte[] getRawBytes() {
        return this.rawBytes;
    }

    public String toString() {
        int length;
        byte[] bArr = this.rawBytes;
        if (bArr == null) {
            length = 0;
        } else {
            length = bArr.length;
        }
        return new ObfuscatedString(new long[]{5849729487657091987L, 2426309521753251620L}).toString() + this.formatName + '\n' + new ObfuscatedString(new long[]{6842213702298620350L, -5862762192916142117L, 5402718191117863146L}).toString() + this.contents + '\n' + new ObfuscatedString(new long[]{-4604314049108504206L, -2474962736513929624L, -4616389429792948146L}).toString() + length + new ObfuscatedString(new long[]{6424317383146005604L, -3923699504018086841L, 2537066756464405817L, 8523598480718730811L}).toString() + this.orientation + '\n' + new ObfuscatedString(new long[]{-2101377465680373994L, -2179821173648164944L, 1404082036496578811L}).toString() + this.errorCorrectionLevel + '\n' + new ObfuscatedString(new long[]{2117267225524786961L, -648840823103960298L, -6791592425480829971L}).toString() + this.barcodeImagePath + '\n' + new ObfuscatedString(new long[]{-82053087742039561L, -8569970000883565538L, -1296813665867636155L, -874730781692827960L}).toString() + this.originalIntent + '\n';
    }

    public IntentResult(Intent intent) {
        this(null, null, null, null, null, null, intent);
    }

    public IntentResult(String str, String str2, byte[] bArr, Integer num, String str3, String str4, Intent intent) {
        this.contents = str;
        this.formatName = str2;
        this.rawBytes = bArr;
        this.orientation = num;
        this.errorCorrectionLevel = str3;
        this.barcodeImagePath = str4;
        this.originalIntent = intent;
    }
}
