package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbbd extends zzayg implements IInterface {
    public zzbbd(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{180408535879821297L, 6350339146300588631L, -6306988819553048254L, -5076114963970414619L, -124488373491258737L, 2945544577075632842L, -6204217076209077121L, -3383921993001236412L}).toString());
    }

    public final long zze(zzbbb zzbbbVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzbbbVar);
        Parcel zzbl = zzbl(3, zza);
        long readLong = zzbl.readLong();
        zzbl.recycle();
        return readLong;
    }

    public final zzbay zzf(zzbbb zzbbbVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzbbbVar);
        Parcel zzbl = zzbl(1, zza);
        zzbay zzbayVar = (zzbay) zzayi.zza(zzbl, zzbay.CREATOR);
        zzbl.recycle();
        return zzbayVar;
    }

    public final zzbay zzg(zzbbb zzbbbVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzbbbVar);
        Parcel zzbl = zzbl(2, zza);
        zzbay zzbayVar = (zzbay) zzayi.zza(zzbl, zzbay.CREATOR);
        zzbl.recycle();
        return zzbayVar;
    }
}
