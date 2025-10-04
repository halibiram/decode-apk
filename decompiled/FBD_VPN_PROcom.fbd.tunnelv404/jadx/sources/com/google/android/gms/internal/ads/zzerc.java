package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.core.content.ContextCompat;
import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzerc implements zzexq {
    private final Context zza;

    public zzerc(Context context) {
        this.zza = context;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final int zza() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzexq
    public final ListenableFuture zzb() {
        boolean z;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zza(zzbgc.zzcJ)).booleanValue()) {
            if (ContextCompat.checkSelfPermission(this.zza, new ObfuscatedString(new long[]{-6903542519941875170L, 8041543819313430332L, 403897629075908117L, -5683049849856662838L, 2439337304629831905L, -7446999487732104126L}).toString()) == 0) {
                z = true;
            } else {
                z = false;
            }
            return zzgen.zzh(new zzerd(z));
        }
        return zzgen.zzh(null);
    }
}
