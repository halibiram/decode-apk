package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzcza implements zzhhd {
    private final zzhhu zza;
    private final zzhhu zzb;

    public zzcza(zzhhu zzhhuVar, zzhhu zzhhuVar2) {
        this.zza = zzhhuVar;
        this.zzb = zzhhuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdim((zzdfe) this.zza.zzb(), (Executor) this.zzb.zzb());
    }
}
