package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Future;

/* loaded from: classes2.dex */
public class zzgeh extends zzgei {
    private final ListenableFuture zza;

    public zzgeh(ListenableFuture listenableFuture) {
        this.zza = listenableFuture;
    }

    @Override // com.google.android.gms.internal.ads.zzgeg, com.google.android.gms.internal.ads.zzfzr
    public final /* synthetic */ Object zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgei, com.google.android.gms.internal.ads.zzgeg
    public final /* synthetic */ Future zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzgei
    public final ListenableFuture zzc() {
        return this.zza;
    }
}
