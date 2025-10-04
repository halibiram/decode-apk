package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzadz {
    public final int zza;
    public final byte[] zzb;
    public final int zzc;
    public final int zzd;

    public zzadz(int i, byte[] bArr, int i2, int i3) {
        this.zza = i;
        this.zzb = bArr;
        this.zzc = i2;
        this.zzd = i3;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzadz.class == obj.getClass()) {
            zzadz zzadzVar = (zzadz) obj;
            if (this.zza == zzadzVar.zza && this.zzc == zzadzVar.zzc && this.zzd == zzadzVar.zzd && Arrays.equals(this.zzb, zzadzVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zza;
        return ((((Arrays.hashCode(this.zzb) + (i * 31)) * 31) + this.zzc) * 31) + this.zzd;
    }
}
