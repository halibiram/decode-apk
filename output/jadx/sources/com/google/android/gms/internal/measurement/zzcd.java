package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcd extends zzbm implements zzcf {
    public zzcd(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{4416580346456531137L, 5316438255703827661L, -6370536757005877030L, 1806936201379574689L, 8897858952481263897L, 954906612086652701L, 3087147920814011433L, -1861715573323129446L, -4161038923968347606L}).toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzcf
    public final void zzd(Bundle bundle) {
        Parcel zza = zza();
        zzbo.zze(zza, bundle);
        zzc(1, zza);
    }
}
