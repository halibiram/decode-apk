package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbwv extends zzayh implements zzbww {
    public static zzbww zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-2926268584652808789L, 9216290527850191661L, -4370161961784995431L, 1507244026691107417L, -1113142960541124517L, 6392294639544757363L, 7621169757332721785L, -8564526055334638211L, 5430791310552099595L, -8974545428310316954L}).toString());
        if (queryLocalInterface instanceof zzbww) {
            return (zzbww) queryLocalInterface;
        }
        return new zzbwu(iBinder);
    }
}
