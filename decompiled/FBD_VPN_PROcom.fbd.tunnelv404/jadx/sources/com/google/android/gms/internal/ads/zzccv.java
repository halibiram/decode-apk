package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzccv extends zzayh implements zzccw {
    public static zzccw zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-1853067576405475106L, 5724224609768868209L, 6122043634849700357L, 7336692942278229824L, -3920708570953209266L, 6838388437345732700L, -2247519038703832028L, 100403138277979038L, 43073977683652919L, 20780666917735525L}).toString());
        if (queryLocalInterface instanceof zzccw) {
            return (zzccw) queryLocalInterface;
        }
        return new zzccu(iBinder);
    }
}
