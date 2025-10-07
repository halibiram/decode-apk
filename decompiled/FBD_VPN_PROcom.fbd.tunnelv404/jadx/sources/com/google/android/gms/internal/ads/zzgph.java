package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgph {
    private final Class zza;
    private final Class zzb;

    public /* synthetic */ zzgph(Class cls, Class cls2, zzgpg zzgpgVar) {
        this.zza = cls;
        this.zzb = cls2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgph)) {
            return false;
        }
        zzgph zzgphVar = (zzgph) obj;
        if (!zzgphVar.zza.equals(this.zza) || !zzgphVar.zzb.equals(this.zzb)) {
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
        return AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{514138507693270257L, -7166465851594894949L, 5711915808598532335L, 8983046781599227536L, 3920967299947995416L}), AbstractC0749x8313616e.m3341xc20437a5(simpleName), simpleName2);
    }
}
