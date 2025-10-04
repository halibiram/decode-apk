package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzcdk {
    private final Object zza = new Object();
    private volatile int zzc = 1;
    private volatile long zzb = 0;

    public /* synthetic */ zzcdk(zzcdj zzcdjVar) {
    }

    public final void zza() {
        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
        synchronized (this.zza) {
            try {
                if (this.zzc == 3) {
                    if (this.zzb + ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzfX)).longValue() <= currentTimeMillis) {
                        this.zzc = 1;
                    }
                }
            } finally {
            }
        }
        long currentTimeMillis2 = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
        synchronized (this.zza) {
            try {
                if (this.zzc != 2) {
                    return;
                }
                this.zzc = 3;
                if (this.zzc == 3) {
                    this.zzb = currentTimeMillis2;
                }
            } finally {
            }
        }
    }

    private zzcdk() {
    }
}
