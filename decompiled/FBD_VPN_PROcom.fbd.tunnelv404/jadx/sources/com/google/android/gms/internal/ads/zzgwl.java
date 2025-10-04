package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

/* loaded from: classes2.dex */
final class zzgwl extends ThreadLocal {
    public static final Cipher zza() {
        try {
            return (Cipher) zzgwz.zza.zza(new ObfuscatedString(new long[]{-709337798394061022L, -4314887980105888371L, 3412137021233504788L, -841566483852578668L}).toString());
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    public final /* bridge */ /* synthetic */ Object initialValue() {
        return zza();
    }
}
