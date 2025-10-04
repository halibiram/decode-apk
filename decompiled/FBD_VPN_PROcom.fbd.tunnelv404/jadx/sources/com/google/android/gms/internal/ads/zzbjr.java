package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbjr extends zzayg implements zzbjt {
    public zzbjr(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{7020403539373129325L, 4623048231564812686L, 1458656530281852808L, 5168618082224000292L, -6709731060351839105L, 2566287461434937590L, -8491980249684416452L, -5071908220971889307L, 4824734613858537467L, -6258796950410034848L, -7947695708776900901L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbjt
    public final IBinder zze(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3, int i) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, iObjectWrapper2);
        zzayi.zzf(zza, iObjectWrapper3);
        zza.writeInt(240304000);
        Parcel zzbl = zzbl(1, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        zzbl.recycle();
        return readStrongBinder;
    }
}
