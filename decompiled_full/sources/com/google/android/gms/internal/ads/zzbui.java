package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbui extends zzayh implements zzbuj {
    public zzbui() {
        super(new ObfuscatedString(new long[]{-8018070686008254154L, 6996572116687743968L, -5158803538008704123L, -6747922074070091943L, 2928429249483952021L, -9052129316957289920L, -2477311821343343910L, 6979613580835459377L, -2510829806055553739L, 3438702182845861933L, -1083184439059866284L}).toString());
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
