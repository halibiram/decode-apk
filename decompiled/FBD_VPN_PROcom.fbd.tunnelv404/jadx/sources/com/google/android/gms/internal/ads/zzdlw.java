package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzdlw implements zzbng {
    private final WeakReference zza;

    public /* synthetic */ zzdlw(zzdlx zzdlxVar, zzdlv zzdlvVar) {
        this.zza = new WeakReference(zzdlxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbng
    public final void zza(Object obj, Map map) {
        zzdlx zzdlxVar = (zzdlx) this.zza.get();
        if (zzdlxVar == null) {
            return;
        }
        zzdlx.zzc(zzdlxVar).zza();
    }
}
