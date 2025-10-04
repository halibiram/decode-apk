package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
final class zzejx extends zzbuf {
    final /* synthetic */ zzejy zza;
    private final zzeiq zzb;

    public /* synthetic */ zzejx(zzejy zzejyVar, zzeiq zzeiqVar, zzejw zzejwVar) {
        this.zza = zzejyVar;
        this.zzb = zzeiqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final void zze(String str) {
        ((zzekj) this.zzb.zzc).zzi(0, str);
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) {
        ((zzekj) this.zzb.zzc).zzh(zzeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final void zzg(IObjectWrapper iObjectWrapper) {
        zzejy.zze(this.zza, (View) ObjectWrapper.unwrap(iObjectWrapper));
        ((zzekj) this.zzb.zzc).zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final void zzh(zzbte zzbteVar) {
        zzejy.zzd(this.zza, zzbteVar);
        ((zzekj) this.zzb.zzc).zzo();
    }
}
