package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbxe extends zzayh implements zzbxf {
    public static zzbxf zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{3087379164329092623L, -7073260929798160128L, -4833353944212512124L, -6861671802561211903L, -211292837206307967L, 8200501697298112721L, 2419664030589647722L, 3300093853977726097L, 2879496820565255292L, -2284136123289546511L, -7348564981323914574L}).toString());
        if (queryLocalInterface instanceof zzbxf) {
            return (zzbxf) queryLocalInterface;
        }
        return new zzbxd(iBinder);
    }
}
