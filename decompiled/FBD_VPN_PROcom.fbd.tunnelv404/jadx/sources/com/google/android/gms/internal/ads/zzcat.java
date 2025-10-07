package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzcat extends zzayh implements zzcau {
    public zzcat() {
        super(new ObfuscatedString(new long[]{3731405175603952855L, -4136525128350010430L, 7700639988265038127L, 1333034056948234649L, 8838418417759089583L, -9160660911276065944L, -4229473804985024790L, -136759121535492384L, -4897590875325023866L, -8603582657330466446L, -7767318685940115276L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzayi.zzc(parcel);
                zzf(zzeVar);
            } else {
                int readInt = parcel.readInt();
                zzayi.zzc(parcel);
                zze(readInt);
            }
        } else {
            zzg();
        }
        parcel2.writeNoException();
        return true;
    }
}
