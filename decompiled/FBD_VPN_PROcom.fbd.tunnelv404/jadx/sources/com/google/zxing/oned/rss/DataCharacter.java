package com.google.zxing.oned.rss;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0362x4440ab85;

/* loaded from: classes3.dex */
public class DataCharacter {
    private final int checksumPortion;
    private final int value;

    public DataCharacter(int i, int i2) {
        this.value = i;
        this.checksumPortion = i2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof DataCharacter)) {
            return false;
        }
        DataCharacter dataCharacter = (DataCharacter) obj;
        if (this.value != dataCharacter.value || this.checksumPortion != dataCharacter.checksumPortion) {
            return false;
        }
        return true;
    }

    public final int getChecksumPortion() {
        return this.checksumPortion;
    }

    public final int getValue() {
        return this.value;
    }

    public final int hashCode() {
        return this.value ^ this.checksumPortion;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.value);
        sb.append(new ObfuscatedString(new long[]{3604523272925086305L, 4861485898368860739L}).toString());
        return AbstractC0362x4440ab85.m2934x9d12c1f4(sb, this.checksumPortion, ')');
    }
}
