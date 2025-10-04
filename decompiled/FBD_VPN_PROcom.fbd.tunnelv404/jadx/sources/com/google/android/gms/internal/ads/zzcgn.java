package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzcgn implements Runnable {
    private final zzcfz zza;
    private boolean zzb = false;

    public zzcgn(zzcfz zzcfzVar) {
        this.zza = zzcfzVar;
    }

    private final void zzc() {
        zzftt zzfttVar = com.google.android.gms.ads.internal.util.zzt.zza;
        zzfttVar.removeCallbacks(this);
        zzfttVar.postDelayed(this, 250L);
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (!this.zzb) {
            this.zza.zzt();
            zzc();
        }
    }

    public final void zza() {
        this.zzb = true;
        this.zza.zzt();
    }

    public final void zzb() {
        this.zzb = false;
        zzc();
    }
}
