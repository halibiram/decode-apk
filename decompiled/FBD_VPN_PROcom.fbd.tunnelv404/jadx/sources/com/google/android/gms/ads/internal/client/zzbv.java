package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzayg;
import com.google.android.gms.internal.ads.zzayi;
import com.google.android.gms.internal.ads.zzbsv;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbv extends zzayg implements IInterface {
    public zzbv(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{1086495877843579591L, -3125047237510624968L, 5866054920116059203L, -8477953773972237810L, 2912081738180191119L, 8132910399159390128L, -3747734297160429240L, -5944867445919969502L, 7403575816244487868L}).toString());
    }

    public final IBinder zze(IObjectWrapper iObjectWrapper, zzq zzqVar, String str, zzbsv zzbsvVar, int i, int i2) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzd(zza, zzqVar);
        zza.writeString(str);
        zzayi.zzf(zza, zzbsvVar);
        zza.writeInt(240304000);
        zza.writeInt(i2);
        Parcel zzbl = zzbl(2, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        zzbl.recycle();
        return readStrongBinder;
    }
}
