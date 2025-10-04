package com.google.android.play.core.appupdate.internal;

import android.util.Base64;
import com.panda912.muddy.ObfuscatedString;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public final class zzaa {
    public static String zza(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(new ObfuscatedString(new long[]{-7560624172952798338L, 5455329102263582175L}).toString());
            messageDigest.update(bArr);
            return Base64.encodeToString(messageDigest.digest(), 11);
        } catch (NoSuchAlgorithmException unused) {
            return new ObfuscatedString(new long[]{-3523411096086385649L}).toString();
        }
    }
}
