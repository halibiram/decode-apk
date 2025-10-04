package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzaf extends com.google.android.gms.internal.common.zzb implements zzag {
    public static zzag zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-3101996738417974487L, -3186590250138129473L, -3906086990566324245L, -8682286406078844003L, -8673057710081300863L, 193286915379960403L, -7986214924180180121L, -8793312010278541404L, -6343502404466963221L}).toString());
        if (queryLocalInterface instanceof zzag) {
            return (zzag) queryLocalInterface;
        }
        return new zzae(iBinder);
    }
}
