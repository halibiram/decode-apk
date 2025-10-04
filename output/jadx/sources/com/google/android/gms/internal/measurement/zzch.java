package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzch extends zzbn implements zzci {
    public zzch() {
        super(new ObfuscatedString(new long[]{3511618360465065205L, 1913917223434555373L, -5862853936939013789L, -614341751071188282L, 3744399017484398383L, 4635697214071405790L, -206038359062668047L, -5585881390228185212L, -4103335771302991997L, -8165607173955772497L}).toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzbn
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            int zzd = zzd();
            parcel2.writeNoException();
            parcel2.writeInt(zzd);
        } else {
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            Bundle bundle = (Bundle) zzbo.zza(parcel, Bundle.CREATOR);
            long readLong = parcel.readLong();
            zzbo.zzc(parcel);
            zze(readString, readString2, bundle, readLong);
            parcel2.writeNoException();
        }
        return true;
    }
}
