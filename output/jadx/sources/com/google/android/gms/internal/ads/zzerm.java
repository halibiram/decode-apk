package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
public final class zzerm implements zzhhd {
    private final zzhhu zza;
    private final zzhhu zzb;

    public zzerm(zzhhu zzhhuVar, zzhhu zzhhuVar2) {
        this.zza = zzhhuVar;
        this.zzb = zzhhuVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzerk((Clock) this.zza.zzb(), ((zzdao) this.zzb).zza());
    }
}
