package com.google.android.gms.internal.ads;

import android.media.MediaPlayer;

/* loaded from: classes2.dex */
final class zzcfh implements Runnable {
    final /* synthetic */ MediaPlayer zza;
    final /* synthetic */ zzcfp zzb;

    public zzcfh(zzcfp zzcfpVar, MediaPlayer mediaPlayer) {
        this.zza = mediaPlayer;
        this.zzb = zzcfpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzcfq zzcfqVar;
        zzcfq zzcfqVar2;
        zzcfp.zzl(this.zzb, this.zza);
        zzcfp zzcfpVar = this.zzb;
        zzcfqVar = zzcfpVar.zzq;
        if (zzcfqVar != null) {
            zzcfqVar2 = zzcfpVar.zzq;
            zzcfqVar2.zzf();
        }
    }
}
