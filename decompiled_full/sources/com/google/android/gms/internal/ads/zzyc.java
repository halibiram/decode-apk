package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class zzyc {
    public final int zza;
    public final zzcz zzb;
    public final int zzc;
    public final zzam zzd;

    public zzyc(int i, zzcz zzczVar, int i2) {
        this.zza = i;
        this.zzb = zzczVar;
        this.zzc = i2;
        this.zzd = zzczVar.zzb(i2);
    }

    public abstract int zzb();

    public abstract boolean zzc(zzyc zzycVar);
}
