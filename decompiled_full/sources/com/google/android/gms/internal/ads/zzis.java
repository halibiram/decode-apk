package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzis {
    public final String zza;
    public final zzam zzb;
    public final zzam zzc;
    public final int zzd;
    public final int zze;

    public zzis(String str, zzam zzamVar, zzam zzamVar2, int i, int i2) {
        boolean z = true;
        if (i != 0) {
            if (i2 == 0) {
                i2 = 0;
            } else {
                z = false;
            }
        }
        zzek.zzd(z);
        zzek.zzc(str);
        this.zza = str;
        this.zzb = zzamVar;
        zzamVar2.getClass();
        this.zzc = zzamVar2;
        this.zzd = i;
        this.zze = i2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzis.class == obj.getClass()) {
            zzis zzisVar = (zzis) obj;
            if (this.zzd == zzisVar.zzd && this.zze == zzisVar.zze && this.zza.equals(zzisVar.zza) && this.zzb.equals(zzisVar.zzb) && this.zzc.equals(zzisVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzd + 527;
        String str = this.zza;
        int hashCode = str.hashCode() + (((i * 31) + this.zze) * 31);
        int hashCode2 = this.zzb.hashCode() + (hashCode * 31);
        return this.zzc.hashCode() + (hashCode2 * 31);
    }
}
