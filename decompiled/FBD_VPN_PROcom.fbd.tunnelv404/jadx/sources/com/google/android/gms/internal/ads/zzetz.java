package com.google.android.gms.internal.ads;

import androidx.work.WorkRequest;
import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
public final class zzetz implements zzhhd {
    private final zzhhu zza;
    private final zzhhu zzb;

    public zzetz(zzhhu zzhhuVar, zzhhu zzhhuVar2) {
        this.zza = zzhhuVar;
        this.zzb = zzhhuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzetq(((zzetl) this.zza).zzb(), WorkRequest.MIN_BACKOFF_MILLIS, (Clock) this.zzb.zzb());
    }
}
