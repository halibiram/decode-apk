package com.google.android.gms.internal.ads;

import javax.annotation.Nullable;

/* loaded from: classes2.dex */
public abstract class zzgnl {
    private final Class zza;
    private final Class zzb;

    public /* synthetic */ zzgnl(Class cls, Class cls2, zzgnk zzgnkVar) {
        this.zza = cls;
        this.zzb = cls2;
    }

    public static zzgnl zzb(zzgnj zzgnjVar, Class cls, Class cls2) {
        return new zzgni(cls, cls2, zzgnjVar);
    }

    public abstract zzgpc zza(zzggc zzggcVar, @Nullable zzghc zzghcVar);

    public final Class zzc() {
        return this.zza;
    }

    public final Class zzd() {
        return this.zzb;
    }
}
