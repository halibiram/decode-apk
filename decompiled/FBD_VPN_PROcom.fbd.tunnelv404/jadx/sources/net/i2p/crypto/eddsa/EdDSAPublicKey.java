package net.i2p.crypto.eddsa;

import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import java.util.Arrays;
import net.i2p.crypto.eddsa.math.GroupElement;
import net.i2p.crypto.eddsa.spec.EdDSANamedCurveTable;
import net.i2p.crypto.eddsa.spec.EdDSAParameterSpec;
import net.i2p.crypto.eddsa.spec.EdDSAPublicKeySpec;

/* loaded from: classes3.dex */
public class EdDSAPublicKey implements EdDSAKey, PublicKey {
    private static final int IDLEN_BYTE = 3;
    private static final int OID_BYTE = 8;
    private static final int OID_ED25519 = 112;
    private static final int OID_OLD = 100;
    private static final long serialVersionUID = 9837459837498475L;
    private final GroupElement A;
    private final byte[] Abyte;
    private GroupElement Aneg;
    private final EdDSAParameterSpec edDsaSpec;

    public EdDSAPublicKey(EdDSAPublicKeySpec edDSAPublicKeySpec) {
        this.Aneg = null;
        GroupElement a = edDSAPublicKeySpec.getA();
        this.A = a;
        this.Abyte = a.toByteArray();
        this.edDsaSpec = edDSAPublicKeySpec.getParams();
    }

    private static byte[] decode(byte[] bArr) {
        int i;
        byte b = 8;
        try {
            byte b2 = bArr[8];
            if (b2 == 100) {
                i = 47;
            } else if (b2 == 112) {
                if (bArr[3] == 7) {
                    i = 46;
                    b = 7;
                } else {
                    i = 44;
                    b = 5;
                }
            } else {
                throw new InvalidKeySpecException("unsupported key spec");
            }
            if (bArr.length == i) {
                if (bArr[0] == 48 && bArr[1] == i - 2 && bArr[2] == 48 && bArr[3] == b && bArr[4] == 6 && bArr[5] == 3 && bArr[6] == 43 && bArr[7] == 101) {
                    int i2 = 11;
                    if (b2 == 100) {
                        if (bArr[9] == 10 && bArr[10] == 1 && bArr[11] == 1) {
                            i2 = 12;
                        } else {
                            throw new InvalidKeySpecException("unsupported key spec");
                        }
                    } else if (b == 7) {
                        if (bArr[9] != 5 || bArr[10] != 0) {
                            throw new InvalidKeySpecException("unsupported key spec");
                        }
                    } else {
                        i2 = 9;
                    }
                    int i3 = i2 + 1;
                    if (bArr[i2] == 3) {
                        int i4 = i2 + 2;
                        if (bArr[i3] == 33) {
                            int i5 = i2 + 3;
                            if (bArr[i4] == 0) {
                                byte[] bArr2 = new byte[32];
                                System.arraycopy(bArr, i5, bArr2, 0, 32);
                                return bArr2;
                            }
                        }
                    }
                    throw new InvalidKeySpecException("unsupported key spec");
                }
                throw new InvalidKeySpecException("unsupported key spec");
            }
            throw new InvalidKeySpecException("invalid key spec length");
        } catch (IndexOutOfBoundsException e) {
            throw new InvalidKeySpecException(e);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof EdDSAPublicKey)) {
            return false;
        }
        EdDSAPublicKey edDSAPublicKey = (EdDSAPublicKey) obj;
        if (Arrays.equals(this.Abyte, edDSAPublicKey.getAbyte()) && this.edDsaSpec.equals(edDSAPublicKey.getParams())) {
            return true;
        }
        return false;
    }

    public GroupElement getA() {
        return this.A;
    }

    public byte[] getAbyte() {
        return this.Abyte;
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "EdDSA";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        if (!this.edDsaSpec.equals(EdDSANamedCurveTable.ED_25519_CURVE_SPEC)) {
            return null;
        }
        byte[] bArr = this.Abyte;
        int length = bArr.length;
        byte[] bArr2 = new byte[length + 12];
        bArr2[0] = 48;
        bArr2[1] = (byte) (length + 10);
        bArr2[2] = 48;
        bArr2[3] = 5;
        bArr2[4] = 6;
        bArr2[5] = 3;
        bArr2[6] = 43;
        bArr2[7] = 101;
        bArr2[8] = 112;
        bArr2[9] = 3;
        bArr2[10] = (byte) (bArr.length + 1);
        bArr2[11] = 0;
        System.arraycopy(bArr, 0, bArr2, 12, bArr.length);
        return bArr2;
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
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

    @Override // net.i2p.crypto.eddsa.EdDSAKey
    public EdDSAParameterSpec getParams() {
        return this.edDsaSpec;
    }

    public int hashCode() {
        return Arrays.hashCode(this.Abyte);
    }

    public EdDSAPublicKey(X509EncodedKeySpec x509EncodedKeySpec) {
        this(new EdDSAPublicKeySpec(decode(x509EncodedKeySpec.getEncoded()), EdDSANamedCurveTable.ED_25519_CURVE_SPEC));
    }
}
