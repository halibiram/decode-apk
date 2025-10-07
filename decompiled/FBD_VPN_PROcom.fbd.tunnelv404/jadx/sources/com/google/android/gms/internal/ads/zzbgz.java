package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbgz extends zzayh implements zzbha {
    public static zzbha zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-7858208051245210016L, -81825098587869008L, -5965681322092800428L, 2419295135506740767L, -4227068813654362298L, 8334249758992359668L, 3290692066526384127L, 3621593759408715367L, -8722323379368140295L, 5729510910922586301L, -7967284118278705309L, -8740664883832597210L, 934229433721478712L}).toString());
        if (queryLocalInterface instanceof zzbha) {
            return (zzbha) queryLocalInterface;
        }
        return new zzbgy(iBinder);
    }
}
