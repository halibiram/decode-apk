package com.trilead.ssh2.util;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public class Tokenizer {
    public static String[] parseTokens(String str, char c) {
        int i = 1;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) == c) {
                i++;
            }
        }
        String[] strArr = new String[i];
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            if (i3 >= str.length()) {
                strArr[i4] = new ObfuscatedString(new long[]{-779215127785192687L}).toString();
            } else {
                int indexOf = str.indexOf(c, i3);
                if (indexOf == -1) {
                    indexOf = str.length();
                }
                strArr[i4] = str.substring(i3, indexOf);
                i3 = indexOf + 1;
            }
        }
        return strArr;
    }
}
