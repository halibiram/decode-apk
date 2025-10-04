package com.trilead.ssh2.crypto.digest;

import java.security.MessageDigest;

/* loaded from: classes3.dex */
public class JreMessageDigestWrapper implements Digest {
    private final MessageDigest digest;

    public JreMessageDigestWrapper(MessageDigest messageDigest) {
        this.digest = messageDigest;
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public void digest(byte[] bArr) {
        System.arraycopy(this.digest.digest(), 0, bArr, 0, bArr.length);
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public int getDigestLength() {
        return this.digest.getDigestLength();
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public void reset() {
        this.digest.reset();
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public void update(byte b) {
        this.digest.update(b);
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public void update(byte[] bArr) {
        this.digest.update(bArr);
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public void digest(byte[] bArr, int i) {
        System.arraycopy(this.digest.digest(), 0, bArr, i, bArr.length);
    }

    @Override // com.trilead.ssh2.crypto.digest.Digest
    public void update(byte[] bArr, int i, int i2) {
        this.digest.update(bArr, i, i2);
    }
}
