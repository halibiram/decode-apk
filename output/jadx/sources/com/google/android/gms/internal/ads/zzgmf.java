package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

/* loaded from: classes2.dex */
final class zzgmf extends ThreadLocal {
    public static final Cipher zza() {
        try {
            return (Cipher) zzgwz.zza.zza(new ObfuscatedString(new long[]{7357292838901782389L, -3545492966102012510L, -4285364013028437286L, 3411513103054073790L}).toString());
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    public final /* bridge */ /* synthetic */ Object initialValue() {
        return zza();
    }
}
