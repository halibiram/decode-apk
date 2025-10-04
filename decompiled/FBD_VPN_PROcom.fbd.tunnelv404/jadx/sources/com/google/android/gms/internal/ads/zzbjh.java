package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1320xaf50c7e8;

/* loaded from: classes2.dex */
public final class zzbjh extends zzayg implements zzbjj {
    public zzbjh(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{1423479390239203952L, -2703413192098243132L, 8977143205052893272L, 5085625194195304083L, -8860513561591236809L, 7439018012261097849L, -1405681929030047690L, -963985355144639276L, 3077114009933065246L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final float zze() {
        Parcel zzbl = zzbl(2, zza());
        float readFloat = zzbl.readFloat();
        zzbl.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final float zzf() {
        Parcel zzbl = zzbl(6, zza());
        float readFloat = zzbl.readFloat();
        zzbl.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final float zzg() {
        Parcel zzbl = zzbl(5, zza());
        float readFloat = zzbl.readFloat();
        zzbl.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final com.google.android.gms.ads.internal.client.zzdq zzh() {
        Parcel zzbl = zzbl(7, zza());
        com.google.android.gms.ads.internal.client.zzdq zzb = com.google.android.gms.ads.internal.client.zzdp.zzb(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final IObjectWrapper zzi() {
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzbl(4, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final void zzj(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final boolean zzk() {
        Parcel zzbl = zzbl(10, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final boolean zzl() {
        Parcel zzbl = zzbl(8, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbjj
    public final void zzm(zzbku zzbkuVar) {
        throw null;
    }
}
