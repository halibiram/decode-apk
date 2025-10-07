package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzero implements zzexq {
    private final zzgey zza;
    private final zzfhh zzb;
    private final zzfhw zzc;

    public zzero(zzgey zzgeyVar, zzfhh zzfhhVar, zzfhw zzfhwVar) {
        this.zza = zzgeyVar;
        this.zzb = zzfhhVar;
        this.zzc = zzfhwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 5;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzern
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzero.this.zzc();
            }
        });
    }

    public final /* synthetic */ zzerp zzc() {
        String str = null;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzhi)).booleanValue()) {
            if (new ObfuscatedString(new long[]{7575353649019704387L, 7275879097294429757L, 8572631689592512960L}).toString().equals(com.google.android.gms.ads.nonagon.signalgeneration.zzf.zzb(this.zzb.zzd))) {
                str = zzfhw.zza();
            }
        }
        return new zzerp(str);
    }
}
