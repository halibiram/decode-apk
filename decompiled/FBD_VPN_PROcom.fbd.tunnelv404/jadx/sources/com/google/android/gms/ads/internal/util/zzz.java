package com.google.android.gms.ads.internal.util;

import android.annotation.TargetApi;
import android.content.Context;
import com.google.android.gms.internal.ads.zzbgc;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@TargetApi(30)
/* loaded from: classes2.dex */
public final class zzz extends zzy {
    @Override // com.google.android.gms.ads.internal.util.zzab
    public final int zzm(Context context) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zziu)).booleanValue()) {
            return 0;
        }
        return super.zzm(context);
    }
}
