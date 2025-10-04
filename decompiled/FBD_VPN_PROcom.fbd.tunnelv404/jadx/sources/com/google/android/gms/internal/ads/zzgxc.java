package com.google.android.gms.internal.ads;

import java.security.KeyFactory;
import java.security.Provider;

/* loaded from: classes2.dex */
public final class zzgxc implements zzgxh {
    @Override // com.google.android.gms.internal.ads.zzgxh
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        if (provider == null) {
            return KeyFactory.getInstance(str);
        }
        return KeyFactory.getInstance(str, provider);
    }
}
