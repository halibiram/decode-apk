package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzck {
    private final zzah zzd;
    public static final zzck zza = new zzci().zze();
    private static final String zzc = Integer.toString(0, 36);

    @Deprecated
    public static final zzn zzb = new zzn() { // from class: com.google.android.gms.internal.ads.zzch
    };

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzck)) {
            return false;
        }
        return this.zzd.equals(((zzck) obj).zzd);
    }

    public final int hashCode() {
        return this.zzd.hashCode();
    }
}
