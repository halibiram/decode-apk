package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfq {
    public static final zzfq zza = new zzfq(-1, -1);
    public static final zzfq zzb = new zzfq(0, 0);
    private final int zzc;
    private final int zzd;

    public zzfq(int i, int i2) {
        boolean z = false;
        if ((i == -1 || i >= 0) && (i2 == -1 || i2 >= 0)) {
            z = true;
        }
        zzek.zzd(z);
        this.zzc = i;
        this.zzd = i2;
    }

    public final boolean equals(@Nullable Object obj) {
        if (obj == null) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzfq) {
            zzfq zzfqVar = (zzfq) obj;
            if (this.zzc == zzfqVar.zzc && this.zzd == zzfqVar.zzd) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzc;
        return ((i >>> 16) | (i << 16)) ^ this.zzd;
    }

    public final String toString() {
        return this.zzc + new ObfuscatedString(new long[]{-4573317931988208380L, -2642088986390233731L}).toString() + this.zzd;
    }

    public final int zza() {
        return this.zzd;
    }

    public final int zzb() {
        return this.zzc;
    }
}
