package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzboj extends zzayh implements zzbok {
    public static zzbok zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-169982940588473676L, 7475995715452390010L, -1596121484239073411L, -1064633080634198761L, -1758511959389882647L, 1151158817205463636L, -2226054495537914505L, -5391822277463617550L, -5471959988004540119L, 2258752030108547790L}).toString());
        if (queryLocalInterface instanceof zzbok) {
            return (zzbok) queryLocalInterface;
        }
        return new zzboi(iBinder);
    }
}
