package com.trilead.ssh2.crypto.digest;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes3.dex */
public final class MessageMac extends MAC {
    private final Mac messageMac;

    /* loaded from: classes3.dex */
    public enum Hmac {
        HMAC_MD5_96(new ObfuscatedString(new long[]{8039006829136574577L, -1442273440334375558L, -5685160285201617333L}).toString(), new ObfuscatedString(new long[]{-6376997045162262115L, -7932358440073972255L}).toString(), 16),
        HMAC_MD5(new ObfuscatedString(new long[]{7103003143796217342L, 2776468666122141910L}).toString(), new ObfuscatedString(new long[]{3238986480218225562L, 5023469325483707523L}).toString(), 16),
        HMAC_SHA1_96(new ObfuscatedString(new long[]{-6183673807442807841L, 8120439574335602902L, -6629702515683791805L}).toString(), new ObfuscatedString(new long[]{4319631572876370552L, -8062059751478907095L}).toString(), 20),
        HMAC_SHA1(new ObfuscatedString(new long[]{8222404289351761156L, -3143148510817159826L, -5148038983712409638L}).toString(), new ObfuscatedString(new long[]{8543330209183704527L, 4990044288105157128L}).toString(), 20),
        HMAC_SHA2_256(new ObfuscatedString(new long[]{1804513786824517745L, 7662536185695819969L, -3533402067721874788L}).toString(), new ObfuscatedString(new long[]{3639127947827720929L, -2194289357554363143L, -1159738116994213712L}).toString(), 32),
        HMAC_SHA2_512(new ObfuscatedString(new long[]{1074794747168158113L, 2045261188509136474L, 1103891714418825650L}).toString(), new ObfuscatedString(new long[]{1252166901849587774L, 8916071704541965950L, -2422502616668756062L}).toString(), 64);

        private String algorithm;
        private int length;
        private String type;

        Hmac(String str, String str2, int i) {
            this.type = str;
            this.algorithm = str2;
            this.length = i;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Hmac getHmac(String str) {
            for (Hmac hmac : values()) {
                if (hmac.getType().equals(str)) {
                    return hmac;
                }
            }
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{4435681832724367365L, 4581418114674563502L, 5703473162978048520L, -3918840686607853800L}), new StringBuilder(), str));
        }

        public String getAlgorithm() {
            return this.algorithm;
        }

        public int getLength() {
            return this.length;
        }

        public String getType() {
            return this.type;
        }
    }

    public MessageMac(String str, byte[] bArr) {
        super(str, bArr);
        try {
            Mac mac = Mac.getInstance(Hmac.getHmac(str).getAlgorithm());
            this.messageMac = mac;
            mac.init(new SecretKeySpec(bArr, str));
        } catch (GeneralSecurityException e) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{6549809475452900039L, 191991503050477176L, 3639493566214021762L, 5457972132266962893L}).toString(), e);
        }
    }

    public static void checkMacs(String[] strArr) {
        for (String str : strArr) {
            Hmac.getHmac(str);
        }
    }

    public static int getKeyLength(String str) {
        return Hmac.getHmac(str).getLength();
    }

    public static String[] getMacs() {
        ArrayList arrayList = new ArrayList();
        for (Hmac hmac : Hmac.values()) {
            arrayList.add(0, hmac.getType());
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    @Override // com.trilead.ssh2.crypto.digest.MAC
    public final void getMac(byte[] bArr, int i) {
        byte[] doFinal = this.messageMac.doFinal();
        System.arraycopy(doFinal, i, bArr, 0, doFinal.length - i);
    }

    @Override // com.trilead.ssh2.crypto.digest.MAC
    public final void initMac(int i) {
        this.messageMac.reset();
        this.messageMac.update((byte) (i >> 24));
        this.messageMac.update((byte) (i >> 16));
        this.messageMac.update((byte) (i >> 8));
        this.messageMac.update((byte) i);
    }

    @Override // com.trilead.ssh2.crypto.digest.MAC
    public final int size() {
        return this.messageMac.getMacLength();
    }

    @Override // com.trilead.ssh2.crypto.digest.MAC
    public final void update(byte[] bArr, int i, int i2) {
        this.messageMac.update(bArr, i, i2);
    }
}
