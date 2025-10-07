package com.trilead.ssh2.signature;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class RSAPublicKey {
    BigInteger e;
    BigInteger n;

    public RSAPublicKey(BigInteger bigInteger, BigInteger bigInteger2) {
        this.e = bigInteger;
        this.n = bigInteger2;
    }

    public BigInteger getE() {
        return this.e;
    }

    public BigInteger getN() {
        return this.n;
    }
}
