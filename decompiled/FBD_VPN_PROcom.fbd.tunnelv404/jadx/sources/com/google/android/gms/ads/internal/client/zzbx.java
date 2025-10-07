package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.internal.ads.zzayh;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbx extends zzayh implements zzby {
    public static zzby zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-1197425407198169401L, -9116287499061269512L, 2247425758142079040L, -2340033528894746952L, -2440035437681850644L, 4423804350494358304L, 4300636696438907086L, -3525146468912709078L, -8600202074126912675L}).toString());
        if (queryLocalInterface instanceof zzby) {
            return (zzby) queryLocalInterface;
        }
        return new zzbw(iBinder);
    }
}
