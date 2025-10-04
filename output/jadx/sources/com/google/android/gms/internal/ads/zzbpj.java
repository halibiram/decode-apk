package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public abstract class zzbpj extends zzayh implements zzbpk {
    public zzbpj() {
        super(new ObfuscatedString(new long[]{-8367509596832714108L, -2737086402507823508L, 3645597963437480334L, -8525575817273068644L, -4687614917868989227L, 6984160226642401704L, -5479267658579774136L, -5510827688139178791L, -8257292215355506225L, 3501435616990732773L, 3574536273344789395L}).toString());
    }

    public static zzbpk zzc(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-8537623628527096668L, 405303444155172986L, -8359812665484973985L, -8869023037054890099L, 4618842614426071805L, -3325793516017466343L, -4014292662737484400L, 509135096793362843L, 3787326977031235082L, -2765744642031770493L, -6730854576417164955L}).toString());
        if (queryLocalInterface instanceof zzbpk) {
            return (zzbpk) queryLocalInterface;
        }
        return new zzbpi(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            ArrayList createTypedArrayList = parcel.createTypedArrayList(zzbpd.CREATOR);
            zzayi.zzc(parcel);
            zzb(createTypedArrayList);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
