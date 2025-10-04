package com.google.android.gms.internal.ads;

import android.media.metrics.LogSessionId;
import androidx.annotation.RequiresApi;

@RequiresApi(31)
/* loaded from: classes2.dex */
final class zzpa {
    public static final zzpa zza;
    public final LogSessionId zzb;

    static {
        LogSessionId logSessionId;
        logSessionId = LogSessionId.LOG_SESSION_ID_NONE;
        zza = new zzpa(logSessionId);
    }

    public zzpa(LogSessionId logSessionId) {
        this.zzb = logSessionId;
    }
}
