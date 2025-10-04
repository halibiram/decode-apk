package com.google.android.gms.internal.ads;

import java.security.Provider;
import java.security.Signature;

/* loaded from: classes2.dex */
public final class zzgxg implements zzgxh {
    @Override // com.google.android.gms.internal.ads.zzgxh
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        if (provider == null) {
            return Signature.getInstance(str);
        }
        return Signature.getInstance(str, provider);
    }
}
