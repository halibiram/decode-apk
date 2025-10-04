package com.google.android.gms.ads.internal.util;

/* loaded from: classes2.dex */
public final class zzcb {
    private long zza;
    private long zzb = Long.MIN_VALUE;
    private final Object zzc = new Object();

    public zzcb(long j) {
        this.zza = j;
    }

    public final void zza(long j) {
        synchronized (this.zzc) {
            this.zza = j;
        }
    }

    public final boolean zzb() {
        synchronized (this.zzc) {
            try {
                long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
                if (this.zzb + this.zza > elapsedRealtime) {
                    return false;
                }
                this.zzb = elapsedRealtime;
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
