package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzava implements Runnable {
    final /* synthetic */ zzavb zza;

    public zzava(zzavb zzavbVar) {
        this.zza = zzavbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        boolean z;
        zzfqr zzfqrVar;
        Object obj2;
        obj = this.zza.zzo;
        synchronized (obj) {
            z = this.zza.zzp;
            if (!z) {
                this.zza.zzp = true;
                try {
                    zzavb.zzj(this.zza);
                } catch (Exception e) {
                    zzfqrVar = this.zza.zzh;
                    zzfqrVar.zzc(2023, -1L, e);
                }
                obj2 = this.zza.zzo;
                synchronized (obj2) {
                    this.zza.zzp = false;
                }
            }
        }
    }
}
