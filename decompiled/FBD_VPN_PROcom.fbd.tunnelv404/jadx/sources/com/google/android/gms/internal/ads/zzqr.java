package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzqr {
    private boolean zzb;

    @Nullable
    private zzqt zzd;
    private zzqj zze;
    private zzpd zza = zzpd.zza;
    private final zzqq zzc = zzqq.zza;

    @Deprecated
    public zzqr() {
    }

    public static /* bridge */ /* synthetic */ zzpd zza(zzqr zzqrVar) {
        return zzqrVar.zza;
    }

    public static /* bridge */ /* synthetic */ zzqq zzb(zzqr zzqrVar) {
        return zzqrVar.zzc;
    }

    public static /* bridge */ /* synthetic */ zzqt zzf(zzqr zzqrVar) {
        return zzqrVar.zzd;
    }

    public static /* bridge */ /* synthetic */ zzqj zzg(zzqr zzqrVar) {
        return zzqrVar.zze;
    }

    @Deprecated
    public final zzqr zzc(zzpd zzpdVar) {
        this.zza = zzpdVar;
        return this;
    }

    public final zzqr zzd(zzdt[] zzdtVarArr) {
        this.zzd = new zzqt(zzdtVarArr);
        return this;
    }

    public final zzrd zze() {
        zzek.zzf(!this.zzb);
        this.zzb = true;
        if (this.zzd == null) {
            this.zzd = new zzqt(new zzdt[0]);
        }
        zzrc zzrcVar = null;
        if (this.zze == null) {
            this.zze = new zzqj(null);
        }
        return new zzrd(this, zzrcVar);
    }
}
