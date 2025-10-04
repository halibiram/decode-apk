package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbuo extends zzayh implements zzbup {
    public zzbuo() {
        super(new ObfuscatedString(new long[]{1074196819119128561L, -5464280293641780771L, 7601021086900203423L, -4977084660455698118L, -7741914663829800051L, 7679849226738799983L, 3024384980509927179L, -8162644469939377527L, 1208560888486604244L, 2253991196527226659L, -8616948433879871259L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 2) {
            if (i != 3) {
                if (i != 4) {
                    return false;
                }
                com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzayi.zzc(parcel);
                zzf(zzeVar);
            } else {
                String readString = parcel.readString();
                zzayi.zzc(parcel);
                zze(readString);
            }
        } else {
            zzg();
        }
        parcel2.writeNoException();
        return true;
    }
}
