package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzdkd implements zzhhd {
    private final zzdjr zza;
    private final zzhhu zzb;

    public zzdkd(zzdjr zzdjrVar, zzhhu zzhhuVar) {
        this.zza = zzdjrVar;
        this.zzb = zzhhuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhhu
    public final /* bridge */ /* synthetic */ Object zzb() {
        Set singleton = Collections.singleton(new zzdim((zzczu) this.zzb.zzb(), zzcep.zzf));
        zzhhl.zzb(singleton);
        return singleton;
    }
}
