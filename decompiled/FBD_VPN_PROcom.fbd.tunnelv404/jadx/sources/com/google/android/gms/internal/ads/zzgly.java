package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;

/* loaded from: classes2.dex */
public final class zzgly extends zzghi {
    private final zzglx zza;

    private zzgly(zzglx zzglxVar) {
        this.zza = zzglxVar;
    }

    public static zzgly zzc(zzglx zzglxVar) {
        return new zzgly(zzglxVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgly) || ((zzgly) obj).zza != this.zza) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgly.class, this.zza);
    }

    public final String toString() {
        String zzglxVar = this.zza.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{5151660678493143092L, 7996008405619985361L, -4270397955724119036L, 1747053473874917591L, 2059649256828661548L, -6720286705255846926L}).toString());
        sb.append(zzglxVar);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-8545088620580124892L, -3413073541426325157L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzggq
    public final boolean zza() {
        return this.zza != zzglx.zzc;
    }

    public final zzglx zzb() {
        return this.zza;
    }
}
