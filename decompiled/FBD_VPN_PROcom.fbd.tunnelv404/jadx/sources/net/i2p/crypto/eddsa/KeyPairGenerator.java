package net.i2p.crypto.eddsa;

import defpackage.AbstractC0362x4440ab85;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.KeyPairGeneratorSpi;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Hashtable;
import net.i2p.crypto.eddsa.spec.EdDSAGenParameterSpec;
import net.i2p.crypto.eddsa.spec.EdDSANamedCurveSpec;
import net.i2p.crypto.eddsa.spec.EdDSANamedCurveTable;
import net.i2p.crypto.eddsa.spec.EdDSAParameterSpec;
import net.i2p.crypto.eddsa.spec.EdDSAPrivateKeySpec;
import net.i2p.crypto.eddsa.spec.EdDSAPublicKeySpec;

/* loaded from: classes3.dex */
public final class KeyPairGenerator extends KeyPairGeneratorSpi {
    private static final int DEFAULT_KEYSIZE = 256;
    private static final Hashtable<Integer, AlgorithmParameterSpec> edParameters;
    private EdDSAParameterSpec edParams;
    private boolean initialized;
    private SecureRandom random;

    static {
        Hashtable<Integer, AlgorithmParameterSpec> hashtable = new Hashtable<>();
        edParameters = hashtable;
        hashtable.put(256, new EdDSAGenParameterSpec(EdDSANamedCurveTable.ED_25519));
    }

    public EdDSANamedCurveSpec createNamedCurveSpec(String str) {
        EdDSANamedCurveSpec byName = EdDSANamedCurveTable.getByName(str);
        if (byName != null) {
            return byName;
        }
        throw new InvalidAlgorithmParameterException(AbstractC0362x4440ab85.m2952x5ac5058d("unknown curve name: ", str));
    }

    @Override // java.security.KeyPairGeneratorSpi
    public KeyPair generateKeyPair() {
        if (!this.initialized) {
            initialize(256, new SecureRandom());
        }
        byte[] bArr = new byte[this.edParams.getCurve().getField().getb() / 8];
        this.random.nextBytes(bArr);
        EdDSAPrivateKeySpec edDSAPrivateKeySpec = new EdDSAPrivateKeySpec(bArr, this.edParams);
        return new KeyPair(new EdDSAPublicKey(new EdDSAPublicKeySpec(edDSAPrivateKeySpec.getA(), this.edParams)), new EdDSAPrivateKey(edDSAPrivateKeySpec));
    }

    @Override // java.security.KeyPairGeneratorSpi
    public void initialize(int i, SecureRandom secureRandom) {
        AlgorithmParameterSpec algorithmParameterSpec = edParameters.get(Integer.valueOf(i));
        if (algorithmParameterSpec != null) {
            try {
                initialize(algorithmParameterSpec, secureRandom);
                return;
            } catch (InvalidAlgorithmParameterException unused) {
                throw new InvalidParameterException("key type not configurable.");
            }
        }
        throw new InvalidParameterException("unknown key type.");
    }

    @Override // java.security.KeyPairGeneratorSpi
    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) {
        if (algorithmParameterSpec instanceof EdDSAParameterSpec) {
            this.edParams = (EdDSAParameterSpec) algorithmParameterSpec;
        } else if (algorithmParameterSpec instanceof EdDSAGenParameterSpec) {
            this.edParams = createNamedCurveSpec(((EdDSAGenParameterSpec) algorithmParameterSpec).getName());
        } else {
            throw new InvalidAlgorithmParameterException("parameter object not a EdDSAParameterSpec");
        }
        this.random = secureRandom;
        this.initialized = true;
    }
}
