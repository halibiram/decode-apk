package com.google.zxing.pdf417.decoder;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
final class Codeword {
    private static final int BARCODE_ROW_UNKNOWN = -1;
    private final int bucket;
    private final int endX;
    private int rowNumber = -1;
    private final int startX;
    private final int value;

    public Codeword(int i, int i2, int i3, int i4) {
        this.startX = i;
        this.endX = i2;
        this.bucket = i3;
        this.value = i4;
    }

    public int getBucket() {
        return this.bucket;
    }

    public int getEndX() {
        return this.endX;
    }

    public int getRowNumber() {
        return this.rowNumber;
    }

    public int getStartX() {
        return this.startX;
    }

    public int getValue() {
        return this.value;
    }

    public int getWidth() {
        return this.endX - this.startX;
    }

    public boolean hasValidRowNumber() {
        return isValidRowNumber(this.rowNumber);
    }

    public boolean isValidRowNumber(int i) {
        if (i != -1 && this.bucket == (i % 3) * 3) {
            return true;
        }
        return false;
    }

    public void setRowNumber(int i) {
        this.rowNumber = i;
    }

    public void setRowNumberAsRowIndicatorColumn() {
        this.rowNumber = (this.bucket / 3) + ((this.value / 30) * 3);
    }

    public String toString() {
        return this.rowNumber + new ObfuscatedString(new long[]{-4099127072242980058L, 6904130796341517828L}).toString() + this.value;
    }
}
