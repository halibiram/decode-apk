package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzful extends zzayh implements zzfum {
    public static zzfum zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{4923303184574357793L, 2397781555489155865L, -8984802673259013944L, -6765168791702383029L, 2110095881362617341L, 8230709012464175015L, -7417199813173860872L, -8847532168530162328L, 5586867479727940337L}).toString());
        if (queryLocalInterface instanceof zzfum) {
            return (zzfum) queryLocalInterface;
        }
        return new zzfuk(iBinder);
    }
}
