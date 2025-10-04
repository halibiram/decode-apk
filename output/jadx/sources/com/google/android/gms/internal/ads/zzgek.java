package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgek implements Runnable {
    final Future zza;
    final zzgej zzb;

    public zzgek(Future future, zzgej zzgejVar) {
        this.zza = future;
        this.zzb = zzgejVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Throwable zza;
        Object obj = this.zza;
        if ((obj instanceof zzgfq) && (zza = zzgfr.zza((zzgfq) obj)) != null) {
            this.zzb.zza(zza);
            return;
        }
        try {
            this.zzb.zzb(zzgen.zzp(this.zza));
        } catch (ExecutionException e) {
            this.zzb.zza(e.getCause());
        } catch (Throwable th) {
            this.zzb.zza(th);
        }
    }

    public final String toString() {
        zzfww zza = zzfwx.zza(this);
        zza.zza(this.zzb);
        return zza.toString();
    }
}
