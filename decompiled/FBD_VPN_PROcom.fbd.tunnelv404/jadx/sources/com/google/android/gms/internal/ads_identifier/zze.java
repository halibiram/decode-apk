package com.google.android.gms.internal.ads_identifier;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zze extends zzb implements zzf {
    public static zzf zza(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-5009787762446660701L, 5182955031421143215L, -661654285374604425L, 8484193366550704115L, 8950723122038548269L, -6958515701606214481L, -4099545895048376301L, 160813640647329037L, -1448076735877016175L, -94619739814086381L}).toString());
        if (queryLocalInterface instanceof zzf) {
            return (zzf) queryLocalInterface;
        }
        return new zzd(iBinder);
    }
}
