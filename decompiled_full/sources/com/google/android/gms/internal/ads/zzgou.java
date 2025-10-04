package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;

/* loaded from: classes2.dex */
final class zzgou {
    private final Class zza;
    private final Class zzb;

    public /* synthetic */ zzgou(Class cls, Class cls2, zzgot zzgotVar) {
        this.zza = cls;
        this.zzb = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgou)) {
            return false;
        }
        zzgou zzgouVar = (zzgou) obj;
        if (!zzgouVar.zza.equals(this.zza) || !zzgouVar.zzb.equals(this.zzb)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    public final String toString() {
        Class cls = this.zzb;
        String simpleName = this.zza.getSimpleName();
        String simpleName2 = cls.getSimpleName();
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{-1445385506472528962L, -8986755725149771031L, 9169300666398353682L, -8526125563679918711L}), AbstractC0749x8313616e.m3341xc20437a5(simpleName), simpleName2);
    }
}
