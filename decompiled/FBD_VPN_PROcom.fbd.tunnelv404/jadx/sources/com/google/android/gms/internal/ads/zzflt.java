package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzflt {
    private final Executor zza;
    private final zzceh zzb;

    public zzflt(Executor executor, zzceh zzcehVar) {
        this.zza = executor;
        this.zzb = zzcehVar;
    }

    public final /* synthetic */ void zza(String str) {
        this.zzb.zza(str);
    }

    public final void zzb(final String str) {
        this.zza.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzfls
            @Override // java.lang.Runnable
            public final void run() {
                zzflt.this.zza(str);
            }
        });
    }
}
