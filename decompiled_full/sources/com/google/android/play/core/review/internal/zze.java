package com.google.android.play.core.review.internal;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zze extends zzb implements zzf {
    public static zzf zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{7793551014560352906L, -7394741424368650711L, -1038800521265011513L, -1618582792679797994L, 2306268396563964199L, -7986791419890319647L, 3280035234928449674L, -1972811912908610388L, -724856026985323022L, -2910729759841672970L}).toString());
        if (queryLocalInterface instanceof zzf) {
            return (zzf) queryLocalInterface;
        }
        return new zzd(iBinder);
    }
}
