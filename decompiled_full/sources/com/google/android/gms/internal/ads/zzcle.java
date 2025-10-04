package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzcle extends zzayh implements zzclf {
    public static zzclf zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-8688412699166001414L, 6122223254587312772L, -6473441120703142051L, -6934902050403646926L, -1561438254753641563L, 6202229979588435144L, -686737554084182766L, 3500432591047186305L, -3001350809189849896L}).toString());
        if (queryLocalInterface instanceof zzclf) {
            return (zzclf) queryLocalInterface;
        }
        return new zzcld(iBinder);
    }
}
