package com.google.android.gms.internal.ads;

import androidx.annotation.IntRange;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public class zzav {

    @IntRange(from = 0)
    public final long zze;
    public final long zzf;
    public final boolean zzg;
    public final boolean zzh;
    public final boolean zzi;
    public static final zzav zza = new zzax(new zzat(), null);
    private static final String zzj = Integer.toString(0, 36);
    private static final String zzk = Integer.toString(1, 36);
    private static final String zzl = Integer.toString(2, 36);
    private static final String zzm = Integer.toString(3, 36);
    private static final String zzn = Integer.toString(4, 36);
    static final String zzb = Integer.toString(5, 36);
    static final String zzc = Integer.toString(6, 36);

    @Deprecated
    public static final zzn zzd = new zzn() { // from class: com.google.android.gms.internal.ads.zzas
    };

    public /* synthetic */ zzav(zzat zzatVar, zzau zzauVar) {
        int i = zzfy.zza;
        this.zze = 0L;
        this.zzf = Long.MIN_VALUE;
        this.zzg = false;
        this.zzh = false;
        this.zzi = false;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzav)) {
            return false;
        }
        long j = ((zzav) obj).zze;
        return true;
    }

    public final int hashCode() {
        return ((int) (-9223372034707292160L)) * 29791;
    }
}
