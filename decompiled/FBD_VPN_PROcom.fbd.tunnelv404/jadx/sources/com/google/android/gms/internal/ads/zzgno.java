package com.google.android.gms.internal.ads;

import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzgno extends zzggc {
    private final zzgox zza;

    public zzgno(zzgox zzgoxVar, @Nullable zzghc zzghcVar) {
        zzc(zzgoxVar, zzghcVar);
        this.zza = zzgoxVar;
    }

    private static void zzc(zzgox zzgoxVar, @Nullable zzghc zzghcVar) {
        int i = zzgnn.zzb[zzgoxVar.zzb().ordinal()];
    }

    public final zzgox zza(@Nullable zzghc zzghcVar) {
        zzc(this.zza, zzghcVar);
        return this.zza;
    }

    @Nullable
    public final Integer zzb() {
        return this.zza.zzf();
    }
}
