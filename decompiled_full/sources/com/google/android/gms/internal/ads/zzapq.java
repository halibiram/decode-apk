package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzapq implements Runnable {
    private final zzaqa zza;
    private final zzaqg zzb;
    private final Runnable zzc;

    public zzapq(zzaqa zzaqaVar, zzaqg zzaqgVar, Runnable runnable) {
        this.zza = zzaqaVar;
        this.zzb = zzaqgVar;
        this.zzc = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzw();
        zzaqg zzaqgVar = this.zzb;
        if (zzaqgVar.zzc()) {
            this.zza.zzo(zzaqgVar.zza);
        } else {
            this.zza.zzn(zzaqgVar.zzc);
        }
        if (this.zzb.zzd) {
            this.zza.zzm(new ObfuscatedString(new long[]{-1045128477672948455L, -6434185612261161440L, -5554033443705818553L, 8417561973017699281L}).toString());
        } else {
            this.zza.zzp(new ObfuscatedString(new long[]{-5224863934178630845L, 2044086520231905208L}).toString());
        }
        Runnable runnable = this.zzc;
        if (runnable != null) {
            runnable.run();
        }
    }
}
