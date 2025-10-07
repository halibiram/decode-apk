package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class zzbje extends zzayh implements zzbjf {
    public zzbje() {
        super(new ObfuscatedString(new long[]{-7937725571929889271L, 3668642373852707470L, -4083012984333242229L, -828428742496161100L, 3632928946759108810L, 8140686851194380074L, 7487835276437724456L, 7212774428456161098L, 7799932436147592434L, 826602726823074221L}).toString());
    }

    public static zzbjf zzj(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{8559095632275222239L, -3960452898002272399L, -1110819141123893145L, 7566343383607492453L, 12092057405943120L, 6460335453629703350L, -3557316210839017536L, 5382957524563725936L, -318196786631121004L, -4257884673319912664L}).toString());
        if (queryLocalInterface instanceof zzbjf) {
            return (zzbjf) queryLocalInterface;
        }
        return new zzbjd(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 2) {
            if (i != 3) {
                return false;
            }
            List zzh = zzh();
            parcel2.writeNoException();
            parcel2.writeList(zzh);
            return true;
        }
        String zzg = zzg();
        parcel2.writeNoException();
        parcel2.writeString(zzg);
        return true;
    }
}
