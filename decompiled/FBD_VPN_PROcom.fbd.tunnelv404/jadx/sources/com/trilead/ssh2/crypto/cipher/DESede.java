package com.trilead.ssh2.crypto.cipher;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes3.dex */
public class DESede extends DES {
    private boolean encrypt;
    private int[] key1 = null;
    private int[] key2 = null;
    private int[] key3 = null;

    @Override // com.trilead.ssh2.crypto.cipher.DES
    public String getAlgorithmName() {
        return new ObfuscatedString(new long[]{-7699151023830710502L, 1457404026205286698L}).toString();
    }

    @Override // com.trilead.ssh2.crypto.cipher.DES, com.trilead.ssh2.crypto.cipher.BlockCipher
    public int getBlockSize() {
        return 8;
    }

    @Override // com.trilead.ssh2.crypto.cipher.DES, com.trilead.ssh2.crypto.cipher.BlockCipher
    public void init(boolean z, byte[] bArr) {
        this.key1 = generateWorkingKey(z, bArr, 0);
        this.key2 = generateWorkingKey(!z, bArr, 8);
        this.key3 = generateWorkingKey(z, bArr, 16);
        this.encrypt = z;
    }

    @Override // com.trilead.ssh2.crypto.cipher.DES
    public void reset() {
    }

    @Override // com.trilead.ssh2.crypto.cipher.DES, com.trilead.ssh2.crypto.cipher.BlockCipher
    public void transformBlock(byte[] bArr, int i, byte[] bArr2, int i2) {
        int[] iArr = this.key1;
        if (iArr != null) {
            if (this.encrypt) {
                desFunc(iArr, bArr, i, bArr2, i2);
                desFunc(this.key2, bArr2, i2, bArr2, i2);
                desFunc(this.key3, bArr2, i2, bArr2, i2);
                return;
            } else {
                desFunc(this.key3, bArr, i, bArr2, i2);
                desFunc(this.key2, bArr2, i2, bArr2, i2);
                desFunc(this.key1, bArr2, i2, bArr2, i2);
                return;
            }
        }
        throw new IllegalStateException(new ObfuscatedString(new long[]{-2020684842244575241L, -8767708983705516809L, 5011928084488508817L, 8856725164191042132L, -5778655902890410678L}).toString());
    }
}
