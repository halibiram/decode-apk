package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
public final class zzdof implements zzhhd {
    private final zzhhu zza;
    private final zzhhu zzb;

    public zzdof(zzhhu zzhhuVar, zzhhu zzhhuVar2) {
        this.zza = zzhhuVar;
        this.zzb = zzhhuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzdoe(((zzdme) this.zza).zza(), (Clock) this.zzb.zzb());
    }
}
