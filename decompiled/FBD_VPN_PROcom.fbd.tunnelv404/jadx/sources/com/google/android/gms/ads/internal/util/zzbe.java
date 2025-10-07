package com.google.android.gms.ads.internal.util;

import com.google.android.gms.common.internal.Objects;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbe {
    public final String zza;
    public final double zzb;
    public final double zzc;
    public final double zzd;
    public final int zze;

    public zzbe(String str, double d, double d2, double d3, int i) {
        this.zza = str;
        this.zzc = d;
        this.zzb = d2;
        this.zzd = d3;
        this.zze = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzbe)) {
            return false;
        }
        zzbe zzbeVar = (zzbe) obj;
        if (!Objects.equal(this.zza, zzbeVar.zza) || this.zzb != zzbeVar.zzb || this.zzc != zzbeVar.zzc || this.zze != zzbeVar.zze || Double.compare(this.zzd, zzbeVar.zzd) != 0) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, Double.valueOf(this.zzb), Double.valueOf(this.zzc), Double.valueOf(this.zzd), Integer.valueOf(this.zze));
    }

    public final String toString() {
        return Objects.toStringHelper(this).add(new ObfuscatedString(new long[]{615356957132163390L, 2868417084383231571L}).toString(), this.zza).add(new ObfuscatedString(new long[]{6414547242179534983L, 5934759002684167315L}).toString(), Double.valueOf(this.zzc)).add(new ObfuscatedString(new long[]{4667726776887021374L, -6963130110649876751L}).toString(), Double.valueOf(this.zzb)).add(new ObfuscatedString(new long[]{3500521801708107271L, 7393969393172345291L}).toString(), Double.valueOf(this.zzd)).add(new ObfuscatedString(new long[]{-7417506286197160448L, 553412324199057211L}).toString(), Integer.valueOf(this.zze)).toString();
    }
}
