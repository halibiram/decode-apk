package com.trilead.ssh2.crypto.digest;

import defpackage.AbstractC0362x4440ab85;

@Deprecated
/* loaded from: classes3.dex */
public final class MD5 implements Digest {
    private static final byte[] padding = {Byte.MIN_VALUE, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
    private long count;
    private int state0;
    private int state1;
    private int state2;
    private int state3;
    private final byte[] block = new byte[64];
    private final int[] x = new int[16];

    public MD5() {
        reset();
    }

    private static int FF(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        int m2926x3271d0aa = AbstractC0362x4440ab85.m2926x3271d0aa((i3 & i2) | (i4 & (~i2)), i5, i7, i);
        return ((m2926x3271d0aa >>> (32 - i6)) | (m2926x3271d0aa << i6)) + i2;
    }

    private static int GG(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        int m2926x3271d0aa = AbstractC0362x4440ab85.m2926x3271d0aa((i3 & (~i4)) | (i2 & i4), i5, i7, i);
        return ((m2926x3271d0aa >>> (32 - i6)) | (m2926x3271d0aa << i6)) + i2;
    }

    private static int HH(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        int m2926x3271d0aa = AbstractC0362x4440ab85.m2926x3271d0aa((i3 ^ i2) ^ i4, i5, i7, i);
        return ((m2926x3271d0aa >>> (32 - i6)) | (m2926x3271d0aa << i6)) + i2;
    }

    private static int II(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
        int m2926x3271d0aa = AbstractC0362x4440ab85.m2926x3271d0aa(i3 ^ ((~i4) | i2), i5, i7, i);
        return ((m2926x3271d0aa >>> (32 - i6)) | (m2926x3271d0aa << i6)) + i2;
    }

    private static void encode(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) i2;
        bArr[i + 1] = (byte) (i2 >> 8);
        bArr[i + 2] = (byte) (i2 >> 16);
        bArr[i + 3] = (byte) (i2 >> 24);
    }

    private void transform(byte[] bArr, int i) {
        int i2 = this.state0;
        int i3 = this.state1;
        int i4 = this.state2;
        int i5 = this.state3;
        int i6 = i;
        int i7 = 0;
        while (i7 < 16) {
            this.x[i7] = ((bArr[i6 + 2] & 255) << 16) | (bArr[i6] & 255) | ((bArr[i6 + 1] & 255) << 8) | ((bArr[i6 + 3] & 255) << 24);
            i7++;
            i6 += 4;
        }
        int FF = FF(i2, i3, i4, i5, this.x[0], 7, -680876936);
        int FF2 = FF(i5, FF, i3, i4, this.x[1], 12, -389564586);
        int FF3 = FF(i4, FF2, FF, i3, this.x[2], 17, 606105819);
        int FF4 = FF(i3, FF3, FF2, FF, this.x[3], 22, -1044525330);
        int FF5 = FF(FF, FF4, FF3, FF2, this.x[4], 7, -176418897);
        int FF6 = FF(FF2, FF5, FF4, FF3, this.x[5], 12, 1200080426);
        int FF7 = FF(FF3, FF6, FF5, FF4, this.x[6], 17, -1473231341);
        int FF8 = FF(FF4, FF7, FF6, FF5, this.x[7], 22, -45705983);
        int FF9 = FF(FF5, FF8, FF7, FF6, this.x[8], 7, 1770035416);
        int FF10 = FF(FF6, FF9, FF8, FF7, this.x[9], 12, -1958414417);
        int FF11 = FF(FF7, FF10, FF9, FF8, this.x[10], 17, -42063);
        int FF12 = FF(FF8, FF11, FF10, FF9, this.x[11], 22, -1990404162);
        int FF13 = FF(FF9, FF12, FF11, FF10, this.x[12], 7, 1804603682);
        int FF14 = FF(FF10, FF13, FF12, FF11, this.x[13], 12, -40341101);
        int FF15 = FF(FF11, FF14, FF13, FF12, this.x[14], 17, -1502002290);
        int FF16 = FF(FF12, FF15, FF14, FF13, this.x[15], 22, 1236535329);
        int GG = GG(FF13, FF16, FF15, FF14, this.x[1], 5, -165796510);
        int GG2 = GG(FF14, GG, FF16, FF15, this.x[6], 9, -1069501632);
        int GG3 = GG(FF15, GG2, GG, FF16, this.x[11], 14, 643717713);
        int GG4 = GG(FF16, GG3, GG2, GG, this.x[0], 20, -373897302);
        int GG5 = GG(GG, GG4, GG3, GG2, this.x[5], 5, -701558691);
        int GG6 = GG(GG2, GG5, GG4, GG3, this.x[10], 9, 38016083);
        int GG7 = GG(GG3, GG6, GG5, GG4, this.x[15], 14, -660478335);
        int GG8 = GG(GG4, GG7, GG6, GG5, this.x[4], 20, -405537848);
        int GG9 = GG(GG5, GG8, GG7, GG6, this.x[9], 5, 568446438);
        int GG10 = GG(GG6, GG9, GG8, GG7, this.x[14], 9, -1019803690);
        int GG11 = GG(GG7, GG10, GG9, GG8, this.x[3], 14, -187363961);
        int GG12 = GG(GG8, GG11, GG10, GG9, this.x[8], 20, 1163531501);
        int GG13 = GG(GG9, GG12, GG11, GG10, this.x[13], 5, -1444681467);
        int GG14 = GG(GG10, GG13, GG12, GG11, this.x[2], 9, -51403784);
        int GG15 = GG(GG11, GG14, GG13, GG12, this.x[7], 14, 1735328473);
        int GG16 = GG(GG12, GG15, GG14, GG13, this.x[12], 20, -1926607734);
        int HH = HH(GG13, GG16, GG15, GG14, this.x[5], 4, -378558);
        int HH2 = HH(GG14, HH, GG16, GG15, this.x[8], 11, -2022574463);
        int HH3 = HH(GG15, HH2, HH, GG16, this.x[11], 16, 1839030562);
        int HH4 = HH(GG16, HH3, HH2, HH, this.x[14], 23, -35309556);
        int HH5 = HH(HH, HH4, HH3, HH2, this.x[1], 4, -1530992060);
        int HH6 = HH(HH2, HH5, HH4, HH3, this.x[4], 11, 1272893353);
        int HH7 = HH(HH3, HH6, HH5, HH4, this.x[7], 16, -155497632);
        int HH8 = HH(HH4, HH7, HH6, HH5, this.x[10], 23, -1094730640);
        int HH9 = HH(HH5, HH8, HH7, HH6, this.x[13], 4, 681279174);
        int HH10 = HH(HH6, HH9, HH8, HH7, this.x[0], 11, -358537222);
        int HH11 = HH(HH7, HH10, HH9, HH8, this.x[3], 16, -722521979);
        int HH12 = HH(HH8, HH11, HH10, HH9, this.x[6], 23, 76029189);
        int HH13 = HH(HH9, HH12, HH11, HH10, this.x[9], 4, -640364487);
        int HH14 = HH(HH10, HH13, HH12, HH11, this.x[12], 11, -421815835);
        int HH15 = HH(HH11, HH14, HH13, HH12, this.x[15], 16, 530742520);
        int HH16 = HH(HH12, HH15, HH14, HH13, this.x[2], 23, -995338651);
        int II = II(HH13, HH16, HH15, HH14, this.x[0], 6, -198630844);
        int II2 = II(HH14, II, HH16, HH15, this.x[7], 10, 1126891415);
        int II3 = II(HH15, II2, II, HH16, this.x[14], 15, -1416354905);
        int II4 = II(HH16, II3, II2, II, this.x[5], 21, -57434055);
        int II5 = II(II, II4, II3, II2, this.x[12], 6, 1700485571);
        int II6 = II(II2, II5, II4, II3, this.x[3], 10, -1894986606);
        int II7 = II(II3, II6, II5, II4, this.x[10], 15, -1051523);
        int II8 = II(II4, II7, II6, II5, this.x[1], 21, -2054922799);
        int II9 = II(II5, II8, II7, II6, this.x[8], 6, 1873313359);
        int II10 = II(II6, II9, II8, II7, this.x[15], 10, -30611744);
        int II11 = II(II7, II10, II9, II8, this.x[6], 15, -1560198380);
        int II12 = II(II8, II11, II10, II9, this.x[13], 21, 1309151649);
        int II13 = II(II9, II12, II11, II10, this.x[4], 6, -145523070);
        int II14 = II(II10, II13, II12, II11, this.x[11], 10, -1120210379);
        int II15 = II(II11, II14, II13, II12, this.x[2], 15, 718787259);
        int II16 = II(II12, II15, II14, II13, this.x[9], 21, -343485551);
        this.state0 += II13;
        this.state1 += II16;
        this.state2 += II15;
        this.state3 += II14;
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public final void digest(byte[] bArr, int i) {
        byte[] bArr2 = new byte[8];
        encode(bArr2, 0, (int) (this.count << 3));
        encode(bArr2, 4, (int) (this.count >> 29));
        int i2 = ((int) this.count) & 63;
        update(padding, 0, i2 < 56 ? 56 - i2 : 120 - i2);
        update(bArr2, 0, 8);
        encode(bArr, i, this.state0);
        encode(bArr, i + 4, this.state1);
        encode(bArr, i + 8, this.state2);
        encode(bArr, i + 12, this.state3);
        reset();
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public final int getDigestLength() {
        return 16;
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public final void reset() {
        this.count = 0L;
        this.state0 = 1732584193;
        this.state1 = -271733879;
        this.state2 = -1732584194;
        this.state3 = 271733878;
        for (int i = 0; i < 16; i++) {
            this.x[i] = 0;
        }
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public final void update(byte b) {
        long j = this.count;
        int i = 64 - ((int) (63 & j));
        this.count = j + 1;
        byte[] bArr = this.block;
        bArr[64 - i] = b;
        if (i == 1) {
            transform(bArr, 0);
        }
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public final void update(byte[] bArr, int i, int i2) {
        long j = this.count;
        int i3 = 64 - ((int) (63 & j));
        this.count = j + i2;
        while (i2 > 0) {
            if (i2 < i3) {
                System.arraycopy(bArr, i, this.block, 64 - i3, i2);
                return;
            }
            if (i3 == 64) {
                transform(bArr, i);
            } else {
                System.arraycopy(bArr, i, this.block, 64 - i3, i3);
                transform(this.block, 0);
            }
            i += i3;
            i2 -= i3;
            i3 = 64;
        }
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public final void update(byte[] bArr) {
        update(bArr, 0, bArr.length);
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public final void digest(byte[] bArr) {
        digest(bArr, 0);
    }
}
