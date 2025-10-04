package net.i2p.crypto.eddsa.spec;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;
import net.i2p.crypto.eddsa.math.Curve;
import net.i2p.crypto.eddsa.math.GroupElement;
import net.i2p.crypto.eddsa.math.ScalarOps;

/* loaded from: classes3.dex */
public class EdDSAParameterSpec implements AlgorithmParameterSpec, Serializable {
    private static final long serialVersionUID = 8274987108472012L;
    private final GroupElement B;
    private final Curve curve;
    private final String hashAlgo;
    private final ScalarOps sc;

    public EdDSAParameterSpec(Curve curve, String str, ScalarOps scalarOps, GroupElement groupElement) {
        try {
            if (curve.getField().getb() / 4 == MessageDigest.getInstance(str).getDigestLength()) {
                this.curve = curve;
                this.hashAlgo = str;
                this.sc = scalarOps;
                this.B = groupElement;
                return;
            }
            throw new IllegalArgumentException("Hash output is not 2b-bit");
        } catch (NoSuchAlgorithmException unused) {
            throw new IllegalArgumentException("Unsupported hash algorithm");
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EdDSAParameterSpec)) {
            return false;
        }
        EdDSAParameterSpec edDSAParameterSpec = (EdDSAParameterSpec) obj;
        if (this.hashAlgo.equals(edDSAParameterSpec.getHashAlgorithm()) && this.curve.equals(edDSAParameterSpec.getCurve()) && this.B.equals(edDSAParameterSpec.getB())) {
            return true;
        }
        return false;
    }

    public GroupElement getB() {
        return this.B;
    }

    public Curve getCurve() {
        return this.curve;
    }

    public String getHashAlgorithm() {
        return this.hashAlgo;
    }

    public ScalarOps getScalarOps() {
        return this.sc;
    }

    public int hashCode() {
        return (this.hashAlgo.hashCode() ^ this.curve.hashCode()) ^ this.B.hashCode();
    }
}
