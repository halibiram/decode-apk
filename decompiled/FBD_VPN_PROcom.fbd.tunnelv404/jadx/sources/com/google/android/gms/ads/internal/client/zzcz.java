package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayh;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzcz extends zzayh implements zzda {
    public zzcz() {
        super(new ObfuscatedString(new long[]{895850043242014310L, 9085788977225729056L, -6611091690867003086L, -6745035893037263306L, 1943911767774029286L, -7243852410689100679L, 1857194526608826075L, 4063293807806996977L, 3950870306705064580L, -9117665439769028872L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            zze zzeVar = (zze) zzayi.zza(parcel, zze.CREATOR);
            zzayi.zzc(parcel);
            zze(zzeVar);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
