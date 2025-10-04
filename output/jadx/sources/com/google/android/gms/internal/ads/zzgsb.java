package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import j$.util.Objects;

/* loaded from: classes2.dex */
public final class zzgsb {
    private final zzgge zza;
    private final int zzb;
    private final String zzc;
    private final String zzd;

    public /* synthetic */ zzgsb(zzgge zzggeVar, int i, String str, String str2, zzgsa zzgsaVar) {
        this.zza = zzggeVar;
        this.zzb = i;
        this.zzc = str;
        this.zzd = str2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgsb)) {
            return false;
        }
        zzgsb zzgsbVar = (zzgsb) obj;
        if (this.zza != zzgsbVar.zza || this.zzb != zzgsbVar.zzb || !this.zzc.equals(zzgsbVar.zzc) || !this.zzd.equals(zzgsbVar.zzd)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, Integer.valueOf(this.zzb), this.zzc, this.zzd);
    }

    public final String toString() {
        return String.format(new ObfuscatedString(new long[]{-1398209006269515548L, -1825351087073039097L, 7124168544948186361L, 7871536939841579197L, 139095670583305429L, -2440404884348439138L, 8017185394250051903L, 6192247182349977L}).toString(), this.zza, Integer.valueOf(this.zzb), this.zzc, this.zzd);
    }

    public final int zza() {
        return this.zzb;
    }
}
