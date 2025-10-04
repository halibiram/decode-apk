package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgcy extends zzgcz {
    public zzgcy(ListenableFuture listenableFuture, Class cls, zzfws zzfwsVar) {
        super(listenableFuture, cls, zzfwsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgcz
    public final /* synthetic */ Object zze(Object obj, Throwable th) {
        return ((zzfws) obj).apply(th);
    }

    @Override // com.google.android.gms.internal.ads.zzgcz
    public final void zzf(Object obj) {
        zzc(obj);
    }
}
