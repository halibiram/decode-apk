package com.trilead.ssh2.signature;

import java.math.BigInteger;

@Deprecated
/* loaded from: classes3.dex */
public class DSAPrivateKey {
    private BigInteger g;
    private BigInteger p;
    private BigInteger q;
    private BigInteger x;
    private BigInteger y;

    public DSAPrivateKey(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
        this.p = bigInteger;
        this.q = bigInteger2;
        this.g = bigInteger3;
        this.y = bigInteger4;
        this.x = bigInteger5;
    }

    public BigInteger getG() {
        return this.g;
    }

    public BigInteger getP() {
        return this.p;
    }

    public DSAPublicKey getPublicKey() {
        return new DSAPublicKey(this.p, this.q, this.g, this.y);
    }

    public BigInteger getQ() {
        return this.q;
    }

    public BigInteger getX() {
        return this.x;
    }

    public BigInteger getY() {
        return this.y;
    }
}
