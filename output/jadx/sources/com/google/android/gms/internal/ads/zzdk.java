package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzdk {
    private final zzgaa zzd;
    public static final zzdk zza = new zzdk(zzgaa.zzl());
    private static final String zzc = Integer.toString(0, 36);

    @Deprecated
    public static final zzn zzb = new zzn() { // from class: com.google.android.gms.internal.ads.zzdh
    };

    public zzdk(List list) {
        this.zzd = zzgaa.zzj(list);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzdk.class == obj.getClass()) {
            return this.zzd.equals(((zzdk) obj).zzd);
        }
        return false;
    }

    public final int hashCode() {
        return this.zzd.hashCode();
    }

    public final zzgaa zza() {
        return this.zzd;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean zzb(int i) {
        for (int i2 = 0; i2 < this.zzd.size(); i2++) {
            zzdj zzdjVar = (zzdj) this.zzd.get(i2);
            if (zzdjVar.zzc() && zzdjVar.zza() == i) {
                return true;
            }
        }
        return false;
    }
}
