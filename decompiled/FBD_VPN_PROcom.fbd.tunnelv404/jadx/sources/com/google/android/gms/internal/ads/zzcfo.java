package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzcfo implements Runnable {
    final /* synthetic */ zzcfp zza;

    public zzcfo(zzcfp zzcfpVar) {
        this.zza = zzcfpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcfq zzcfqVar;
        zzcfq zzcfqVar2;
        zzcfp zzcfpVar = this.zza;
        zzcfqVar = zzcfpVar.zzq;
        if (zzcfqVar != null) {
            zzcfqVar2 = zzcfpVar.zzq;
            zzcfqVar2.zzd();
        }
    }
}
