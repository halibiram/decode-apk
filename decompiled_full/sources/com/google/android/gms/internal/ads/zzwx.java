package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzwx {
    public final long zza;
    public final long zzb;

    public zzwx(long j, long j2) {
        this.zza = j;
        this.zzb = j2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzwx)) {
            return false;
        }
        zzwx zzwxVar = (zzwx) obj;
        if (this.zza == zzwxVar.zza && this.zzb == zzwxVar.zzb) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return (((int) this.zza) * 31) + ((int) this.zzb);
    }
}
