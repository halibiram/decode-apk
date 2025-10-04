package com.tknetwork.tunnel.securepreferences.crypto;

import com.panda912.muddy.ObfuscatedString;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes3.dex */
public class HashSHA {
    public static byte[] hashUsingSHA256(byte[] bArr) {
        try {
            return MessageDigest.getInstance(new ObfuscatedString(new long[]{-4009906855367254550L, 9107754724022600851L}).toString()).digest(bArr);
        } catch (NoSuchAlgorithmException unused) {
            throw new IllegalStateException(new ObfuscatedString(new long[]{5839447048961609588L, -8024712452497760804L, 5359735209696226688L}).toString());
        }
    }

    public static byte[] hashUsingSHA512(byte[] bArr) {
        try {
            return MessageDigest.getInstance(new ObfuscatedString(new long[]{-2842012900817509947L, -5422103699081980687L}).toString()).digest(bArr);
        } catch (NoSuchAlgorithmException unused) {
            throw new IllegalStateException(new ObfuscatedString(new long[]{-5773881840189116782L, 4484700251473459372L, -127603202913021439L}).toString());
        }
    }
}
