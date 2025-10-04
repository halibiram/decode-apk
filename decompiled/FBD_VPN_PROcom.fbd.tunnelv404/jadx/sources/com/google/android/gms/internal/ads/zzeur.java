package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzeur implements zzexq {
    private final zzgey zza;
    private final zzfhh zzb;

    public zzeur(zzgey zzgeyVar, zzfhh zzfhhVar) {
        this.zza = zzgeyVar;
        this.zzb = zzfhhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 21;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzeuq
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzeur.this.zzc();
            }
        });
    }

    public final /* synthetic */ zzeus zzc() {
        return new zzeus(new ObfuscatedString(new long[]{-6980475087820048015L, -1976509842915529617L, -7513122071204921299L}).toString().equals(com.google.android.gms.ads.nonagon.signalgeneration.zzf.zzb(this.zzb.zzd)));
    }
}
