package com.google.android.gms.internal.measurement;

/* loaded from: classes2.dex */
final class zzjn {
    private final Object zza;
    private final int zzb;

    public zzjn(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzjn)) {
            return false;
        }
        zzjn zzjnVar = (zzjn) obj;
        if (this.zza != zzjnVar.zza || this.zzb != zzjnVar.zzb) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * 65535) + this.zzb;
    }
}
