package com.google.android.gms.internal.ads;

import java.io.Closeable;

/* loaded from: classes2.dex */
public abstract class zzftc implements Closeable {
    public static zzfto zza() {
        return new zzfto();
    }

    public static zzfto zzb(final int i, zzftn zzftnVar) {
        return new zzfto(new zzfxu() { // from class: com.google.android.gms.internal.ads.zzfta
            @Override // com.google.android.gms.internal.ads.zzfxu
            public final Object zza() {
                Integer valueOf;
                valueOf = Integer.valueOf(i);
                return valueOf;
            }
        }, new zzfxu() { // from class: com.google.android.gms.internal.ads.zzftb
            @Override // com.google.android.gms.internal.ads.zzfxu
            public final Object zza() {
                return zzftc.zze();
            }
        }, zzftnVar);
    }

    public static zzfto zzc(zzfxu<Integer> zzfxuVar, zzfxu<Integer> zzfxuVar2, zzftn zzftnVar) {
        return new zzfto(zzfxuVar, zzfxuVar2, zzftnVar);
    }

    public static /* synthetic */ Integer zze() {
        return -1;
    }
}
