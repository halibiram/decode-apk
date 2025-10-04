package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzchn implements Runnable {
    final /* synthetic */ zzcho zza;

    public zzchn(zzcho zzchoVar) {
        this.zza = zzchoVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.zzt.zzy().zzc(this.zza);
    }
}
