package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbwu extends zzayg implements zzbww {
    public zzbwu(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{6165316960301543982L, 1362511463442953769L, 6959946199600962917L, 4245021786593175281L, 4134014580426175192L, 1872527699290601176L, 2084665863285472019L, -5427664099780328106L, 669150849016894913L, 2202675922247020492L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbww
    public final IBinder zze(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        Parcel zzbl = zzbl(1, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        zzbl.recycle();
        return readStrongBinder;
    }
}
