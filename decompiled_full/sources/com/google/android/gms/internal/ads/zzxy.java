package com.google.android.gms.internal.ads;

import android.media.Spatializer;

/* loaded from: classes2.dex */
final class zzxy implements Spatializer.OnSpatializerStateChangedListener {
    final /* synthetic */ zzyg zza;

    public zzxy(zzxz zzxzVar, zzyg zzygVar) {
        this.zza = zzygVar;
    }

    @Override // android.media.Spatializer.OnSpatializerStateChangedListener
    public final void onSpatializerAvailableChanged(Spatializer spatializer, boolean z) {
        zzyg.zzi(this.zza);
    }

    @Override // android.media.Spatializer.OnSpatializerStateChangedListener
    public final void onSpatializerEnabledChanged(Spatializer spatializer, boolean z) {
        zzyg.zzi(this.zza);
    }
}
