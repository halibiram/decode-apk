package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes2.dex */
public final class zzfdt implements zzfed {
    private final zzfed zza;

    @Nullable
    private zzdae zzb;

    public zzfdt(zzfed zzfedVar) {
        this.zza = zzfedVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfed
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final synchronized zzdae zzd() {
        return this.zzb;
    }

    public final synchronized ListenableFuture zzb(zzfee zzfeeVar, zzfec zzfecVar, @Nullable zzdae zzdaeVar) {
        this.zzb = zzdaeVar;
        if (zzfeeVar.zza != null) {
            zzcxp zzb = zzdaeVar.zzb();
            return zzb.zzi(zzb.zzk(zzgen.zzh(zzfeeVar.zza)));
        }
        return ((zzfds) this.zza).zzb(zzfeeVar, zzfecVar, zzdaeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfed
    public final /* bridge */ /* synthetic */ ListenableFuture zzc(zzfee zzfeeVar, zzfec zzfecVar, @Nullable Object obj) {
        return zzb(zzfeeVar, zzfecVar, null);
    }
}
