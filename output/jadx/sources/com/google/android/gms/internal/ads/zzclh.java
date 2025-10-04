package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;

/* loaded from: classes2.dex */
public final class zzclh {
    private zzcei zza;
    private Context zzb;
    private WeakReference zzc;

    public final zzclh zzc(Context context) {
        this.zzc = new WeakReference(context);
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        this.zzb = context;
        return this;
    }

    public final zzclh zzd(zzcei zzceiVar) {
        this.zza = zzceiVar;
        return this;
    }
}
