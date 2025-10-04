package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzazy {
    final long zza;
    final String zzb;
    final int zzc;

    public zzazy(long j, String str, int i) {
        this.zza = j;
        this.zzb = str;
        this.zzc = i;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj != null && (obj instanceof zzazy)) {
            zzazy zzazyVar = (zzazy) obj;
            if (zzazyVar.zza == this.zza && zzazyVar.zzc == this.zzc) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (int) this.zza;
    }
}
