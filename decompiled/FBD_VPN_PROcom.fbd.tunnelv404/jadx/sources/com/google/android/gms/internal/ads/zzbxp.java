package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nonnull;

/* loaded from: classes2.dex */
public final class zzbxp {

    @Nonnull
    private View zza;
    private final Map zzb = new HashMap();

    public final zzbxp zzb(View view) {
        this.zza = view;
        return this;
    }

    public final zzbxp zzc(Map map) {
        this.zzb.clear();
        for (Map.Entry entry : map.entrySet()) {
            View view = (View) entry.getValue();
            if (view != null) {
                this.zzb.put((String) entry.getKey(), new WeakReference(view));
            }
        }
        return this;
    }
}
