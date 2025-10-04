package com.google.android.gms.internal.ads;

import com.android.volley.DefaultRetryPolicy;

/* loaded from: classes2.dex */
public final class zzapo {
    private int zza = DefaultRetryPolicy.DEFAULT_TIMEOUT_MS;
    private int zzb;

    public final int zza() {
        return this.zzb;
    }

    public final int zzb() {
        return this.zza;
    }

    public final void zzc(zzaqj zzaqjVar) {
        int i = this.zzb + 1;
        this.zzb = i;
        int i2 = this.zza;
        this.zza = i2 + i2;
        if (i <= 1) {
        } else {
            throw zzaqjVar;
        }
    }
}
