package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes2.dex */
public final class zzfmj implements zzflw {
    private final zzfmg zza;
    private final zzfme zzb;

    public zzfmj(zzfmg zzfmgVar, zzfme zzfmeVar) {
        this.zza = zzfmgVar;
        this.zzb = zzfmeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzflw
    public final String zza(zzflv zzflvVar) {
        zzfme zzfmeVar = this.zzb;
        Map zzj = zzflvVar.zzj();
        zzfmeVar.zza(zzj);
        return this.zza.zza(zzj);
    }

    @Override // com.google.android.gms.internal.ads.zzflw
    public final void zzb(zzflv zzflvVar) {
    }
}
