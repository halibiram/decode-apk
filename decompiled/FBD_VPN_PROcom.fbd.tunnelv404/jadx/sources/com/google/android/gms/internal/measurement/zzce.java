package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzce extends zzbn implements zzcf {
    public zzce() {
        super(new ObfuscatedString(new long[]{5007551699326354478L, 1207481384523444368L, -9150153528593784806L, -4955666851023540561L, 3525047170408188087L, 2342525522434642822L, -1100728765096671614L, -5406934500803396731L, -7648708937574575726L}).toString());
    }

    @Override // com.google.android.gms.internal.measurement.zzbn
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            Bundle bundle = (Bundle) zzbo.zza(parcel, Bundle.CREATOR);
            zzbo.zzc(parcel);
            zzd(bundle);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
