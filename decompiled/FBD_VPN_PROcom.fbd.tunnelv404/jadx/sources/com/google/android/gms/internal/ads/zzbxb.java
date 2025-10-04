package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbxb extends zzayh implements zzbxc {
    public static zzbxc zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-2015618800745165019L, 5184354463263897539L, -3037019416016915075L, 8006762207441108475L, -4176677886695925720L, 7555338253210085763L, 7857530147423443765L, 3424280627103947610L, 6178759826333415518L, 2147651394972668334L, 223961596738583580L}).toString());
        if (queryLocalInterface instanceof zzbxc) {
            return (zzbxc) queryLocalInterface;
        }
        return new zzbxa(iBinder);
    }
}
