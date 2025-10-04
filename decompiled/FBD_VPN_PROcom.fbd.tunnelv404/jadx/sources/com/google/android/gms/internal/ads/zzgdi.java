package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgdi extends zzgdj {
    public zzgdi(ListenableFuture listenableFuture, zzfws zzfwsVar) {
        super(listenableFuture, zzfwsVar);
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final /* synthetic */ Object zze(Object obj, Object obj2) {
        return ((zzfws) obj).apply(obj2);
    }

    @Override // com.google.android.gms.internal.ads.zzgdj
    public final void zzf(Object obj) {
        zzc(obj);
    }
}
