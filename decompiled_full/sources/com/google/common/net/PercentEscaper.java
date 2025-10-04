package com.google.common.net;

import com.google.common.annotations.GwtCompatible;
import com.google.common.base.Preconditions;
import com.google.common.escape.UnicodeEscaper;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import javax.annotation.CheckForNull;

@GwtCompatible
@ElementTypesAreNonnullByDefault
/* loaded from: classes2.dex */
public final class PercentEscaper extends UnicodeEscaper {
    private static final char[] PLUS_SIGN = {'+'};
    private static final char[] UPPER_HEX_DIGITS = new ObfuscatedString(new long[]{8629300239770741528L, 8952192857653643044L, -5234798928563250906L}).toString().toCharArray();
    private final boolean plusForSpace;
    private final boolean[] safeOctets;

    public PercentEscaper(String str, boolean z) {
        Preconditions.checkNotNull(str);
        if (!str.matches(new ObfuscatedString(new long[]{-4788607986788803072L, -2765397708091673775L, -3766995812123575984L}).toString())) {
            String concat = str.concat(new ObfuscatedString(new long[]{-7877271046420389049L, -8866085990118197724L, 2027507765506498842L, 3917740161335476666L, 8295453643557988235L, -7930751478584423210L, -4007725596016006827L, 180791068952384957L, 5100332380923418329L}).toString());
            if (z && concat.contains(new ObfuscatedString(new long[]{8223224863891703691L, -2878302589394891154L}).toString())) {
                throw new IllegalArgumentException(new ObfuscatedString(new long[]{-493220925463270938L, -5005235440515976109L, -9138721802606613582L, 3097686189742053087L, 3202793769504161439L, 859041406706149351L, 4550901643789205667L, 1453198168078494665L, 5189651533340376407L, 7092356115451904109L}).toString());
            }
            this.plusForSpace = z;
            this.safeOctets = createSafeOctets(concat);
            return;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{-1179592991761244109L, -7796322958503460398L, 9044716399117570560L, 163198329912184836L, 8501744259021819536L, 5205663183408197408L, -517781344079197124L, 2094014406034916438L, -8391869202669474830L, -1046427299915066313L, -5253123663170024773L}).toString());
    }

    private static boolean[] createSafeOctets(String str) {
        char[] charArray = str.toCharArray();
        int i = -1;
        for (char c : charArray) {
            i = Math.max((int) c, i);
        }
        boolean[] zArr = new boolean[i + 1];
        for (char c2 : charArray) {
            zArr[c2] = true;
        }
        return zArr;
    }

    @Override // com.google.common.escape.UnicodeEscaper, com.google.common.escape.Escaper
    public String escape(String str) {
        Preconditions.checkNotNull(str);
        int length = str.length();
        for (int i = 0; i < length; i++) {
            char charAt = str.charAt(i);
            boolean[] zArr = this.safeOctets;
            if (charAt >= zArr.length || !zArr[charAt]) {
                return escapeSlow(str, i);
            }
        }
        return str;
    }

    @Override // com.google.common.escape.UnicodeEscaper
    public int nextEscapeIndex(CharSequence charSequence, int i, int i2) {
        Preconditions.checkNotNull(charSequence);
        while (i < i2) {
            char charAt = charSequence.charAt(i);
            boolean[] zArr = this.safeOctets;
            if (charAt >= zArr.length || !zArr[charAt]) {
                break;
            }
            i++;
        }
        return i;
    }

    @Override // com.google.common.escape.UnicodeEscaper
    @CheckForNull
    public char[] escape(int i) {
        boolean[] zArr = this.safeOctets;
        if (i < zArr.length && zArr[i]) {
            return null;
        }
        if (i == 32 && this.plusForSpace) {
            return PLUS_SIGN;
        }
        if (i <= 127) {
            char[] cArr = UPPER_HEX_DIGITS;
            return new char[]{'%', cArr[i >>> 4], cArr[i & 15]};
        }
        if (i <= 2047) {
            char[] cArr2 = UPPER_HEX_DIGITS;
            return new char[]{'%', cArr2[(i >>> 10) | 12], cArr2[(i >>> 6) & 15], '%', cArr2[((i >>> 4) & 3) | 8], cArr2[i & 15]};
        }
        if (i <= 65535) {
            char[] cArr3 = UPPER_HEX_DIGITS;
            return new char[]{'%', 'E', cArr3[i >>> 12], '%', cArr3[((i >>> 10) & 3) | 8], cArr3[(i >>> 6) & 15], '%', cArr3[((i >>> 4) & 3) | 8], cArr3[i & 15]};
        }
        if (i <= 1114111) {
            char[] cArr4 = UPPER_HEX_DIGITS;
            return new char[]{'%', 'F', cArr4[(i >>> 18) & 7], '%', cArr4[((i >>> 16) & 3) | 8], cArr4[(i >>> 12) & 15], '%', cArr4[((i >>> 10) & 3) | 8], cArr4[(i >>> 6) & 15], '%', cArr4[((i >>> 4) & 3) | 8], cArr4[i & 15]};
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{6520285307961419775L, 4301132960638598604L, 8163614272875410154L, 139192364962186294L, -3659283107493503094L}), new StringBuilder(43), i));
    }
}
