package com.google.android.gms.internal.ads;

import android.util.Base64;
import com.panda912.muddy.ObfuscatedString;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public final class zzfwg {
    public static String zza(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(new ObfuscatedString(new long[]{4486648904587681612L, -2424984994329137328L}).toString());
            messageDigest.update(bArr);
            return Base64.encodeToString(messageDigest.digest(), 11);
        } catch (NoSuchAlgorithmException unused) {
            return new ObfuscatedString(new long[]{4437086503648876893L}).toString();
        }
    }
}
