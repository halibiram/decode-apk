package com.google.android.gms.internal.ads;

import android.content.Context;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzdts implements zzdbs {

    @Nullable
    private final zzcjk zza;

    public zzdts(@Nullable zzcjk zzcjkVar) {
        this.zza = zzcjkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final void zzbs(@Nullable Context context) {
        zzcjk zzcjkVar = this.zza;
        if (zzcjkVar != null) {
            zzcjkVar.destroy();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final void zzbu(@Nullable Context context) {
        zzcjk zzcjkVar = this.zza;
        if (zzcjkVar != null) {
            zzcjkVar.onPause();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbs
    public final void zzbv(@Nullable Context context) {
        zzcjk zzcjkVar = this.zza;
        if (zzcjkVar != null) {
            zzcjkVar.onResume();
        }
    }
}
