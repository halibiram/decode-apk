package com.google.android.gms.common.images;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class Size {
    private final int zaa;
    private final int zab;

    public Size(int i, int i2) {
        this.zaa = i;
        this.zab = i2;
    }

    @NonNull
    public static Size parseSize(@NonNull String str) {
        if (str != null) {
            int indexOf = str.indexOf(42);
            if (indexOf < 0) {
                indexOf = str.indexOf(120);
            }
            if (indexOf >= 0) {
                try {
                    return new Size(Integer.parseInt(str.substring(0, indexOf)), Integer.parseInt(str.substring(indexOf + 1)));
                } catch (NumberFormatException unused) {
                    throw zaa(str);
                }
            }
            throw zaa(str);
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{5222488649520173713L, -113509069685618358L, 5515636317598096560L, -7144945194547500082L}).toString());
    }

    private static NumberFormatException zaa(String str) {
        StringBuilder sb = new StringBuilder(str.length() + 16);
        sb.append(new ObfuscatedString(new long[]{-5394814016508465202L, 19087719423307477L, -3053760989499194619L}).toString());
        sb.append(str);
        throw new NumberFormatException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4424819777037304533L, 7291701097581977121L}), sb));
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof Size) {
            Size size = (Size) obj;
            if (this.zaa == size.zaa && this.zab == size.zab) {
                return true;
            }
        }
        return false;
    }

    public int getHeight() {
        return this.zab;
    }

    public int getWidth() {
        return this.zaa;
    }

    public int hashCode() {
        int i = this.zab;
        int i2 = this.zaa;
        return i ^ ((i2 >>> 16) | (i2 << 16));
    }

    @NonNull
    public String toString() {
        int i = this.zaa;
        int i2 = this.zab;
        StringBuilder sb = new StringBuilder(23);
        sb.append(i);
        return AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{8861669686510905757L, -2647483097626479880L}), sb, i2);
    }
}
