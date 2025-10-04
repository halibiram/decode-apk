package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbkj extends zzayh implements zzbkk {
    public static zzbkk zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{5549834566725004532L, 7350130781037432240L, 3575968710358368835L, -3720243654289027027L, 2609680602477420297L, -327371131611117791L, 1179374010434626921L, -1200210675835373182L, -879040047994265828L, -5719208432942456944L, -6254300793182314822L}).toString());
        if (queryLocalInterface instanceof zzbkk) {
            return (zzbkk) queryLocalInterface;
        }
        return new zzbki(iBinder);
    }
}
