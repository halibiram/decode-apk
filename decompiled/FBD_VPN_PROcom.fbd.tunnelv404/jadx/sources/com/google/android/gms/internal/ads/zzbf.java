package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzbf {
    public final long zzc;
    public final long zzd;
    public final long zze;
    public final float zzf;
    public final float zzg;
    public static final zzbf zza = new zzbf(new zzbd());
    private static final String zzh = Integer.toString(0, 36);
    private static final String zzi = Integer.toString(1, 36);
    private static final String zzj = Integer.toString(2, 36);
    private static final String zzk = Integer.toString(3, 36);
    private static final String zzl = Integer.toString(4, 36);

    @Deprecated
    public static final zzn zzb = new zzn() { // from class: com.google.android.gms.internal.ads.zzbc
    };

    private zzbf(zzbd zzbdVar) {
        this.zzc = -9223372036854775807L;
        this.zzd = -9223372036854775807L;
        this.zze = -9223372036854775807L;
        this.zzf = -3.4028235E38f;
        this.zzg = -3.4028235E38f;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbf)) {
            return false;
        }
        long j = ((zzbf) obj).zzc;
        return true;
    }

    public final int hashCode() {
        int i = (int) (-9223372034707292159L);
        return Float.floatToIntBits(-3.4028235E38f) + ((Float.floatToIntBits(-3.4028235E38f) + (((((i * 31) + i) * 31) + i) * 31)) * 31);
    }
}
