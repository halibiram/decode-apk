package com.google.zxing;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public final class Dimension {
    private final int height;
    private final int width;

    public Dimension(int i, int i2) {
        if (i >= 0 && i2 >= 0) {
            this.width = i;
            this.height = i2;
            return;
        }
        throw new IllegalArgumentException();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Dimension)) {
            return false;
        }
        Dimension dimension = (Dimension) obj;
        if (this.width != dimension.width || this.height != dimension.height) {
            return false;
        }
        return true;
    }

    public int getHeight() {
        return this.height;
    }

    public int getWidth() {
        return this.width;
    }

    public int hashCode() {
        return (this.width * 32713) + this.height;
    }

    public String toString() {
        return this.width + new ObfuscatedString(new long[]{-7688927107916340544L, -732682900111331883L}).toString() + this.height;
    }
}
