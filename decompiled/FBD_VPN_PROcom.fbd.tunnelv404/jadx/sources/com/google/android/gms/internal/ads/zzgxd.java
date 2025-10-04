package com.google.android.gms.internal.ads;

import java.security.KeyPairGenerator;
import java.security.Provider;

/* loaded from: classes2.dex */
public final class zzgxd implements zzgxh {
    @Override // com.google.android.gms.internal.ads.zzgxh
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        if (provider == null) {
            return KeyPairGenerator.getInstance(str);
        }
        return KeyPairGenerator.getInstance(str, provider);
    }
}
