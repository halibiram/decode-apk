package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzayk extends zzayh implements zzayl {
    public static zzayl zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-3920344587546094817L, -8624086396173686125L, 3555810596737180409L, -1154179042750611556L, 1671579937951772181L, 1885166234706515308L, 5122511005897264656L}).toString());
        if (queryLocalInterface instanceof zzayl) {
            return (zzayl) queryLocalInterface;
        }
        return new zzayj(iBinder);
    }
}
