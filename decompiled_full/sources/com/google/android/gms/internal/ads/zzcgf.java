package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzcgf {
    private long zzb;
    private final long zza = TimeUnit.MILLISECONDS.toNanos(((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzD)).longValue());
    private boolean zzc = true;

    public final void zza(SurfaceTexture surfaceTexture, final zzcfq zzcfqVar) {
        if (zzcfqVar != null) {
            long timestamp = surfaceTexture.getTimestamp();
            if (!this.zzc) {
                long j = timestamp - this.zzb;
                if (Math.abs(j) < this.zza) {
                    return;
                }
            }
            this.zzc = false;
            this.zzb = timestamp;
            com.google.android.gms.ads.internal.util.zzt.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcge
                @Override // java.lang.Runnable
                public final void run() {
                    zzcfq.this.zzk();
                }
            });
        }
    }

    public final void zzb() {
        this.zzc = true;
    }
}
