package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbjx extends zzayg implements zzbjz {
    public zzbjx(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-4833327132468662892L, 6630143982884649105L, -4375748467089279575L, 6317640306670224921L, 5969587841942276555L, 7531410681818265218L, 4272736102787925632L, -5280925366339762389L, 2261216826107438952L, 4360496481588055102L, -3833028064326045931L, -1060848704049494230L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbjz
    public final IBinder zze(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, iObjectWrapper2);
        zzayi.zzf(zza, iObjectWrapper3);
        Parcel zzbl = zzbl(1, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        zzbl.recycle();
        return readStrongBinder;
    }
}
