package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzcfj implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ zzcfp zzc;

    public zzcfj(zzcfp zzcfpVar, String str, String str2) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = zzcfpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcfq zzcfqVar;
        zzcfq zzcfqVar2;
        zzcfp zzcfpVar = this.zzc;
        zzcfqVar = zzcfpVar.zzq;
        if (zzcfqVar != null) {
            String str = this.zza;
            String str2 = this.zzb;
            zzcfqVar2 = zzcfpVar.zzq;
            zzcfqVar2.zzb(str, str2);
        }
    }
}
