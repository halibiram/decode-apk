package com.google.android.gms.internal.measurement;

import android.os.BadParcelableException;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.HashMap;

/* loaded from: classes2.dex */
public final class zzbo {
    private static final ClassLoader zza = zzbo.class.getClassLoader();

    private zzbo() {
    }

    public static Parcelable zza(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }

    public static HashMap zzb(Parcel parcel) {
        return parcel.readHashMap(zza);
    }

    public static void zzc(Parcel parcel) {
        int dataAvail = parcel.dataAvail();
        if (dataAvail <= 0) {
            return;
        }
        throw new BadParcelableException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{8277456229331097080L, -8013168015987934335L, -7061964177953769526L, 3848429523143737726L, -2908252192352908055L, -3930062769231138284L, -4395125592969245799L}), new StringBuilder(56), dataAvail));
    }

    public static void zzd(Parcel parcel, boolean z) {
        parcel.writeInt(z ? 1 : 0);
    }

    public static void zze(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, 0);
        }
    }

    public static void zzf(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    public static boolean zzg(Parcel parcel) {
        if (parcel.readInt() != 0) {
            return true;
        }
        return false;
    }
}
