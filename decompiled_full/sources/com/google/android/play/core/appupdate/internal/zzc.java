package com.google.android.play.core.appupdate.internal;

import android.os.BadParcelableException;
import android.os.Parcel;
import android.os.Parcelable;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public final class zzc {
    private static final ClassLoader zza = zzc.class.getClassLoader();

    private zzc() {
    }

    public static Parcelable zza(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }

    public static void zzb(Parcel parcel) {
        int dataAvail = parcel.dataAvail();
        if (dataAvail <= 0) {
            return;
        }
        throw new BadParcelableException(AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{-8994656492411622887L, -7346437345560871833L, 4452043118014416125L, 6019236804044930377L, -9061001776603071862L, 3671608959163652229L, -865360181389431614L}), new StringBuilder(), dataAvail));
    }

    public static void zzc(Parcel parcel, Parcelable parcelable) {
        parcel.writeInt(1);
        parcelable.writeToParcel(parcel, 0);
    }
}
