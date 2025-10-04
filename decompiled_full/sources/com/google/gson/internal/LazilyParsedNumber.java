package com.google.gson.internal;

import com.panda912.muddy.ObfuscatedString;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.math.BigDecimal;

/* loaded from: classes3.dex */
public final class LazilyParsedNumber extends Number {
    private final String value;

    public LazilyParsedNumber(String str) {
        this.value = str;
    }

    private BigDecimal asBigDecimal() {
        return NumberLimits.parseBigDecimal(this.value);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException(new ObfuscatedString(new long[]{7003401958981755662L, -913017600286377442L, -7041732512339683252L, -3555700817318353351L, -7709657189163974656L}).toString());
    }

    private Object writeReplace() {
        return asBigDecimal();
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return Double.parseDouble(this.value);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof LazilyParsedNumber) {
            return this.value.equals(((LazilyParsedNumber) obj).value);
        }
        return false;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return Float.parseFloat(this.value);
    }

    public int hashCode() {
        return this.value.hashCode();
    }

    @Override // java.lang.Number
    public int intValue() {
        try {
            try {
                return Integer.parseInt(this.value);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(this.value);
            }
        } catch (NumberFormatException unused2) {
            return asBigDecimal().intValue();
        }
    }

    @Override // java.lang.Number
    public long longValue() {
        try {
            return Long.parseLong(this.value);
        } catch (NumberFormatException unused) {
            return asBigDecimal().longValue();
        }
    }

    public String toString() {
        return this.value;
    }
}
