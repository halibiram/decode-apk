package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzaqg {

    @Nullable
    public final Object zza;

    @Nullable
    public final zzapj zzb;

    @Nullable
    public final zzaqj zzc;
    public boolean zzd;

    private zzaqg(zzaqj zzaqjVar) {
        this.zzd = false;
        this.zza = null;
        this.zzb = null;
        this.zzc = zzaqjVar;
    }

    public static zzaqg zza(zzaqj zzaqjVar) {
        return new zzaqg(zzaqjVar);
    }

    public static zzaqg zzb(@Nullable Object obj, @Nullable zzapj zzapjVar) {
        return new zzaqg(obj, zzapjVar);
    }

    public final boolean zzc() {
        return this.zzc == null;
    }

    private zzaqg(@Nullable Object obj, @Nullable zzapj zzapjVar) {
        this.zzd = false;
        this.zza = obj;
        this.zzb = zzapjVar;
        this.zzc = null;
    }
}
