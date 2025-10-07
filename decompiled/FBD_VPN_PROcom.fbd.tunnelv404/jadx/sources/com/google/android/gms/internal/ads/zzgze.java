package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzgze {
    private final Object zza;
    private final int zzb;

    public zzgze(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzgze)) {
            return false;
        }
        zzgze zzgzeVar = (zzgze) obj;
        if (this.zza != zzgzeVar.zza || this.zzb != zzgzeVar.zzb) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * 65535) + this.zzb;
    }
}
