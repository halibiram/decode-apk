package com.trilead.ssh2.crypto.digest;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class MAC {

    @Deprecated
    Digest mac;

    @Deprecated
    int size;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public MAC(String str, byte[] bArr) {
        char c;
        switch (str.hashCode()) {
            case -431829390:
                if (str.equals(new ObfuscatedString(new long[]{342435105086114074L, 2550529687497392550L, 5122656457402001700L}).toString())) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 683504895:
                if (str.equals(new ObfuscatedString(new long[]{7307708597165975098L, -6354609446963364578L, 7957804940540385419L}).toString())) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 763979563:
                if (str.equals(new ObfuscatedString(new long[]{-628841862101354879L, 6728153123671490985L, -9210213868991871261L}).toString())) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1687206552:
                if (str.equals(new ObfuscatedString(new long[]{-1519550390167100795L, 8656794888717375703L}).toString())) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        return;
                    } else {
                        this.mac = new HMAC(new MD5(), bArr, 12);
                    }
                } else {
                    this.mac = new HMAC(new MD5(), bArr, 16);
                }
            } else {
                this.mac = new HMAC(new SHA1(), bArr, 12);
            }
        } else {
            this.mac = new HMAC(new SHA1(), bArr, 20);
        }
        this.size = this.mac.getDigestLength();
    }

    @Deprecated
    public static void checkMacList(String[] strArr) {
        for (String str : strArr) {
            getKeyLen(str);
        }
    }

    @Deprecated
    public static int getKeyLen(String str) {
        if (str.equals(new ObfuscatedString(new long[]{-7472730551467726883L, 680862916150737251L, 4049941067023548890L}).toString()) || str.equals(new ObfuscatedString(new long[]{1671732286500641467L, -5975763826189480867L, 1901184729605411776L}).toString())) {
            return 20;
        }
        if (str.equals(new ObfuscatedString(new long[]{-2785570977223239841L, -4851152700701539372L}).toString()) || str.equals(new ObfuscatedString(new long[]{978840695774161159L, -1873973449155341268L, 2712094288831888347L}).toString())) {
            return 16;
        }
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-7926935201634761350L, 7826904593064221269L, 46398465590318510L, -1687775601659761734L}), new StringBuilder(), str));
    }

    @Deprecated
    public static String[] getMacList() {
        return new String[]{new ObfuscatedString(new long[]{-1239912081295894908L, 5937599427167751621L, 310026072297272759L}).toString(), new ObfuscatedString(new long[]{-1414382703256634716L, -7791568854906286424L, 2312330173113805466L}).toString(), new ObfuscatedString(new long[]{205993641155133226L, -7640636643682584265L, -6310192368459355897L}).toString(), new ObfuscatedString(new long[]{7393646783080520863L, 5108941391420992653L}).toString()};
    }

    public void getMac(byte[] bArr, int i) {
        this.mac.digest(bArr, i);
    }

    public void initMac(int i) {
        this.mac.reset();
        this.mac.update((byte) (i >> 24));
        this.mac.update((byte) (i >> 16));
        this.mac.update((byte) (i >> 8));
        this.mac.update((byte) i);
    }

    public int size() {
        return this.size;
    }

    public void update(byte[] bArr, int i, int i2) {
        this.mac.update(bArr, i, i2);
    }
}
