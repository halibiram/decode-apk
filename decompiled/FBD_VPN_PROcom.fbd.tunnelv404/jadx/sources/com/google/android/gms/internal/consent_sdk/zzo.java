package com.google.android.gms.internal.consent_sdk;

import android.app.Application;

/* loaded from: classes2.dex */
public final class zzo implements zzdn {
    private final zzdr zza;
    private final zzdr zzb;

    public zzo(zzdr zzdrVar, zzdr zzdrVar2) {
        this.zza = zzdrVar;
        this.zzb = zzdrVar2;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdr
    /* renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final zzl zza() {
        return new zzl((Application) this.zza.zza(), (zzap) this.zzb.zza());
    }
}
