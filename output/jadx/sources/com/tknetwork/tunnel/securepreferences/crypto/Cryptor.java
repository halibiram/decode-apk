package com.tknetwork.tunnel.securepreferences.crypto;

import android.util.Base64;
import com.panda912.muddy.ObfuscatedString;
import com.tknetwork.tunnel.securepreferences.model.SecurityConfig;
import java.security.SecureRandom;

/* loaded from: classes3.dex */
public final class Cryptor {
    private static final int INDEX_CIPHER_TEXT = 2;
    private static final int INDEX_IV = 1;
    private static final int INDEX_SALT = 0;
    private static final String SPLITTER = new ObfuscatedString(new long[]{1916903664047602311L, 6909905340712985968L}).toString();
    private final CipherService mCipherService;
    private final byte[] mSalt;
    private final SecurityConfig mSecurityConfig;

    private Cryptor(SecurityConfig securityConfig) {
        this.mSecurityConfig = securityConfig;
        this.mCipherService = CipherServiceImpl.getInstance(securityConfig.getAlgorithm());
        byte[] bArr = new byte[securityConfig.getSaltSize()];
        this.mSalt = bArr;
        new SecureRandom().nextBytes(bArr);
    }

    private byte[] fromBase64(String str) {
        return Base64.decode(str, 2);
    }

    public static Cryptor initWithSecurityConfig(SecurityConfig securityConfig) {
        return new Cryptor(securityConfig);
    }

    private String toBase64(byte[] bArr) {
        return Base64.encodeToString(bArr, 2);
    }

    public byte[] decryptFromBase64(String str) {
        String[] split = str.split(new ObfuscatedString(new long[]{8474650117154922074L, -8389658782341488116L}).toString());
        if (split.length == 3) {
            byte[] fromBase64 = fromBase64(split[0]);
            fromBase64(split[1]);
            fromBase64(split[2]);
            return fromBase64;
        }
        throw new IllegalArgumentException(new ObfuscatedString(new long[]{7043046563113117474L, -346791004281667856L, 150634530971689797L, -623419714868342043L}).toString());
    }

    public String encryptToBase64(byte[] bArr) {
        new SecureRandom().nextBytes(new byte[this.mCipherService.getIVSize()]);
        return null;
    }
}
