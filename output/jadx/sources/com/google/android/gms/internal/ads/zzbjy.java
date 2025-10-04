package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbjy extends zzayh implements zzbjz {
    public static zzbjz zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-6378628810878341424L, -2094404261379541294L, -3168444454495923014L, -2219607298464159116L, -4810227465240279751L, 4968451469132465290L, 392136296170015141L, -247853174413041837L, -745046668969048539L, 7986877589211832490L, -1995617066471853367L, -1897377609578710174L}).toString());
        if (queryLocalInterface instanceof zzbjz) {
            return (zzbjz) queryLocalInterface;
        }
        return new zzbjx(iBinder);
    }
}
