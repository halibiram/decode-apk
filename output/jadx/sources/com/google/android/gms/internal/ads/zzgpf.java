package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgpf {
    private final Class zza;
    private final zzgxq zzb;

    public /* synthetic */ zzgpf(Class cls, zzgxq zzgxqVar, zzgpe zzgpeVar) {
        this.zza = cls;
        this.zzb = zzgxqVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgpf)) {
            return false;
        }
        zzgpf zzgpfVar = (zzgpf) obj;
        if (!zzgpfVar.zza.equals(this.zza) || !zzgpfVar.zzb.equals(this.zzb)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    public final String toString() {
        zzgxq zzgxqVar = this.zzb;
        String simpleName = this.zza.getSimpleName();
        String valueOf = String.valueOf(zzgxqVar);
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{7182680233270756065L, 100150874797899060L, -4064892979813215195L, -4194834017512142732L}), AbstractC0749x8313616e.m3341xc20437a5(simpleName), valueOf);
    }
}
