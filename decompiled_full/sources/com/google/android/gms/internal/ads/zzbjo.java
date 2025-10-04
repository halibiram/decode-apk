package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1320xaf50c7e8;

/* loaded from: classes2.dex */
public final class zzbjo extends zzayg implements zzbjq {
    public zzbjo(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{4632101809475276837L, 7810409560776434518L, 6442758565348710324L, -3675436711019931399L, -4324672788736056929L, 6664951515301242599L, -3372861776172290349L, 3175088947239460243L, -3771020618631686464L, -4182241501139035946L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbjq
    public final IObjectWrapper zzb(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzbl(2, zza));
    }

    @Override // com.google.android.gms.internal.ads.zzbjq
    public final void zzbE(String str, IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zza.writeString(str);
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbjq
    public final void zzbF(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbjq
    public final void zzbG(zzbjj zzbjjVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzbjjVar);
        zzbm(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbjq
    public final void zzbH(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(9, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbjq
    public final void zzbI(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbjq
    public final void zzc() {
        zzbm(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbjq
    public final void zzd(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbjq
    public final void zze(IObjectWrapper iObjectWrapper, int i) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zza.writeInt(i);
        zzbm(5, zza);
    }
}
