package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;

/* loaded from: classes2.dex */
public final class zzfoz {

    @SuppressLint({"StaticFieldLeak"})
    private static final zzfoz zza = new zzfoz();
    private Context zzb;

    private zzfoz() {
    }

    public static zzfoz zzb() {
        return zza;
    }

    public final Context zza() {
        return this.zzb;
    }

    public final void zzc(Context context) {
        Context context2;
        if (context != null) {
            context2 = context.getApplicationContext();
        } else {
            context2 = null;
        }
        this.zzb = context2;
    }
}
