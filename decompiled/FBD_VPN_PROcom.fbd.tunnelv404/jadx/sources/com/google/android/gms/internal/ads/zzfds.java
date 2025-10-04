package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes2.dex */
public final class zzfds implements zzfed {

    @Nullable
    private zzdae zza;

    @Override // com.google.android.gms.internal.ads.zzfed
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final synchronized zzdae zzd() {
        return this.zza;
    }

    public final synchronized ListenableFuture zzb(zzfee zzfeeVar, zzfec zzfecVar, @Nullable zzdae zzdaeVar) {
        zzcxp zzb;
        try {
            if (zzdaeVar != null) {
                this.zza = zzdaeVar;
            } else {
                this.zza = (zzdae) zzfecVar.zza(zzfeeVar.zzb).zzh();
            }
            zzb = this.zza.zzb();
        } catch (Throwable th) {
            throw th;
        }
        return zzb.zzi(zzb.zzj());
    }

    @Override // com.google.android.gms.internal.ads.zzfed
    public final /* bridge */ /* synthetic */ ListenableFuture zzc(zzfee zzfeeVar, zzfec zzfecVar, @Nullable Object obj) {
        return zzb(zzfeeVar, zzfecVar, null);
    }
}
