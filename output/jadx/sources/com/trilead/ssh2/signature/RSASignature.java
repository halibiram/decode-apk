package com.trilead.ssh2.signature;

import java.math.BigInteger;

@Deprecated
/* loaded from: classes3.dex */
public class RSASignature {
    BigInteger s;

    public RSASignature(BigInteger bigInteger) {
        this.s = bigInteger;
    }

    public BigInteger getS() {
        return this.s;
    }
}
