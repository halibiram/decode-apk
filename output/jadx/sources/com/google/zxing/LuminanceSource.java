package com.google.zxing;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public abstract class LuminanceSource {
    private final int height;
    private final int width;

    public LuminanceSource(int i, int i2) {
        this.width = i;
        this.height = i2;
    }

    public LuminanceSource crop(int i, int i2, int i3, int i4) {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{6185880963528045677L, -7535154833892528725L, 8864877889764048253L, -1252634524806408674L, 1351370623030714186L, -7599475999801820884L, -6785470337079850084L}).toString());
    }

    public final int getHeight() {
        return this.height;
    }

    public abstract byte[] getMatrix();

    public abstract byte[] getRow(int i, byte[] bArr);

    public final int getWidth() {
        return this.width;
    }

    public LuminanceSource invert() {
        return new InvertedLuminanceSource(this);
    }

    public boolean isCropSupported() {
        return false;
    }

    public boolean isRotateSupported() {
        return false;
    }

    public LuminanceSource rotateCounterClockwise() {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{3596090736805051371L, 3854854382804537931L, 8772319891544949964L, 3992861063149099148L, 2482116850156399800L, 7396852262783347172L, -370171036441851000L, -2522669693582601721L, 4168402137993995825L}).toString());
    }

    public LuminanceSource rotateCounterClockwise45() {
        throw new UnsupportedOperationException(new ObfuscatedString(new long[]{7262071903796569125L, -1949872772537234030L, 4208380774029522665L, -4815989950414621781L, 60474901010560384L, 2343762795813044670L, 230871796230503495L, -5093531906407901416L, -8352116055061046110L}).toString());
    }

    public final String toString() {
        char c;
        int i = this.width;
        byte[] bArr = new byte[i];
        StringBuilder sb = new StringBuilder((i + 1) * this.height);
        for (int i2 = 0; i2 < this.height; i2++) {
            bArr = getRow(i2, bArr);
            for (int i3 = 0; i3 < this.width; i3++) {
                int i4 = bArr[i3] & 255;
                if (i4 < 64) {
                    c = '#';
                } else if (i4 < 128) {
                    c = '+';
                } else if (i4 < 192) {
                    c = '.';
                } else {
                    c = ' ';
                }
                sb.append(c);
            }
            sb.append('\n');
        }
        return sb.toString();
    }
}
