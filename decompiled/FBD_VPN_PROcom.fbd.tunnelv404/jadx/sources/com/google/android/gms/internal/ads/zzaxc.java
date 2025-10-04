package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzaxc implements Callable {
    private final zzawj zza;
    private final zzasg zzb;

    public zzaxc(zzawj zzawjVar, zzasg zzasgVar) {
        this.zza = zzawjVar;
        this.zzb = zzasgVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        if (this.zza.zzl() != null) {
            this.zza.zzl().get();
        }
        zzatd zzc = this.zza.zzc();
        if (zzc != null) {
            try {
                synchronized (this.zzb) {
                    zzasg zzasgVar = this.zzb;
                    byte[] zzax = zzc.zzax();
                    zzasgVar.zzak(zzax, 0, zzax.length, zzgzf.zza());
                }
                return null;
            } catch (zzhag | NullPointerException unused) {
                return null;
            }
        }
        return null;
    }
}
