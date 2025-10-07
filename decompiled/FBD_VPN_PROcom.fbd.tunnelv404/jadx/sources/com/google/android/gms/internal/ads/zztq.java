package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.Bundle;
import androidx.annotation.RequiresApi;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi(23)
/* loaded from: classes2.dex */
public final class zztq implements zzss {
    private final MediaCodec zza;

    public zztq(MediaCodec mediaCodec) {
        this.zza = mediaCodec;
    }

    @Override // com.google.android.gms.internal.ads.zzss
    public final void zzb() {
    }

    @Override // com.google.android.gms.internal.ads.zzss
    public final void zzc() {
    }

    @Override // com.google.android.gms.internal.ads.zzss
    public final void zzd(int i, int i2, int i3, long j, int i4) {
        this.zza.queueInputBuffer(i, 0, i3, j, i4);
    }

    @Override // com.google.android.gms.internal.ads.zzss
    public final void zze(int i, int i2, zzie zzieVar, long j, int i3) {
        this.zza.queueSecureInputBuffer(i, 0, zzieVar.zza(), j, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzss
    public final void zzf(Bundle bundle) {
        this.zza.setParameters(bundle);
    }

    @Override // com.google.android.gms.internal.ads.zzss
    public final void zzg() {
    }

    @Override // com.google.android.gms.internal.ads.zzss
    public final void zzh() {
    }
}
