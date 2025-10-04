package com.google.android.gms.internal.ads;

import android.media.metrics.LogSessionId;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* loaded from: classes2.dex */
public final class zzpb {
    public static final zzpb zza;

    @Nullable
    private final zzpa zzb;

    static {
        zzpb zzpbVar;
        if (zzfy.zza < 31) {
            zzpbVar = new zzpb();
        } else {
            zzpbVar = new zzpb(zzpa.zza);
        }
        zza = zzpbVar;
    }

    private zzpb(zzpa zzpaVar) {
        this.zzb = zzpaVar;
    }

    @RequiresApi(31)
    public final LogSessionId zza() {
        zzpa zzpaVar = this.zzb;
        zzpaVar.getClass();
        return zzpaVar.zzb;
    }

    public zzpb() {
        zzek.zzf(zzfy.zza < 31);
        this.zzb = null;
    }

    @RequiresApi(31)
    public zzpb(LogSessionId logSessionId) {
        this.zzb = new zzpa(logSessionId);
    }
}
