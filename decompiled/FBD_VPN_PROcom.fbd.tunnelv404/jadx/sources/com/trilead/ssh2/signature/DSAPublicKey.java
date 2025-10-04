package com.trilead.ssh2.signature;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class DSAPublicKey {
    private BigInteger g;
    private BigInteger p;
    private BigInteger q;
    private BigInteger y;

    public DSAPublicKey(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.p = bigInteger;
        this.q = bigInteger2;
        this.g = bigInteger3;
        this.y = bigInteger4;
    }

    public BigInteger getG() {
        return this.g;
    }

    public BigInteger getP() {
        return this.p;
    }

    public BigInteger getQ() {
        return this.q;
    }

    public BigInteger getY() {
        return this.y;
    }
}
