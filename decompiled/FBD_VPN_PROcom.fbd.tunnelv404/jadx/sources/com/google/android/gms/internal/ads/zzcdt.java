package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzcdt extends Thread {
    final /* synthetic */ String zza;

    public zzcdt(zzcdv zzcdvVar, String str) {
        this.zza = str;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        new zzceh(null).zza(this.zza);
    }
}
