package com.google.android.gms.internal.ads;

import android.view.View;

/* loaded from: classes2.dex */
final class zzcjp implements View.OnAttachStateChangeListener {
    final /* synthetic */ zzcbs zza;
    final /* synthetic */ zzcjs zzb;

    public zzcjp(zzcjs zzcjsVar, zzcbs zzcbsVar) {
        this.zza = zzcbsVar;
        this.zzb = zzcjsVar;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.zzb.zzS(view, this.zza, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
