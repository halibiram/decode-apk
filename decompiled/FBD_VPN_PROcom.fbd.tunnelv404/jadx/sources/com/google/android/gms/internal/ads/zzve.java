package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
final class zzve implements zzyi {
    private final zzyi zza;
    private final zzcz zzb;

    public zzve(zzyi zzyiVar, zzcz zzczVar) {
        this.zza = zzyiVar;
        this.zzb = zzczVar;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzve)) {
            return false;
        }
        zzve zzveVar = (zzve) obj;
        if (this.zza.equals(zzveVar.zza) && this.zzb.equals(zzveVar.zzb)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.zzb.hashCode() + 527;
        return this.zza.hashCode() + (hashCode * 31);
    }

    @Override // com.google.android.gms.internal.ads.zzym
    public final int zza(int i) {
        return this.zza.zza(0);
    }

    @Override // com.google.android.gms.internal.ads.zzym
    public final int zzb(int i) {
        return this.zza.zzb(i);
    }

    @Override // com.google.android.gms.internal.ads.zzym
    public final int zzc() {
        return this.zza.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzym
    public final zzam zzd(int i) {
        return this.zza.zzd(i);
    }

    @Override // com.google.android.gms.internal.ads.zzym
    public final zzcz zze() {
        return this.zzb;
    }
}
