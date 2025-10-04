package com.google.android.play.core.appupdate.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zze extends zzb implements zzf {
    public static zzf zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{6153088106825739906L, 3992726681955867041L, -679140374422062303L, 2277629101009125010L, 1911207286283101933L, -4059893727536317932L, 7524274401993780464L, -9076423426314753148L, -1835708638351214760L, -3973589881643799045L}).toString());
        if (queryLocalInterface instanceof zzf) {
            return (zzf) queryLocalInterface;
        }
        return new zzd(iBinder);
    }
}
