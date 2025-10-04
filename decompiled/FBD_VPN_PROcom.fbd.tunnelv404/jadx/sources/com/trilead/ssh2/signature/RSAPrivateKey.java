package com.trilead.ssh2.signature;

import com.panda912.muddy.ObfuscatedString;
import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.KeyPair;
import java.security.spec.RSAPrivateKeySpec;
import java.security.spec.RSAPublicKeySpec;

/* loaded from: classes3.dex */
public class RSAPrivateKey {
    private BigInteger d;
    private BigInteger e;
    private BigInteger n;

    public RSAPrivateKey(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
        this.d = bigInteger;
        this.e = bigInteger2;
        this.n = bigInteger3;
    }

    public BigInteger getD() {
        return this.d;
    }

    public BigInteger getE() {
        return this.e;
    }

    public BigInteger getN() {
        return this.n;
    }

    public RSAPublicKey getPublicKey() {
        return new RSAPublicKey(this.e, this.n);
    }

    public KeyPair toJCEKeyPair() {
        KeyFactory keyFactory = KeyFactory.getInstance(new ObfuscatedString(new long[]{5478023428433904972L, -8707043566441742934L}).toString());
        return new KeyPair(keyFactory.generatePublic(new RSAPublicKeySpec(getN(), getE())), keyFactory.generatePrivate(new RSAPrivateKeySpec(getN(), getD())));
    }
}
