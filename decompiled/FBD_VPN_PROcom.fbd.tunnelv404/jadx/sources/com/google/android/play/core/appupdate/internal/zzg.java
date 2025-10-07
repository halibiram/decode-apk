package com.google.android.play.core.appupdate.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzg extends zzb implements zzh {
    public zzg() {
        super(new ObfuscatedString(new long[]{8990012574468615322L, 3306146379942638394L, 6438460512220752694L, 2221150035235163287L, 7839602517219285257L, 2200848232755230273L, -2418046091748155025L, 2025362393802344347L, 6753216412537915773L, 8947293049283383071L, -873619978513220322L}).toString());
    }

    @Override // com.google.android.play.core.appupdate.internal.zzb
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 2) {
            if (i != 3) {
                return false;
            }
            Bundle bundle = (Bundle) zzc.zza(parcel, Bundle.CREATOR);
            zzc.zzb(parcel);
            zzb(bundle);
            return true;
        }
        Bundle bundle2 = (Bundle) zzc.zza(parcel, Bundle.CREATOR);
        zzc.zzb(parcel);
        zzc(bundle2);
        return true;
    }
}
