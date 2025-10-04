package com.google.android.gms.internal.ads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
final class zzfma {

    @NonNull
    public final String zza;

    @NonNull
    public final String zzb;

    public zzfma(@NonNull String str, @NonNull String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzfma)) {
            return false;
        }
        zzfma zzfmaVar = (zzfma) obj;
        if (this.zza.equals(zzfmaVar.zza) && this.zzb.equals(zzfmaVar.zzb)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return String.valueOf(this.zza).concat(String.valueOf(this.zzb)).hashCode();
    }
}
