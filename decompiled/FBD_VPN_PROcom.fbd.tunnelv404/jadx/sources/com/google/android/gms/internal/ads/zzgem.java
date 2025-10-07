package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzgem {
    private final boolean zza;
    private final zzgaa zzb;

    public /* synthetic */ zzgem(boolean z, zzgaa zzgaaVar, zzgel zzgelVar) {
        this.zza = z;
        this.zzb = zzgaaVar;
    }

    public final ListenableFuture zza(Callable callable, Executor executor) {
        return new zzgea(this.zzb, this.zza, executor, callable);
    }
}
