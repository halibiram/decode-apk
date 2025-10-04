package com.google.common.primitives;

import com.google.common.annotations.GwtCompatible;
import com.panda912.muddy.ObfuscatedString;

@ElementTypesAreNonnullByDefault
@GwtCompatible
/* loaded from: classes2.dex */
final class ParseRequest {
    final int radix;
    final String rawValue;

    private ParseRequest(String str, int i) {
        this.rawValue = str;
        this.radix = i;
    }

    public static ParseRequest fromString(String str) {
        if (str.length() != 0) {
            char charAt = str.charAt(0);
            int i = 16;
            if (!str.startsWith(new ObfuscatedString(new long[]{-3167823372986565815L, 938281705965054591L}).toString()) && !str.startsWith(new ObfuscatedString(new long[]{5244885879351464301L, 4837852782397110066L}).toString())) {
                if (charAt == '#') {
                    str = str.substring(1);
                } else if (charAt == '0' && str.length() > 1) {
                    str = str.substring(1);
                    i = 8;
                } else {
                    i = 10;
                }
            } else {
                str = str.substring(2);
            }
            return new ParseRequest(str, i);
        }
        throw new NumberFormatException(new ObfuscatedString(new long[]{-1969910320380558885L, -858749213197186921L, -7965754488233808435L}).toString());
    }
}
