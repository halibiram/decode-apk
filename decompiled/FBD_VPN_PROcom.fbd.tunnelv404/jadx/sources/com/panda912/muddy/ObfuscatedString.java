package com.panda912.muddy;

import defpackage.AbstractC0749x8313616e;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Random;
import java.util.concurrent.Callable;

/* loaded from: classes3.dex */
public final class ObfuscatedString {
    private static final Charset charset = Charset.forName("UTF8");
    private final long[] obfuscated;

    /* loaded from: classes3.dex */
    public abstract class Codec<V> implements Callable<V> {
        private Codec() {
        }

        @Override // java.util.concurrent.Callable
        public V call() {
            long[] jArr = ObfuscatedString.this.obfuscated;
            int length = jArr.length;
            int i = (length - 1) * 8;
            byte[] bArr = new byte[i];
            Random random = new Random(jArr[0]);
            for (int i2 = 1; i2 < length; i2++) {
                ObfuscatedString.encode(jArr[i2] ^ random.nextLong(), bArr, (i2 - 1) * 8);
            }
            while (i > 0) {
                int i3 = i - 1;
                if (bArr[i3] == 0) {
                    i = i3;
                }
            }
            try {
                try {
                    return decode(bArr, i);
                } catch (RuntimeException e) {
                    throw e;
                } catch (Exception e2) {
                    throw new IllegalStateException(e2);
                }
            } finally {
                Arrays.fill(bArr, 0, i, (byte) 0);
            }
        }

        public abstract V decode(byte[] bArr, int i);
    }

    public ObfuscatedString(long[] jArr) {
        long[] jArr2 = (long[]) jArr.clone();
        this.obfuscated = jArr2;
        jArr2[0] = jArr[0];
    }

    private static void appendHexLiteral(StringBuilder sb, long j) {
        sb.append('0');
        sb.append('x');
        sb.append(Long.toHexString(j));
        sb.append('L');
    }

    public static long[] array(String str) {
        if (-1 == str.indexOf(0)) {
            byte[] bytes = str.getBytes(charset);
            int length = bytes.length;
            long[] jArr = new long[((length + 7) / 8) + 1];
            long key = key();
            Random random = new Random(key);
            jArr[0] = key;
            int i = 0;
            for (int i2 = 0; i2 < length; i2 += 8) {
                i++;
                jArr[i] = decode(bytes, i2) ^ random.nextLong();
            }
            return jArr;
        }
        throw new IllegalArgumentException(obfuscate(new ObfuscatedString(new long[]{-6344910285385855354L, -8257941245085989130L, -6510764550671356986L, 7660350874642465705L, 4675789619753586398L}).toString()));
    }

    private static long decode(byte[] bArr, int i) {
        int min = Math.min(bArr.length, i + 8);
        long j = 0;
        while (true) {
            min--;
            if (min >= i) {
                j = (j << 8) | (bArr[min] & 255);
            } else {
                return j;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void encode(long j, byte[] bArr, int i) {
        int min = Math.min(bArr.length, i + 8);
        while (i < min) {
            bArr[i] = (byte) j;
            j >>= 8;
            i++;
        }
    }

    public static String java(long[] jArr) {
        StringBuilder sb = new StringBuilder(new ObfuscatedString(new long[]{6003150725179844065L, 2590282151269820880L, -2053732419837572554L, 1261000332862167295L, 1127021420704539900L, 532714575052130848L, -4786319338177092486L, -7697900548567551144L, -1157834749327639146L, 2338712987223332782L, -7524844281397770718L}).toString());
        appendHexLiteral(sb, jArr[0]);
        for (int i = 1; i < jArr.length; i++) {
            sb.append(new ObfuscatedString(new long[]{3377185879661865432L, 4914647530038614558L}).toString());
            appendHexLiteral(sb, jArr[i]);
        }
        sb.append(new ObfuscatedString(new long[]{-7029325950616461695L, 1549231332500829915L, 927346010951954896L, -4982744208879391172L}).toString());
        sb.append(literal(new ObfuscatedString(jArr).toString()).replace(new ObfuscatedString(new long[]{-5336101898667843296L, -3658830247496546969L}).toString(), new ObfuscatedString(new long[]{-6585061863519650808L, -4827682877149201925L}).toString()));
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-7910041278783513955L, 7289570839181116340L}), sb);
    }

    private static long key() {
        long nextLong;
        Random random = new Random();
        do {
            nextLong = random.nextLong();
        } while (0 == nextLong);
        return nextLong;
    }

    public static String literal(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{-8908600767983936174L, 4528845369385330989L}).toString());
        sb.append(str);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{7418728756770984731L, -4214360431020767605L}), sb);
    }

    public static String obfuscate(String str) {
        return java(array(str));
    }

    @Deprecated
    public void finalize() {
        Arrays.fill(this.obfuscated, 0L);
        super.finalize();
    }

    public char[] toCharArray() {
        return new Codec<char[]>() { // from class: com.panda912.muddy.ObfuscatedString.1
            @Override // com.panda912.muddy.ObfuscatedString.Codec
            public char[] decode(byte[] bArr, int i) {
                return ObfuscatedString.charset.newDecoder().decode(ByteBuffer.wrap(bArr, 0, i)).array();
            }
        }.call();
    }

    public String toString() {
        return new Codec<String>() { // from class: com.panda912.muddy.ObfuscatedString.2
            @Override // com.panda912.muddy.ObfuscatedString.Codec
            public String decode(byte[] bArr, int i) {
                return new String(bArr, 0, i, ObfuscatedString.charset);
            }
        }.call();
    }

    public String toStringIntern() {
        return toString().intern();
    }
}
