package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbti extends zzayg implements zzbtk {
    public zzbti(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{7236227201037293103L, -5335947462119224741L, 6719374853429199376L, -3763141140410006255L, -8263985795023395140L, -3313091917739266081L, -6992664811601606940L, -4378558683447008364L, 649249816786421987L, 7883007656220713007L, -7394995080377667932L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final boolean zzA() {
        Parcel zzbl = zzbl(18, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final boolean zzB() {
        Parcel zzbl = zzbl(17, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final double zze() {
        Parcel zzbl = zzbl(8, zza());
        double readDouble = zzbl.readDouble();
        zzbl.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final float zzf() {
        Parcel zzbl = zzbl(23, zza());
        float readFloat = zzbl.readFloat();
        zzbl.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final float zzg() {
        Parcel zzbl = zzbl(25, zza());
        float readFloat = zzbl.readFloat();
        zzbl.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final float zzh() {
        Parcel zzbl = zzbl(24, zza());
        float readFloat = zzbl.readFloat();
        zzbl.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final Bundle zzi() {
        Parcel zzbl = zzbl(16, zza());
        Bundle bundle = (Bundle) zzayi.zza(zzbl, Bundle.CREATOR);
        zzbl.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final com.google.android.gms.ads.internal.client.zzdq zzj() {
        Parcel zzbl = zzbl(11, zza());
        com.google.android.gms.ads.internal.client.zzdq zzb = com.google.android.gms.ads.internal.client.zzdp.zzb(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final zzbjf zzk() {
        Parcel zzbl = zzbl(12, zza());
        zzbjf zzj = zzbje.zzj(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzj;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final zzbjm zzl() {
        Parcel zzbl = zzbl(5, zza());
        zzbjm zzg = zzbjl.zzg(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final IObjectWrapper zzm() {
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzbl(13, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final IObjectWrapper zzn() {
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzbl(14, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final IObjectWrapper zzo() {
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzbl(15, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final String zzp() {
        Parcel zzbl = zzbl(7, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final String zzq() {
        Parcel zzbl = zzbl(4, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final String zzr() {
        Parcel zzbl = zzbl(6, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final String zzs() {
        Parcel zzbl = zzbl(2, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final String zzt() {
        Parcel zzbl = zzbl(10, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final String zzu() {
        Parcel zzbl = zzbl(9, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final List zzv() {
        Parcel zzbl = zzbl(3, zza());
        ArrayList zzb = zzayi.zzb(zzbl);
        zzbl.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final void zzw(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(20, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final void zzx() {
        zzbm(19, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final void zzy(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, iObjectWrapper2);
        zzayi.zzf(zza, iObjectWrapper3);
        zzbm(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbtk
    public final void zzz(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(22, zza);
    }
}
