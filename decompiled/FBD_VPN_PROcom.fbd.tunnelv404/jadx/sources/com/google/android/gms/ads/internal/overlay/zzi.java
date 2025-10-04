package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.ads.zzcjk;
import com.panda912.muddy.ObfuscatedString;

@VisibleForTesting
/* loaded from: classes2.dex */
public final class zzi {
    public final int zza;
    public final ViewGroup.LayoutParams zzb;
    public final ViewGroup zzc;
    public final Context zzd;

    public zzi(zzcjk zzcjkVar) {
        this.zzb = zzcjkVar.getLayoutParams();
        ViewParent parent = zzcjkVar.getParent();
        this.zzd = zzcjkVar.zzE();
        if (parent != null && (parent instanceof ViewGroup)) {
            ViewGroup viewGroup = (ViewGroup) parent;
            this.zzc = viewGroup;
            this.zza = viewGroup.indexOfChild(zzcjkVar.zzF());
            viewGroup.removeView(zzcjkVar.zzF());
            zzcjkVar.zzao(true);
            return;
        }
        throw new zzg(new ObfuscatedString(new long[]{-4900132589712171692L, 5686035803788493134L, 2282682125716422935L, 5421757663035423522L, 7946466384553018408L, -1885315537966005075L, -4742132818733555625L, -5866186528096909789L}).toString());
    }
}
