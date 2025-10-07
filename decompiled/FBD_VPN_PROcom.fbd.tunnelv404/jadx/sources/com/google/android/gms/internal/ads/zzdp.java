package com.google.android.gms.internal.ads;

import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzdp {

    @IntRange(from = 0)
    public final int zzc;

    @IntRange(from = 0)
    public final int zzd;

    @IntRange(from = 0, to = 359)
    public final int zze = 0;

    @FloatRange(from = 0.0d, fromInclusive = false)
    public final float zzf;
    public static final zzdp zza = new zzdp(0, 0, 0, 1.0f);
    private static final String zzg = Integer.toString(0, 36);
    private static final String zzh = Integer.toString(1, 36);
    private static final String zzi = Integer.toString(2, 36);
    private static final String zzj = Integer.toString(3, 36);

    @Deprecated
    public static final zzn zzb = new zzn() { // from class: com.google.android.gms.internal.ads.zzdo
    };

    public zzdp(@IntRange(from = 0) int i, @IntRange(from = 0) int i2, @IntRange(from = 0, to = 359) int i3, @FloatRange(from = 0.0d, fromInclusive = false) float f) {
        this.zzc = i;
        this.zzd = i2;
        this.zzf = f;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzdp) {
            zzdp zzdpVar = (zzdp) obj;
            if (this.zzc == zzdpVar.zzc && this.zzd == zzdpVar.zzd && this.zzf == zzdpVar.zzf) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = ((this.zzc + 217) * 31) + this.zzd;
        return Float.floatToRawIntBits(this.zzf) + (i * 961);
    }
}
