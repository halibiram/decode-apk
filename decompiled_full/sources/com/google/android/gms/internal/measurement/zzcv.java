package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes2.dex */
final class zzcv extends zzdt {
    final /* synthetic */ zzee zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzcv(zzee zzeeVar) {
        super(zzeeVar, true);
        this.zza = zzeeVar;
    }

    @Override // com.google.android.gms.internal.measurement.zzdt
    public final void zza() {
        zzcc zzccVar;
        zzccVar = this.zza.zzj;
        ((zzcc) Preconditions.checkNotNull(zzccVar)).resetAnalyticsData(this.zzh);
    }
}
