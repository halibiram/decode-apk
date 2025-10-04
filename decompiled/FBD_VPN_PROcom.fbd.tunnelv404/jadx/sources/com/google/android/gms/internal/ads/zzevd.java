package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzevd implements zzexq {
    private final zzgey zza;

    public zzevd(zzgey zzgeyVar) {
        this.zza = zzgeyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 24;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzevc
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Bundle bundle = new Bundle();
                Runtime runtime = Runtime.getRuntime();
                bundle.putLong(new ObfuscatedString(new long[]{8056666185926618290L, -5269736748560545031L, 2106766903378241934L}).toString(), runtime.freeMemory());
                bundle.putLong(new ObfuscatedString(new long[]{-7736769676361860645L, -1607553685252616447L, -1119987391382827285L}).toString(), runtime.maxMemory());
                bundle.putLong(new ObfuscatedString(new long[]{-8249689063569888106L, -1840830498522118837L, -4634643282482154519L}).toString(), runtime.totalMemory());
                bundle.putInt(new ObfuscatedString(new long[]{1401722834308433248L, -5299480817059105776L, -301672568850982976L}).toString(), com.google.android.gms.ads.internal.zzt.zzo().zzb());
                return new zzeve(bundle);
            }
        });
    }
}
