package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbuf extends zzayh implements zzbug {
    public zzbuf() {
        super(new ObfuscatedString(new long[]{-2691461265638193342L, 3554087263990541997L, -1386218941459260120L, 4106452608394683417L, -6355505072367558121L, 5788002668096121863L, -5845543936966813623L, -1657981384024978529L, 1839770881428796995L, 20221420036651103L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return false;
                    }
                    zzbte zzb = zzbtd.zzb(parcel.readStrongBinder());
                    zzayi.zzc(parcel);
                    zzh(zzb);
                } else {
                    com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                    zzayi.zzc(parcel);
                    zzf(zzeVar);
                }
            } else {
                String readString = parcel.readString();
                zzayi.zzc(parcel);
                zze(readString);
            }
        } else {
            IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            zzayi.zzc(parcel);
            zzg(asInterface);
        }
        parcel2.writeNoException();
        return true;
    }
}
