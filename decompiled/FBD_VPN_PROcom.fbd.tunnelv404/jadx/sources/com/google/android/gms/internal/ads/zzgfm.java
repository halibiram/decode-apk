package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgfm extends zzgew {
    final /* synthetic */ zzgfn zza;
    private final Callable zzb;

    public zzgfm(zzgfn zzgfnVar, Callable callable) {
        this.zza = zzgfnVar;
        callable.getClass();
        this.zzb = callable;
    }

    @Override // com.google.android.gms.internal.ads.zzgew
    public final Object zza() {
        return this.zzb.call();
    }

    @Override // com.google.android.gms.internal.ads.zzgew
    public final String zzb() {
        return this.zzb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgew
    public final void zzd(Throwable th) {
        this.zza.zzd(th);
    }

    @Override // com.google.android.gms.internal.ads.zzgew
    public final void zze(Object obj) {
        this.zza.zzc(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgew
    public final boolean zzg() {
        return this.zza.isDone();
    }
}
