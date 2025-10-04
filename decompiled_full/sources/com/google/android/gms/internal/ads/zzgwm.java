package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

/* loaded from: classes2.dex */
final class zzgwm extends ThreadLocal {
    public static final Cipher zza() {
        try {
            return (Cipher) zzgwz.zza.zza(new ObfuscatedString(new long[]{3431217188054584002L, 2600433390709510037L, -3227762598301583316L, -8917728397123183895L}).toString());
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    public final /* bridge */ /* synthetic */ Object initialValue() {
        return zza();
    }
}
