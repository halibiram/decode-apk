package net.i2p.crypto.eddsa.spec;

import com.google.common.primitives.SignedBytes;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.spec.KeySpec;
import java.util.Arrays;
import net.i2p.crypto.eddsa.math.GroupElement;
import okio.Utf8;

/* loaded from: classes3.dex */
public class EdDSAPrivateKeySpec implements KeySpec {
    private final GroupElement A;
    private final byte[] a;
    private final byte[] h;
    private final byte[] seed;
    private final EdDSAParameterSpec spec;

    public EdDSAPrivateKeySpec(byte[] bArr, EdDSAParameterSpec edDSAParameterSpec) {
        if (bArr.length == edDSAParameterSpec.getCurve().getField().getb() / 8) {
            this.spec = edDSAParameterSpec;
            this.seed = bArr;
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(edDSAParameterSpec.getHashAlgorithm());
                int bVar = edDSAParameterSpec.getCurve().getField().getb();
                byte[] digest = messageDigest.digest(bArr);
                this.h = digest;
                digest[0] = (byte) (digest[0] & 248);
                int i = (bVar / 8) - 1;
                digest[i] = (byte) (digest[i] & Utf8.REPLACEMENT_BYTE);
                int i2 = (bVar / 8) - 1;
                digest[i2] = (byte) (digest[i2] | SignedBytes.MAX_POWER_OF_TWO);
                byte[] copyOfRange = Arrays.copyOfRange(digest, 0, bVar / 8);
                this.a = copyOfRange;
                this.A = edDSAParameterSpec.getB().scalarMultiply(copyOfRange);
                return;
            } catch (NoSuchAlgorithmException unused) {
                throw new IllegalArgumentException("Unsupported hash algorithm");
            }
        }
        throw new IllegalArgumentException("seed length is wrong");
    }

    public GroupElement getA() {
        return this.A;
    }

    public byte[] getH() {
        return this.h;
    }

    public EdDSAParameterSpec getParams() {
        return this.spec;
    }

    public byte[] getSeed() {
        return this.seed;
    }

    public byte[] geta() {
        return this.a;
    }

    public EdDSAPrivateKeySpec(EdDSAParameterSpec edDSAParameterSpec, byte[] bArr) {
        if (bArr.length == edDSAParameterSpec.getCurve().getField().getb() / 4) {
            this.seed = null;
            this.h = bArr;
            this.spec = edDSAParameterSpec;
            int bVar = edDSAParameterSpec.getCurve().getField().getb();
            bArr[0] = (byte) (bArr[0] & 248);
            int i = bVar / 8;
            int i2 = i - 1;
            byte b = (byte) (bArr[i2] & Utf8.REPLACEMENT_BYTE);
            bArr[i2] = b;
            bArr[i2] = (byte) (b | SignedBytes.MAX_POWER_OF_TWO);
            byte[] copyOfRange = Arrays.copyOfRange(bArr, 0, i);
            this.a = copyOfRange;
            this.A = edDSAParameterSpec.getB().scalarMultiply(copyOfRange);
            return;
        }
        throw new IllegalArgumentException("hash length is wrong");
    }

    public EdDSAPrivateKeySpec(byte[] bArr, byte[] bArr2, byte[] bArr3, GroupElement groupElement, EdDSAParameterSpec edDSAParameterSpec) {
        this.seed = bArr;
        this.h = bArr2;
        this.a = bArr3;
        this.A = groupElement;
        this.spec = edDSAParameterSpec;
    }
}
