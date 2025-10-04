package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbjs extends zzayh implements zzbjt {
    public static zzbjt zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-6527211238600649951L, -5310362621780091587L, 3154630245286714381L, -2406889859787233021L, 3101649103852809845L, 6383332134852265981L, 3231171383064939821L, 7601001223087670392L, 3258281137890356356L, 1232558673575964120L, 4728355954313861816L}).toString());
        if (queryLocalInterface instanceof zzbjt) {
            return (zzbjt) queryLocalInterface;
        }
        return new zzbjr(iBinder);
    }
}
