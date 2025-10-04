package com.google.common.escape;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import javax.annotation.CheckForNull;

@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public abstract class UnicodeEscaper extends Escaper {
    private static final int DEST_PAD = 32;

    public static int codePointAt(CharSequence charSequence, int i, int i2) {
        Preconditions.checkNotNull(charSequence);
        if (i < i2) {
            int i3 = i + 1;
            char charAt = charSequence.charAt(i);
            if (charAt >= 55296 && charAt <= 57343) {
                if (charAt <= 56319) {
                    if (i3 == i2) {
                        return -charAt;
                    }
                    char charAt2 = charSequence.charAt(i3);
                    if (Character.isLowSurrogate(charAt2)) {
                        return Character.toCodePoint(charAt, charAt2);
                    }
                    String valueOf = String.valueOf(charSequence);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 89);
                    sb.append(new ObfuscatedString(new long[]{-2438684211293413635L, -1372684040481718491L, -5582064622181862314L, 3113546951462383085L, 5503233782757701170L, 1904147004234932761L}).toString());
                    sb.append(charAt2);
                    sb.append(new ObfuscatedString(new long[]{7686403625226011424L, -7199555534760069012L, -8218297807459131157L}).toString());
                    sb.append((int) charAt2);
                    sb.append(new ObfuscatedString(new long[]{8406883403939214887L, -3702590570296436757L, 7185437201273822569L}).toString());
                    sb.append(i3);
                    sb.append(new ObfuscatedString(new long[]{2892801142086593837L, -2127898301676384147L}).toString());
                    sb.append(valueOf);
                    throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8071517163959464687L, -1781373454879912502L}), sb));
                }
                String valueOf2 = String.valueOf(charSequence);
                StringBuilder sb2 = new StringBuilder(valueOf2.length() + 88);
                sb2.append(new ObfuscatedString(new long[]{4571979028936465460L, -3813342663313271186L, 5179353252290675066L, 3384336785911043854L, -1563089936444797508L, 3784870460841326929L}).toString());
                sb2.append(charAt);
                sb2.append(new ObfuscatedString(new long[]{-7272576311981334885L, -865857202283212148L, -3545959194279539717L}).toString());
                sb2.append((int) charAt);
                sb2.append(new ObfuscatedString(new long[]{-6682818161078900485L, -607383205569271787L, -4079672132705325857L}).toString());
                sb2.append(i);
                sb2.append(new ObfuscatedString(new long[]{-4167978200100166480L, -605015750370390629L}).toString());
                sb2.append(valueOf2);
                throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-2949228523472175471L, 8786236610967604578L}), sb2));
            }
            return charAt;
        }
        throw new IndexOutOfBoundsException(new ObfuscatedString(new long[]{-4425717076457436571L, 5573692998353374506L, -5674913269555215358L, -1619901399269508662L, 5296661570627724614L}).toString());
    }

    private static char[] growBuffer(char[] cArr, int i, int i2) {
        if (i2 >= 0) {
            char[] cArr2 = new char[i2];
            if (i > 0) {
                System.arraycopy(cArr, 0, cArr2, 0, i);
            }
            return cArr2;
        }
        throw new AssertionError(new ObfuscatedString(new long[]{-153923572070584037L, -185434064225675755L, -7902154420813195675L, 3102086915912264262L, -308065087862570578L, -2893019026304603530L, -5901506781968461577L}).toString());
    }

    @Override // com.google.common.escape.Escaper
    public String escape(String str) {
        Preconditions.checkNotNull(str);
        int length = str.length();
        int nextEscapeIndex = nextEscapeIndex(str, 0, length);
        return nextEscapeIndex == length ? str : escapeSlow(str, nextEscapeIndex);
    }

    @CheckForNull
    public abstract char[] escape(int i);

    public final String escapeSlow(String str, int i) {
        int i2;
        int length = str.length();
        char[] charBufferFromThreadLocal = Platform.charBufferFromThreadLocal();
        int i3 = 0;
        int i4 = 0;
        while (i < length) {
            int codePointAt = codePointAt(str, i, length);
            if (codePointAt >= 0) {
                char[] escape = escape(codePointAt);
                if (Character.isSupplementaryCodePoint(codePointAt)) {
                    i2 = 2;
                } else {
                    i2 = 1;
                }
                int i5 = i2 + i;
                if (escape != null) {
                    int i6 = i - i3;
                    int i7 = i4 + i6;
                    int length2 = escape.length + i7;
                    if (charBufferFromThreadLocal.length < length2) {
                        charBufferFromThreadLocal = growBuffer(charBufferFromThreadLocal, i4, (length - i) + length2 + 32);
                    }
                    if (i6 > 0) {
                        str.getChars(i3, i, charBufferFromThreadLocal, i4);
                        i4 = i7;
                    }
                    if (escape.length > 0) {
                        System.arraycopy(escape, 0, charBufferFromThreadLocal, i4, escape.length);
                        i4 += escape.length;
                    }
                    i3 = i5;
                }
                i = nextEscapeIndex(str, i5, length);
            } else {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{-6397656250985110596L, -6492771089221682091L, -7023075969204198622L, -2557615756182052273L, 7530030580212169099L, 7135882397329251712L}).toString());
            }
        }
        int i8 = length - i3;
        if (i8 > 0) {
            int i9 = i8 + i4;
            if (charBufferFromThreadLocal.length < i9) {
                charBufferFromThreadLocal = growBuffer(charBufferFromThreadLocal, i4, i9);
            }
            str.getChars(i3, length, charBufferFromThreadLocal, i4);
            i4 = i9;
        }
        return new String(charBufferFromThreadLocal, 0, i4);
    }

    public int nextEscapeIndex(CharSequence charSequence, int i, int i2) {
        int i3;
        while (i < i2) {
            int codePointAt = codePointAt(charSequence, i, i2);
            if (codePointAt < 0 || escape(codePointAt) != null) {
                break;
            }
            if (Character.isSupplementaryCodePoint(codePointAt)) {
                i3 = 2;
            } else {
                i3 = 1;
            }
            i += i3;
        }
        return i;
    }
}
