package com.google.android.gms.ads.h5;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.google.android.gms.internal.ads.zzbol;

@RequiresApi(api = 21)
/* loaded from: classes2.dex */
public final class H5AdsRequestHandler {
    private final zzbol zza;

    public H5AdsRequestHandler(@NonNull Context context, @NonNull OnH5AdsEventListener onH5AdsEventListener) {
        this.zza = new zzbol(context, onH5AdsEventListener);
    }

    public void clearAdObjects() {
        this.zza.zza();
    }

    public boolean handleH5AdsRequest(@NonNull String str) {
        return this.zza.zzb(str);
    }

    public boolean shouldInterceptRequest(@NonNull String str) {
        return zzbol.zzc(str);
    }
}
