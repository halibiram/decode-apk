package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.EOFException;

/* loaded from: classes2.dex */
public final class zzact implements zzaea {
    private final byte[] zza = new byte[4096];

    @Override // com.google.android.gms.internal.ads.zzaea
    public final /* synthetic */ int zzf(zzu zzuVar, int i, boolean z) {
        return zzady.zza(this, zzuVar, i, z);
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final int zzg(zzu zzuVar, int i, boolean z, int i2) {
        int zza = zzuVar.zza(this.zza, 0, Math.min(4096, i));
        if (zza == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final void zzl(zzam zzamVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final /* synthetic */ void zzr(zzfp zzfpVar, int i) {
        zzady.zzb(this, zzfpVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final void zzs(zzfp zzfpVar, int i, int i2) {
        zzfpVar.zzL(i);
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final void zzt(long j, int i, int i2, int i3, @Nullable zzadz zzadzVar) {
    }
}
