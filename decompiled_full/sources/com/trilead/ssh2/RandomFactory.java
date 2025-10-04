package com.trilead.ssh2;

import com.panda912.muddy.ObfuscatedString;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;

/* loaded from: classes3.dex */
class RandomFactory {
    public static SecureRandom create() {
        try {
            return SecureRandom.getInstance(new ObfuscatedString(new long[]{-7958706277350699945L, 7453449935791300084L}).toString());
        } catch (NoSuchAlgorithmException unused) {
            return new SecureRandom();
        }
    }
}
