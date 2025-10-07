package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbwo extends zzayh implements zzbwp {
    public static zzbwp zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{2454452607183357603L, 1956698182160762819L, -2913121545592704758L, -801367311191425284L, -2684189537598908705L, -8740598735681286691L, 8060254396403986730L, 6920586638260514251L, 3894464692354019266L}).toString());
        if (queryLocalInterface instanceof zzbwp) {
            return (zzbwp) queryLocalInterface;
        }
        return new zzbwn(iBinder);
    }
}
