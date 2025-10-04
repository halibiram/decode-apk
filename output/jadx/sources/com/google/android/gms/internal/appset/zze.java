package com.google.android.gms.internal.appset;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zze extends zzb implements zzf {
    public zze() {
        super(new ObfuscatedString(new long[]{-3223593002609783554L, -5350001456082247752L, 3856766889165815106L, -2222119488539587371L, 7086960834628661503L, -7510545337025241698L, -5553220213013387503L, -6318911759693188172L}).toString());
    }

    @Override // com.google.android.gms.internal.appset.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zzb((Status) zzc.zza(parcel, Status.CREATOR), (com.google.android.gms.appset.zzc) zzc.zza(parcel, com.google.android.gms.appset.zzc.CREATOR));
            return true;
        }
        return false;
    }
}
