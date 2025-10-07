package com.trilead.ssh2.signature;

import java.math.BigInteger;

@Deprecated
/* loaded from: classes3.dex */
public class DSASignature {
    private BigInteger r;
    private BigInteger s;

    public DSASignature(BigInteger bigInteger, BigInteger bigInteger2) {
        this.r = bigInteger;
        this.s = bigInteger2;
    }

    public BigInteger getR() {
        return this.r;
    }

    public BigInteger getS() {
        return this.s;
    }
}
