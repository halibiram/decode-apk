package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzdry implements zzbng {
    final /* synthetic */ zzdrz zza;
    private final WeakReference zzb;
    private final String zzc;
    private final zzbng zzd;

    public /* synthetic */ zzdry(zzdrz zzdrzVar, WeakReference weakReference, String str, zzbng zzbngVar, zzdrx zzdrxVar) {
        this.zza = zzdrzVar;
        this.zzb = weakReference;
        this.zzc = str;
        this.zzd = zzbngVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final void zza(Object obj, Map map) {
        Object obj2 = this.zzb.get();
        if (obj2 == null) {
            this.zza.zzk(this.zzc, this);
        } else {
            this.zzd.zza(obj2, map);
        }
    }
}
