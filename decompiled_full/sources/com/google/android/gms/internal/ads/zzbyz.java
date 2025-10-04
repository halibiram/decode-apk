package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbyz extends zzayh implements zzbza {
    public zzbyz() {
        super(new ObfuscatedString(new long[]{431562333238777179L, -5360897703960504478L, 4019656210075987923L, -6599732981940096337L, -100971605431976536L, -8769996876708877078L, 5417655108189472931L, -8199529811927938725L, 7605276448789268827L, 7576761571359908539L, 3212928413820162471L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            com.google.android.gms.ads.internal.util.zzbb zzbbVar = (com.google.android.gms.ads.internal.util.zzbb) zzayi.zza(parcel, com.google.android.gms.ads.internal.util.zzbb.CREATOR);
            zzayi.zzc(parcel);
            zze(zzbbVar);
        } else {
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzayi.zza(parcel, ParcelFileDescriptor.CREATOR);
            zzayi.zzc(parcel);
            zzf(parcelFileDescriptor);
        }
        parcel2.writeNoException();
        return true;
    }
}
