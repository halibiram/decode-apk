package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzboy implements zzgdu {
    final /* synthetic */ zzboq zza;

    public zzboy(zzbpc zzbpcVar, zzboq zzboqVar) {
        this.zza = zzboqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgdu
    public final /* bridge */ /* synthetic */ ListenableFuture zza(Object obj) {
        zzceu zzceuVar = new zzceu();
        ((zzbow) obj).zze(this.zza, new zzbox(this, zzceuVar));
        return zzceuVar;
    }
}
