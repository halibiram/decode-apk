package com.google.android.gms.internal.ads;

import android.os.Build;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.HashMap;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final class zzfbj implements zzexq {
    private final zzgey zza;

    public zzfbj(zzgey zzgeyVar) {
        this.zza = zzgeyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 51;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzfbi
            @Override // java.util.concurrent.Callable
            public final Object call() {
                HashMap hashMap = new HashMap();
                String str = (String) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzK);
                if (str != null && !str.isEmpty()) {
                    if (Build.VERSION.SDK_INT >= ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzL)).intValue()) {
                        for (String str2 : str.split(new ObfuscatedString(new long[]{-474232077797197772L, -525837449841988949L}).toString(), -1)) {
                            hashMap.put(str2, com.google.android.gms.ads.internal.util.zzcn.zza(str2));
                        }
                    }
                }
                return new zzfbk(hashMap);
            }
        });
    }
}
