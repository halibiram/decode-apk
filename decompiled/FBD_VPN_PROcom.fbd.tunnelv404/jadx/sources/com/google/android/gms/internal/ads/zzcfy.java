package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzcfy implements Runnable {
    final /* synthetic */ boolean zza;
    final /* synthetic */ zzcfz zzb;

    public zzcfy(zzcfz zzcfzVar, boolean z) {
        this.zza = z;
        this.zzb = zzcfzVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzK(new ObfuscatedString(new long[]{1753000392695328059L, 327204933524853292L, 8149071978677761368L, 4910212508347919690L}).toString(), new ObfuscatedString(new long[]{4618767541843272414L, 1896869915502183908L, -6083945625091600975L}).toString(), String.valueOf(this.zza));
    }
}
