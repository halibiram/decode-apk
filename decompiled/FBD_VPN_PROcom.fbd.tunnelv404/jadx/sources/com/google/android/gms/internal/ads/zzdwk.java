package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;

@Deprecated
/* loaded from: classes2.dex */
public final class zzdwk extends zzdwn {
    private final zzfme zzg;

    public zzdwk(Executor executor, zzceh zzcehVar, zzfme zzfmeVar, zzfmg zzfmgVar, Context context) {
        super(executor, zzcehVar, zzfmgVar, context);
        this.zzg = zzfmeVar;
        zzfmeVar.zza(this.zzb);
    }

    public final Map zza() {
        return new HashMap(this.zzb);
    }
}
