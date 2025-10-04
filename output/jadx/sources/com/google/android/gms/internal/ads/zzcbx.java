package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;

/* loaded from: classes2.dex */
public final class zzcbx {
    private final Clock zza;
    private final zzcbv zzb;

    public zzcbx(Clock clock, zzcbv zzcbvVar) {
        this.zza = clock;
        this.zzb = zzcbvVar;
    }

    public static zzcbx zza(Context context) {
        return zzcci.zzd(context).zzb();
    }

    public final void zzb(int i, long j) {
        this.zzb.zza(i, j);
    }

    public final void zzc(com.google.android.gms.ads.internal.client.zzff zzffVar) {
        this.zzb.zza(-1, this.zza.currentTimeMillis());
    }

    public final void zzd() {
        this.zzb.zza(-1, this.zza.currentTimeMillis());
    }
}
