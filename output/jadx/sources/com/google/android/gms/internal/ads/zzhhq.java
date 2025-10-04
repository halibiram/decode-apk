package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes2.dex */
public final class zzhhq {
    private final List zza;
    private final List zzb;

    public /* synthetic */ zzhhq(int i, int i2, zzhhp zzhhpVar) {
        this.zza = zzhha.zzc(i);
        this.zzb = zzhha.zzc(i2);
    }

    public final zzhhq zza(zzhhm zzhhmVar) {
        this.zzb.add(zzhhmVar);
        return this;
    }

    public final zzhhq zzb(zzhhm zzhhmVar) {
        this.zza.add(zzhhmVar);
        return this;
    }

    public final zzhhr zzc() {
        return new zzhhr(this.zza, this.zzb, null);
    }
}
