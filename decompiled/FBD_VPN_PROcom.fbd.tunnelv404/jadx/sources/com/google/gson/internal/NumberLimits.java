package com.google.gson.internal;

import androidx.work.WorkRequest;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes3.dex */
public class NumberLimits {
    private static final int MAX_NUMBER_STRING_LENGTH = 10000;

    private NumberLimits() {
    }

    private static void checkNumberStringLength(String str) {
        if (str.length() <= MAX_NUMBER_STRING_LENGTH) {
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{7738468111706900689L, 5517664433986736768L, 7741720814680479514L, -3688971949439390593L, 4073953917545286682L}).toString());
        sb.append(str.substring(0, 30));
        throw new NumberFormatException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-81923007302928342L, 5686982646676913005L}), sb));
    }

    public static BigDecimal parseBigDecimal(String str) {
        checkNumberStringLength(str);
        BigDecimal bigDecimal = new BigDecimal(str);
        if (Math.abs(bigDecimal.scale()) < WorkRequest.MIN_BACKOFF_MILLIS) {
            return bigDecimal;
        }
        throw new NumberFormatException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{2070951357987943009L, -7413101443337130845L, 4915171148803172268L, -4057902125726106326L, 3576977708633616032L}), new StringBuilder(), str));
    }

    public static BigInteger parseBigInteger(String str) {
        checkNumberStringLength(str);
        return new BigInteger(str);
    }
}
