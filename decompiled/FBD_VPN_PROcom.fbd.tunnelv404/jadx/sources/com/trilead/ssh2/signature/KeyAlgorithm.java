package com.trilead.ssh2.signature;

import com.panda912.muddy.ObfuscatedString;
import com.trilead.ssh2.crypto.CertificateDecoder;
import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.Signature;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class KeyAlgorithm<U extends PublicKey, R extends PrivateKey> {
    private final String keyFormat;
    private final Class<R> keyType;
    private final Provider provider;
    private final String signatureAlgorithm;

    public KeyAlgorithm(String str, String str2, Class<R> cls) {
        this(str, str2, cls, null);
    }

    public abstract U decodePublicKey(byte[] bArr);

    public abstract byte[] decodeSignature(byte[] bArr);

    public abstract byte[] encodePublicKey(U u);

    public abstract byte[] encodeSignature(byte[] bArr);

    public byte[] generateSignature(byte[] bArr, R r, SecureRandom secureRandom) {
        Signature signature;
        try {
            Provider provider = this.provider;
            if (provider == null) {
                signature = Signature.getInstance(this.signatureAlgorithm);
            } else {
                signature = Signature.getInstance(this.signatureAlgorithm, provider);
            }
            signature.initSign(r, secureRandom);
            signature.update(bArr);
            return signature.sign();
        } catch (GeneralSecurityException e) {
            throw new IOException(new ObfuscatedString(new long[]{7554112304186390085L, -3484238732229480750L, -4395458773300357085L, 1968180258659420320L, -5233398639842201308L}).toString(), e);
        }
    }

    public abstract List<CertificateDecoder> getCertificateDecoders();

    public String getKeyFormat() {
        return this.keyFormat;
    }

    public boolean supportsKey(PrivateKey privateKey) {
        return this.keyType.isAssignableFrom(privateKey.getClass());
    }

    public boolean verifySignature(byte[] bArr, byte[] bArr2, U u) {
        Signature signature;
        try {
            Provider provider = this.provider;
            if (provider == null) {
                signature = Signature.getInstance(this.signatureAlgorithm);
            } else {
                signature = Signature.getInstance(this.signatureAlgorithm, provider);
            }
            signature.initVerify(u);
            signature.update(bArr);
            return signature.verify(bArr2);
        } catch (GeneralSecurityException e) {
            throw new IOException(new ObfuscatedString(new long[]{-4410640796403772671L, 8552142632238835404L, -56921918857154532L, -6100768216883485082L, 9186029993614146058L}).toString(), e);
        }
    }

    public KeyAlgorithm(String str, String str2, Class<R> cls, Provider provider) {
        this.signatureAlgorithm = str;
        this.keyFormat = str2;
        this.keyType = cls;
        this.provider = provider;
    }
}
