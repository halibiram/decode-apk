package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbyw extends zzayh implements zzbyx {
    public zzbyw() {
        super(new ObfuscatedString(new long[]{-8321360820851670411L, -4630704908904084256L, -5459324320681504872L, 2636664271586954264L, 549310405459763466L, -6657690357339776062L, 2202212358748667272L, 3804426915184446107L, -8802205037952840445L, 7011719513445352198L}).toString());
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
