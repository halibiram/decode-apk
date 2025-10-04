package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzac extends com.google.android.gms.internal.common.zzb implements IGmsCallbacks {
    public zzac() {
        super(new ObfuscatedString(new long[]{9118600598999480398L, 4451571989685427674L, 2772739546652061325L, 1267790693023312862L, -7627156601560660634L, 884092749523542433L, 808811029469381739L, 4482075231594533302L}).toString());
    }

    @Override // com.google.android.gms.internal.common.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                int readInt = parcel.readInt();
                IBinder readStrongBinder = parcel.readStrongBinder();
                zzk zzkVar = (zzk) com.google.android.gms.internal.common.zzc.zza(parcel, zzk.CREATOR);
                com.google.android.gms.internal.common.zzc.zzb(parcel);
                zzc(readInt, readStrongBinder, zzkVar);
            } else {
                int readInt2 = parcel.readInt();
                Bundle bundle = (Bundle) com.google.android.gms.internal.common.zzc.zza(parcel, Bundle.CREATOR);
                com.google.android.gms.internal.common.zzc.zzb(parcel);
                zzb(readInt2, bundle);
            }
        } else {
            int readInt3 = parcel.readInt();
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            Bundle bundle2 = (Bundle) com.google.android.gms.internal.common.zzc.zza(parcel, Bundle.CREATOR);
            com.google.android.gms.internal.common.zzc.zzb(parcel);
            onPostInitComplete(readInt3, readStrongBinder2, bundle2);
        }
        parcel2.writeNoException();
        return true;
    }
}
