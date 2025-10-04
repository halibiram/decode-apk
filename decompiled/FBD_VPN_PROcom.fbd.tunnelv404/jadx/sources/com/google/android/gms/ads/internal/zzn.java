package com.google.android.gms.ads.internal;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.internal.ads.zzavi;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzn implements View.OnTouchListener {
    final /* synthetic */ zzs zza;

    public zzn(zzs zzsVar) {
        this.zza = zzsVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        zzavi zzaviVar;
        zzavi zzaviVar2;
        zzs zzsVar = this.zza;
        zzaviVar = zzsVar.zzh;
        if (zzaviVar != null) {
            zzaviVar2 = zzsVar.zzh;
            zzaviVar2.zzd(motionEvent);
            return false;
        }
        return false;
    }
}
