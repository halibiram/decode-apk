package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzfr implements zzel {
    @Override // com.google.android.gms.internal.ads.zzel
    public final long zza() {
        return SystemClock.elapsedRealtime();
    }

    @Override // com.google.android.gms.internal.ads.zzel
    public final zzew zzb(Looper looper, @Nullable Handler.Callback callback) {
        return new zzfu(new Handler(looper, callback));
    }
}
