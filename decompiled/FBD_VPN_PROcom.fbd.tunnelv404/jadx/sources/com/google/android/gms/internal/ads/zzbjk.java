package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1320xaf50c7e8;

/* loaded from: classes2.dex */
public final class zzbjk extends zzayg implements zzbjm {
    public zzbjk(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{7285106753195806975L, 3297807479733734018L, 1005705759477185742L, 8218655950492880889L, 6099596596007480090L, -4354705907059630069L, 7976743078521092940L, 7400528715974336792L, -1999391963868256756L, 1832406119171959326L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbjm
    public final double zzb() {
        Parcel zzbl = zzbl(3, zza());
        double readDouble = zzbl.readDouble();
        zzbl.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzbjm
    public final int zzc() {
        Parcel zzbl = zzbl(5, zza());
        int readInt = zzbl.readInt();
        zzbl.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzbjm
    public final int zzd() {
        Parcel zzbl = zzbl(4, zza());
        int readInt = zzbl.readInt();
        zzbl.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzbjm
    public final Uri zze() {
        Parcel zzbl = zzbl(2, zza());
        Uri uri = (Uri) zzayi.zza(zzbl, Uri.CREATOR);
        zzbl.recycle();
        return uri;
    }

    @Override // com.google.android.gms.internal.ads.zzbjm
    public final IObjectWrapper zzf() {
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzbl(1, zza()));
    }
}
