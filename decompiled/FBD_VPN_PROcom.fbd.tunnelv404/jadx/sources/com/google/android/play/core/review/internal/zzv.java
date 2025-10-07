package com.google.android.play.core.review.internal;

import android.util.Base64;
import com.panda912.muddy.ObfuscatedString;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public final class zzv {
    public static String zza(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(new ObfuscatedString(new long[]{-2350834994304954739L, 711583465291959535L}).toString());
            messageDigest.update(bArr);
            return Base64.encodeToString(messageDigest.digest(), 11);
        } catch (NoSuchAlgorithmException unused) {
            return new ObfuscatedString(new long[]{-5671613788638869774L}).toString();
        }
    }
}
