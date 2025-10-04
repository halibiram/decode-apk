package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;

/* loaded from: classes2.dex */
final class zzgwj extends ThreadLocal {
    public static final Cipher zza() {
        try {
            return (Cipher) zzgwz.zza.zza(new ObfuscatedString(new long[]{3232803692094225084L, 1137237535660919628L, 7103466595729327766L, -2359141846619002342L}).toString());
        } catch (GeneralSecurityException e) {
            throw new IllegalStateException(e);
        }
    }

    @Override // java.lang.ThreadLocal
    public final /* bridge */ /* synthetic */ Object initialValue() {
        return zza();
    }
}
