package com.google.android.gms.internal.ads;

import android.view.View;

/* loaded from: classes2.dex */
final class zzazl implements Runnable {
    final /* synthetic */ View zza;
    final /* synthetic */ zzazp zzb;

    public zzazl(zzazp zzazpVar, View view) {
        this.zza = view;
        this.zzb = zzazpVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzc(this.zza);
    }
}
