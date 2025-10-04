package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzayg;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcp extends zzayg implements IInterface {
    public zzcp(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{2539039139230947429L, -8274808548935378962L, 5248194241414422366L, -4535701838853584696L, 8677424939043319614L, 50808532914346279L, -6716137148114275313L, 3670996106380819601L, -2498249878775842423L, 5984812646778326950L, -1333220483268941284L}).toString());
    }

    public final IBinder zze(IObjectWrapper iObjectWrapper, int i) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zza.writeInt(240304000);
        Parcel zzbl = zzbl(1, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        zzbl.recycle();
        return readStrongBinder;
    }
}
