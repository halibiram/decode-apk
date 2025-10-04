package com.google.gson.internal;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* loaded from: classes3.dex */
public class PreJava9DateFormatProvider {
    private PreJava9DateFormatProvider() {
    }

    private static String getDatePartOfDateTimePattern(int i) {
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i == 3) {
                        return new ObfuscatedString(new long[]{-6172702128501700410L, -7116706755268008945L}).toString();
                    }
                    throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{7439142645705845317L, -8728558843177917202L, -8522082128003349075L, 7966727046914694636L, -2632956710007023940L}), new StringBuilder(), i));
                }
                return new ObfuscatedString(new long[]{-2841420510805594308L, 1676241900886289518L, 6349328885687877079L}).toString();
            }
            return new ObfuscatedString(new long[]{-4585916544192324302L, 249185836620761129L, -8065956187906485220L}).toString();
        }
        return new ObfuscatedString(new long[]{-1381613539437257013L, -8505326461709732950L, -6986186548365800473L, 8058106796420085796L}).toString();
    }

    private static String getTimePartOfDateTimePattern(int i) {
        if (i != 0 && i != 1) {
            if (i != 2) {
                if (i == 3) {
                    return new ObfuscatedString(new long[]{7238616575414273578L, -1849996886275603890L}).toString();
                }
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{8524198362725154915L, 407998544062470506L, 7762568636737317166L, -7846503812906261215L, -9049831223396772262L}), new StringBuilder(), i));
            }
            return new ObfuscatedString(new long[]{-1950389154075343734L, -1475996509153933625L, -8982188669891562482L}).toString();
        }
        return new ObfuscatedString(new long[]{2682188785863859811L, 1667031236105532014L, -8402894453463298383L}).toString();
    }

    public static DateFormat getUsDateTimeFormat(int i, int i2) {
        return new SimpleDateFormat(getDatePartOfDateTimePattern(i) + new ObfuscatedString(new long[]{-3523860153424521509L, -2637163021354314109L}).toString() + getTimePartOfDateTimePattern(i2), Locale.US);
    }
}
