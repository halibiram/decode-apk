package org.spongycastle.crypto.digests;

import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class SHA3Digest extends KeccakDigest {
    public SHA3Digest() {
        this(256);
    }

    private static int checkBitLength(int i) {
        if (i != 224 && i != 256 && i != 384 && i != 512) {
            throw new IllegalArgumentException(AbstractC0749x8313616e.m3330x95f25580(i, "'bitLength' ", " not supported for SHA-3"));
        }
        return i;
    }

    @Override // org.spongycastle.crypto.digests.KeccakDigest, org.spongycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        absorbBits(2, 2);
        return super.doFinal(bArr, i);
    }

    @Override // org.spongycastle.crypto.digests.KeccakDigest, org.spongycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA3-" + this.fixedOutputLength;
    }

    public SHA3Digest(int i) {
        super(checkBitLength(i));
    }

    public SHA3Digest(SHA3Digest sHA3Digest) {
        super(sHA3Digest);
    }

    @Override // org.spongycastle.crypto.digests.KeccakDigest
    public int doFinal(byte[] bArr, int i, byte b, int i2) {
        if (i2 >= 0 && i2 <= 7) {
            int i3 = (b & ((1 << i2) - 1)) | (2 << i2);
            int i4 = 2 + i2;
            if (i4 >= 8) {
                absorb(new byte[]{(byte) i3}, 0, 1);
                i4 = i2 - 6;
                i3 >>>= 8;
            }
            return super.doFinal(bArr, i, (byte) i3, i4);
        }
        throw new IllegalArgumentException("'partialBits' must be in the range [0,7]");
    }
}
