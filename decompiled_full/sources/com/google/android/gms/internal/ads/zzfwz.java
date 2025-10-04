package com.google.android.gms.internal.ads;

import java.io.Serializable;
import javax.annotation.CheckForNull;

/* loaded from: classes2.dex */
public abstract class zzfwz implements Serializable {
    public static zzfwz zzc() {
        return zzfwi.zza;
    }

    public static zzfwz zzd(@CheckForNull Object obj) {
        if (obj == null) {
            return zzfwi.zza;
        }
        return new zzfxj(obj);
    }

    public abstract zzfwz zza(zzfws zzfwsVar);

    public abstract Object zzb(Object obj);
}
