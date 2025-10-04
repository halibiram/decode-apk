package com.trilead.ssh2.crypto.digest;

import com.panda912.muddy.ObfuscatedString;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;

/* loaded from: classes3.dex */
public class HashForSSH2Types {

    @Deprecated
    Digest md;
    private final Digest messageDigest;

    public HashForSSH2Types(Digest digest) {
        this.md = digest;
        this.messageDigest = digest;
    }

    private static MessageDigest createMessageDigest(String str) {
        try {
            return MessageDigest.getInstance(str);
        } catch (GeneralSecurityException e) {
            throw new IllegalArgumentException(new ObfuscatedString(new long[]{-94551492297629287L, -7873382515757663974L, 7062708141976790365L, -5135452111646049938L, 7456920726108799494L, -4314610973856390869L}).toString(), e);
        }
    }

    public byte[] getDigest() {
        byte[] bArr = new byte[this.messageDigest.getDigestLength()];
        getDigest(bArr);
        return bArr;
    }

    public int getDigestLength() {
        return this.messageDigest.getDigestLength();
    }

    public void reset() {
        this.messageDigest.reset();
    }

    public void updateBigInt(BigInteger bigInteger) {
        updateByteString(bigInteger.toByteArray());
    }

    public void updateByte(byte b) {
        this.messageDigest.update(new byte[]{b});
    }

    public void updateByteString(byte[] bArr) {
        updateUINT32(bArr.length);
        updateBytes(bArr);
    }

    public void updateBytes(byte[] bArr) {
        this.messageDigest.update(bArr);
    }

    public void updateUINT32(int i) {
        this.messageDigest.update((byte) (i >> 24));
        this.messageDigest.update((byte) (i >> 16));
        this.messageDigest.update((byte) (i >> 8));
        this.messageDigest.update((byte) i);
    }

    public void getDigest(byte[] bArr) {
        getDigest(bArr, 0);
    }

    public HashForSSH2Types(String str) {
        this(new JreMessageDigestWrapper(createMessageDigest(str)));
    }

    public void getDigest(byte[] bArr, int i) {
        this.messageDigest.digest(bArr, i);
    }
}
