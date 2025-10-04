package net.i2p.crypto.eddsa.spec;

import java.security.spec.KeySpec;
import net.i2p.crypto.eddsa.math.GroupElement;

/* loaded from: classes3.dex */
public class EdDSAPublicKeySpec implements KeySpec {
    private final GroupElement A;
    private GroupElement Aneg = null;
    private final EdDSAParameterSpec spec;

    public EdDSAPublicKeySpec(byte[] bArr, EdDSAParameterSpec edDSAParameterSpec) {
        if (bArr.length == edDSAParameterSpec.getCurve().getField().getb() / 8) {
            this.A = new GroupElement(edDSAParameterSpec.getCurve(), bArr);
            this.spec = edDSAParameterSpec;
            return;
        }
        throw new IllegalArgumentException("public-key length is wrong");
    }

    public GroupElement getA() {
        return this.A;
    }

    public GroupElement getNegativeA() {
        GroupElement groupElement = this.Aneg;
        if (groupElement == null) {
            GroupElement negate = this.A.negate();
            this.Aneg = negate;
            return negate;
        }
        return groupElement;
    }

    public EdDSAParameterSpec getParams() {
        return this.spec;
    }

    public EdDSAPublicKeySpec(GroupElement groupElement, EdDSAParameterSpec edDSAParameterSpec) {
        this.A = groupElement;
        this.spec = edDSAParameterSpec;
    }
}
