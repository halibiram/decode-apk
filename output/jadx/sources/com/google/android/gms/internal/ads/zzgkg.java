package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;

/* loaded from: classes2.dex */
public final class zzgkg extends zzghi {
    private final zzgkf zza;

    private zzgkg(zzgkf zzgkfVar) {
        this.zza = zzgkfVar;
    }

    public static zzgkg zzc(zzgkf zzgkfVar) {
        return new zzgkg(zzgkfVar);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgkg) || ((zzgkg) obj).zza != this.zza) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(zzgkg.class, this.zza);
    }

    public final String toString() {
        String zzgkfVar = this.zza.toString();
        StringBuilder sb = new StringBuilder();
        sb.append(new ObfuscatedString(new long[]{1865549805886725890L, 2152537559377177154L, -5654707876217188522L, -7816200557281220909L, 3005244060749749039L, -4062174864282062194L}).toString());
        sb.append(zzgkfVar);
        return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-158677114787179816L, 4719859678936292410L}), sb);
    }

    @Override // com.google.android.gms.internal.ads.zzggq
    public final boolean zza() {
        return this.zza != zzgkf.zzc;
    }

    public final zzgkf zzb() {
        return this.zza;
    }
}
