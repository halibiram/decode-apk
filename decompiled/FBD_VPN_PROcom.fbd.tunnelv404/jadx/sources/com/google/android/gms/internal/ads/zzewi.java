package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes2.dex */
public final class zzewi implements zzexq {
    private final String zza;
    private final String zzb;

    public zzewi(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 31;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return zzgen.zzh(new zzewj(this.zza, this.zzb));
    }
}
