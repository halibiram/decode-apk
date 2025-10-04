package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
public final class zzfgl {
    private final Clock zza;
    private final Object zzb = new Object();
    private volatile int zzd = 1;
    private volatile long zzc = 0;

    public zzfgl(Clock clock) {
        this.zza = clock;
    }

    private final void zze() {
        long currentTimeMillis = this.zza.currentTimeMillis();
        synchronized (this.zzb) {
            try {
                if (this.zzd == 3) {
                    if (this.zzc + ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfX)).longValue() <= currentTimeMillis) {
                        this.zzd = 1;
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private final void zzf(int i, int i2) {
        zze();
        Object obj = this.zzb;
        long currentTimeMillis = this.zza.currentTimeMillis();
        synchronized (obj) {
            try {
                if (this.zzd != i) {
                    return;
                }
                this.zzd = i2;
                if (this.zzd == 3) {
                    this.zzc = currentTimeMillis;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zza() {
        zzf(2, 3);
    }

    public final void zzb(boolean z) {
        if (z) {
            zzf(1, 2);
        } else {
            zzf(2, 1);
        }
    }

    public final boolean zzc() {
        boolean z;
        synchronized (this.zzb) {
            zze();
            if (this.zzd == 3) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public final boolean zzd() {
        boolean z;
        synchronized (this.zzb) {
            zze();
            if (this.zzd == 2) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }
}
