package com.google.android.gms.internal.ads;

import java.security.Provider;
import javax.crypto.KeyAgreement;

/* loaded from: classes2.dex */
public final class zzgxb implements zzgxh {
    @Override // com.google.android.gms.internal.ads.zzgxh
    public final /* bridge */ /* synthetic */ Object zza(String str, Provider provider) {
        if (provider == null) {
            return KeyAgreement.getInstance(str);
        }
        return KeyAgreement.getInstance(str, provider);
    }
}
