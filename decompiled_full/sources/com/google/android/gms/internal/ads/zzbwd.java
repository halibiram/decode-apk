package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbwd extends zzbkp {
    final /* synthetic */ zzbwg zza;

    public /* synthetic */ zzbwd(zzbwg zzbwgVar, zzbwc zzbwcVar) {
        this.zza = zzbwgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkq
    public final void zze(zzbkg zzbkgVar, String str) {
        zzbwg zzbwgVar = this.zza;
        if (zzbwg.zzc(zzbwgVar) == null) {
            return;
        }
        zzbwg.zzc(zzbwgVar).onCustomClick(zzbwg.zze(zzbwgVar, zzbkgVar), str);
    }
}
