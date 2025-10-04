package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbzz extends zzayh implements zzcaa {
    public static zzcaa zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-728346953804530233L, -5797586554391283043L, -7288285057934638355L, -1759378658246735828L, -317430458900362835L, 796637048232299737L, 83243363283707034L, 4099765691348757434L, -7615432239457632210L, -8146007709568282306L, -5199607427214121394L}).toString());
        if (queryLocalInterface instanceof zzcaa) {
            return (zzcaa) queryLocalInterface;
        }
        return new zzbzy(iBinder);
    }
}
