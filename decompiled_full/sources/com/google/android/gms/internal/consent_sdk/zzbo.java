package com.google.android.gms.internal.consent_sdk;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzbo implements zzdn {
    private final zzdr zza;
    private final zzdr zzb;

    public zzbo(zzdr zzdrVar, zzdr zzdrVar2) {
        this.zza = zzdrVar;
        this.zzb = zzdrVar2;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdr
    public final /* synthetic */ Object zza() {
        Executor executor = zzcr.zzb;
        zzdp.zza(executor);
        return new zzbn(this.zza, executor);
    }
}
