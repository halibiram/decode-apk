package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzcn {

    @Nullable
    public final Object zzf;
    public final int zzg;

    @Nullable
    public final zzbp zzh;

    @Nullable
    public final Object zzi;
    public final int zzj;
    public final long zzk;
    public final long zzl;
    public final int zzm;
    public final int zzn;

    @VisibleForTesting
    static final String zza = Integer.toString(0, 36);
    private static final String zzo = Integer.toString(1, 36);

    @VisibleForTesting
    static final String zzb = Integer.toString(2, 36);

    @VisibleForTesting
    static final String zzc = Integer.toString(3, 36);

    @VisibleForTesting
    static final String zzd = Integer.toString(4, 36);
    private static final String zzp = Integer.toString(5, 36);
    private static final String zzq = Integer.toString(6, 36);

    @Deprecated
    public static final zzn zze = new zzn() { // from class: com.google.android.gms.internal.ads.zzcm
    };

    public zzcn(@Nullable Object obj, int i, @Nullable zzbp zzbpVar, @Nullable Object obj2, int i2, long j, long j2, int i3, int i4) {
        this.zzf = obj;
        this.zzg = i;
        this.zzh = zzbpVar;
        this.zzi = obj2;
        this.zzj = i2;
        this.zzk = j;
        this.zzl = j2;
        this.zzm = i3;
        this.zzn = i4;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzcn.class == obj.getClass()) {
            zzcn zzcnVar = (zzcn) obj;
            if (this.zzg == zzcnVar.zzg && this.zzj == zzcnVar.zzj && this.zzk == zzcnVar.zzk && this.zzl == zzcnVar.zzl && this.zzm == zzcnVar.zzm && this.zzn == zzcnVar.zzn && zzfwy.zza(this.zzh, zzcnVar.zzh) && zzfwy.zza(this.zzf, zzcnVar.zzf) && zzfwy.zza(this.zzi, zzcnVar.zzi)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.zzf, Integer.valueOf(this.zzg), this.zzh, this.zzi, Integer.valueOf(this.zzj), Long.valueOf(this.zzk), Long.valueOf(this.zzl), Integer.valueOf(this.zzm), Integer.valueOf(this.zzn)});
    }
}
