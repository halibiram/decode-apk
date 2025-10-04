package com.trilead.ssh2.crypto.cipher;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class CTRMode implements BlockCipher {
    byte[] X;
    byte[] Xenc;
    BlockCipher bc;
    int blockSize;
    int count = 0;
    boolean doEncrypt;

    public CTRMode(BlockCipher blockCipher, byte[] bArr, boolean z) {
        this.bc = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.doEncrypt = z;
        if (blockSize == bArr.length) {
            byte[] bArr2 = new byte[blockSize];
            this.X = bArr2;
            this.Xenc = new byte[blockSize];
            System.arraycopy(bArr, 0, bArr2, 0, blockSize);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{9205213055282583369L, 3179956427141663337L, -2025517213261921369L}).toString());
        sb.append(this.blockSize);
        sb.append(new ObfuscatedString(new long[]{7179569856927281929L, -4209676885684677230L, -6108520128487233927L, 4568790220537353293L}).toString());
        sb.append(bArr.length);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-4417920495570621232L, 3470154905278094703L}), sb));
    }

    @Override // com.trilead.ssh2.crypto.cipher.BlockCipher
    public final int getBlockSize() {
        return this.blockSize;
    }

    @Override // com.trilead.ssh2.crypto.cipher.BlockCipher
    public void init(boolean z, byte[] bArr) {
    }

    @Override // com.trilead.ssh2.crypto.cipher.BlockCipher
    public final void transformBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3;
        int i4 = 0;
        this.bc.transformBlock(this.X, 0, this.Xenc, 0);
        while (true) {
            i3 = this.blockSize;
            if (i4 >= i3) {
                break;
            }
            bArr2[i2 + i4] = (byte) (bArr[i + i4] ^ this.Xenc[i4]);
            i4++;
        }
        for (int i5 = i3 - 1; i5 >= 0; i5--) {
            byte[] bArr3 = this.X;
            byte b = (byte) (bArr3[i5] + 1);
            bArr3[i5] = b;
            if (b != 0) {
                return;
            }
        }
    }
}
