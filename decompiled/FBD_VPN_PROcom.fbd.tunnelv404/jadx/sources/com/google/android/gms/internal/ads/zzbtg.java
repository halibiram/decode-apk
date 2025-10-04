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
public final class zzbtg extends zzayg implements IInterface {
    public zzbtg(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-7434859626510299256L, 2866510451381054304L, -987156436257044684L, -5678158701252874774L, -2811206044159782253L, 8916340072110612364L, -6048566134763698508L, -6093374917323432865L, -2539428073140994296L, -4311040120659458065L, 2023831352993928255L}).toString());
    }

    public final double zze() {
        Parcel zzbl = zzbl(7, zza());
        double readDouble = zzbl.readDouble();
        zzbl.recycle();
        return readDouble;
    }

    public final Bundle zzf() {
        Parcel zzbl = zzbl(15, zza());
        Bundle bundle = (Bundle) zzayi.zza(zzbl, Bundle.CREATOR);
        zzbl.recycle();
        return bundle;
    }

    public final com.google.android.gms.ads.internal.client.zzdq zzg() {
        Parcel zzbl = zzbl(17, zza());
        com.google.android.gms.ads.internal.client.zzdq zzb = com.google.android.gms.ads.internal.client.zzdp.zzb(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzb;
    }

    public final zzbjf zzh() {
        Parcel zzbl = zzbl(19, zza());
        zzbjf zzj = zzbje.zzj(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzj;
    }

    public final zzbjm zzi() {
        Parcel zzbl = zzbl(5, zza());
        zzbjm zzg = zzbjl.zzg(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzg;
    }

    public final IObjectWrapper zzj() {
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzbl(18, zza()));
    }

    public final IObjectWrapper zzk() {
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzbl(20, zza()));
    }

    public final IObjectWrapper zzl() {
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzbl(21, zza()));
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

    public final String zzp() {
        Parcel zzbl = zzbl(9, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    public final String zzq() {
        Parcel zzbl = zzbl(8, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    public final List zzr() {
        Parcel zzbl = zzbl(3, zza());
        ArrayList zzb = zzayi.zzb(zzbl);
        zzbl.recycle();
        return zzb;
    }

    public final void zzs(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(11, zza);
    }

    public final void zzt() {
        zzbm(10, zza());
    }

    public final void zzu(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(12, zza);
    }

    public final void zzv(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, iObjectWrapper2);
        zzayi.zzf(zza, iObjectWrapper3);
        zzbm(22, zza);
    }

    public final void zzw(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(16, zza);
    }

    public final boolean zzx() {
        Parcel zzbl = zzbl(14, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    public final boolean zzy() {
        Parcel zzbl = zzbl(13, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }
}
