package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbth extends zzayg implements IInterface {
    public zzbth(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{8992560139516133315L, -6190172691965109450L, -1852397556872096468L, 5274281593944310177L, -3451351895544659254L, 7825097413520866418L, 7224674519488558614L, 4367119296190165746L, -5743529567410863275L, -2539601941091475255L, 6671856903908284214L}).toString());
    }

    public final Bundle zze() {
        Parcel zzbl = zzbl(13, zza());
        Bundle bundle = (Bundle) zzayi.zza(zzbl, Bundle.CREATOR);
        zzbl.recycle();
        return bundle;
    }

    public final com.google.android.gms.ads.internal.client.zzdq zzf() {
        Parcel zzbl = zzbl(16, zza());
        com.google.android.gms.ads.internal.client.zzdq zzb = com.google.android.gms.ads.internal.client.zzdp.zzb(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzb;
    }

    public final zzbjf zzg() {
        Parcel zzbl = zzbl(19, zza());
        zzbjf zzj = zzbje.zzj(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzj;
    }

    public final zzbjm zzh() {
        Parcel zzbl = zzbl(5, zza());
        zzbjm zzg = zzbjl.zzg(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzg;
    }

    public final IObjectWrapper zzi() {
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzbl(15, zza()));
    }

    public final IObjectWrapper zzj() {
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzbl(20, zza()));
    }

    public final IObjectWrapper zzk() {
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzbl(21, zza()));
    }

    public final String zzl() {
        Parcel zzbl = zzbl(7, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    public final String zzm() {
        Parcel zzbl = zzbl(4, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    public final String zzn() {
        Parcel zzbl = zzbl(6, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    public final String zzo() {
        Parcel zzbl = zzbl(2, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    public final List zzp() {
        Parcel zzbl = zzbl(3, zza());
        ArrayList zzb = zzayi.zzb(zzbl);
        zzbl.recycle();
        return zzb;
    }

    public final void zzq(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(9, zza);
    }

    public final void zzr() {
        zzbm(8, zza());
    }

    public final void zzs(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(10, zza);
    }

    public final void zzt(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, iObjectWrapper2);
        zzayi.zzf(zza, iObjectWrapper3);
        zzbm(22, zza);
    }

    public final void zzu(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(14, zza);
    }

    public final boolean zzv() {
        Parcel zzbl = zzbl(12, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    public final boolean zzw() {
        Parcel zzbl = zzbl(11, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }
}
