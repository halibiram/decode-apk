package com.trilead.ssh2.crypto.cipher;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes3.dex */
public class CBCMode implements BlockCipher {
    int blockSize;
    byte[] cbc_vector;
    boolean doEncrypt;
    BlockCipher tc;
    byte[] tmp_vector;

    public CBCMode(BlockCipher blockCipher, byte[] bArr, boolean z) {
        this.tc = blockCipher;
        int blockSize = blockCipher.getBlockSize();
        this.blockSize = blockSize;
        this.doEncrypt = z;
        if (blockSize == bArr.length) {
            byte[] bArr2 = new byte[blockSize];
            this.cbc_vector = bArr2;
            this.tmp_vector = new byte[blockSize];
            System.arraycopy(bArr, 0, bArr2, 0, blockSize);
            return;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{8725739878907848599L, 8622852188864318289L, -7301154847480071290L}).toString());
        sb.append(this.blockSize);
        sb.append(new ObfuscatedString(new long[]{-4121128109955015822L, -8080254364768281811L, -5809303273015178502L, 8443685613587667435L}).toString());
        sb.append(bArr.length);
        throw new IllegalArgumentException(AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-6269892388822333590L, -5917608248697968253L}), sb));
    }

    private void decryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        System.arraycopy(bArr, i, this.tmp_vector, 0, this.blockSize);
        this.tc.transformBlock(bArr, i, bArr2, i2);
        for (int i3 = 0; i3 < this.blockSize; i3++) {
            int i4 = i2 + i3;
            bArr2[i4] = (byte) (bArr2[i4] ^ this.cbc_vector[i3]);
        }
        byte[] bArr3 = this.cbc_vector;
        this.cbc_vector = this.tmp_vector;
        this.tmp_vector = bArr3;
    }

    private void encryptBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        for (int i3 = 0; i3 < this.blockSize; i3++) {
            byte[] bArr3 = this.cbc_vector;
            bArr3[i3] = (byte) (bArr3[i3] ^ bArr[i + i3]);
        }
        this.tc.transformBlock(this.cbc_vector, 0, bArr2, i2);
        System.arraycopy(bArr2, i2, this.cbc_vector, 0, this.blockSize);
    }

    @Override // com.trilead.ssh2.crypto.cipher.BlockCipher
    public int getBlockSize() {
        return this.blockSize;
    }

    @Override // com.trilead.ssh2.crypto.cipher.BlockCipher
    public void init(boolean z, byte[] bArr) {
    }

    @Override // com.trilead.ssh2.crypto.cipher.BlockCipher
    public void transformBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        if (this.doEncrypt) {
            encryptBlock(bArr, i, bArr2, i2);
        } else {
            decryptBlock(bArr, i, bArr2, i2);
        }
    }
}
