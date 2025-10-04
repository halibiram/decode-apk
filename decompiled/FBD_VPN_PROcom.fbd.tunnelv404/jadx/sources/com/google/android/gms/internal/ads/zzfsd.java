package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfsd extends zzayg implements IInterface {
    public zzfsd(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-3698603199308594856L, 5582237389691503529L, 364803667093616546L, -280710649335036658L, 4559080779663528388L, -889135675782421108L, -2756157397113624528L, 5096098476713670129L}).toString());
    }

    public final zzfsb zze(zzfrz zzfrzVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzfrzVar);
        Parcel zzbl = zzbl(1, zza);
        zzfsb zzfsbVar = (zzfsb) zzayi.zza(zzbl, zzfsb.CREATOR);
        zzbl.recycle();
        return zzfsbVar;
    }

    public final zzfsk zzf(zzfsi zzfsiVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzfsiVar);
        Parcel zzbl = zzbl(3, zza);
        zzfsk zzfskVar = (zzfsk) zzayi.zza(zzbl, zzfsk.CREATOR);
        zzbl.recycle();
        return zzfskVar;
    }

    public final void zzg(zzfrw zzfrwVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzfrwVar);
        zzbm(2, zza);
    }
}
