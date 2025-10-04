package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

/* loaded from: classes2.dex */
final class zzgmt extends ThreadLocal {
    public static final Cipher zza() {
        boolean zze;
        try {
            Cipher cipher = (Cipher) zzgwz.zza.zza(new ObfuscatedString(new long[]{2234328446532141778L, -7937116153942601540L, 2435898580972246616L, -4245786226469730528L}).toString());
            zze = zzgmu.zze(cipher);
            if (!zze) {
                return null;
            }
            return cipher;
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    public final /* bridge */ /* synthetic */ Object initialValue() {
        return zza();
    }
}
