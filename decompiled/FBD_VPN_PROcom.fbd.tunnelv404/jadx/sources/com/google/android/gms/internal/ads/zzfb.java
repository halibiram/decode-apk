package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfb {
    public final Object zza;
    private zzaf zzb = new zzaf();
    private boolean zzc;
    private boolean zzd;

    public zzfb(Object obj) {
        this.zza = obj;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzfb.class == obj.getClass()) {
            return this.zza.equals(((zzfb) obj).zza);
        }
        return false;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final void zza(int i, zzez zzezVar) {
        if (!this.zzd) {
            if (i != -1) {
                this.zzb.zza(i);
            }
            this.zzc = true;
            zzezVar.zza(this.zza);
        }
    }

    public final void zzb(zzfa zzfaVar) {
        if (!this.zzd && this.zzc) {
            zzah zzb = this.zzb.zzb();
            this.zzb = new zzaf();
            this.zzc = false;
            zzfaVar.zza(this.zza, zzb);
        }
    }

    public final void zzc(zzfa zzfaVar) {
        this.zzd = true;
        if (this.zzc) {
            this.zzc = false;
            zzfaVar.zza(this.zza, this.zzb.zzb());
        }
    }
}
