package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbkm extends zzayh implements zzbkn {
    public static zzbkn zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{8961304210499422268L, -2734755839773867856L, 4223619280654262802L, 4373540944996074001L, -5376225767124347647L, -964689692496109128L, 5949938692461345L, 5300277496245315336L, -5072966728225987162L, 3051323492063467451L, -8012640764609956438L}).toString());
        if (queryLocalInterface instanceof zzbkn) {
            return (zzbkn) queryLocalInterface;
        }
        return new zzbkl(iBinder);
    }
}
