package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public abstract class zzgom {
    private final Class zza;
    private final Class zzb;

    public /* synthetic */ zzgom(Class cls, Class cls2, zzgol zzgolVar) {
        this.zza = cls;
        this.zzb = cls2;
    }

    public static zzgom zzb(zzgok zzgokVar, Class cls, Class cls2) {
        return new zzgoj(cls, cls2, zzgokVar);
    }

    public abstract zzgpc zza(zzggq zzggqVar);

    public final Class zzc() {
        return this.zza;
    }

    public final Class zzd() {
        return this.zzb;
    }
}
