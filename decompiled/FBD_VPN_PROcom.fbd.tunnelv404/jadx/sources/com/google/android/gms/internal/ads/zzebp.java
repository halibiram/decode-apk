package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;

/* loaded from: classes2.dex */
public final class zzebp extends zzbyz {
    final /* synthetic */ zzebq zza;

    public zzebp(zzebq zzebqVar) {
        this.zza = zzebqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbza
    public final void zze(com.google.android.gms.ads.internal.util.zzbb zzbbVar) {
        this.zza.zza.zzd(zzbbVar.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbza
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) {
        this.zza.zza.zzc(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }
}
