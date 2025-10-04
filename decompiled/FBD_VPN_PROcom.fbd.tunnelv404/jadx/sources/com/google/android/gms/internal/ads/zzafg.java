package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
abstract class zzafg {
    protected final zzaea zza;

    public zzafg(zzaea zzaeaVar) {
        this.zza = zzaeaVar;
    }

    public abstract boolean zza(zzfp zzfpVar);

    public abstract boolean zzb(zzfp zzfpVar, long j);

    public final boolean zzf(zzfp zzfpVar, long j) {
        if (zza(zzfpVar) && zzb(zzfpVar, j)) {
            return true;
        }
        return false;
    }
}
