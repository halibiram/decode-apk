package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbuu extends zzayh implements zzbuv {
    public zzbuu() {
        super(new ObfuscatedString(new long[]{-1413488082427027048L, -4788122446141308366L, 745090694862926357L, -5614028783538347617L, 7692277638191117062L, 7630928773789912066L, -3985541065534467642L, -4788685216380219891L, 1489296950670920381L, 5132203001944808565L, 6507429861458364438L}).toString());
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
                zzg(zzeVar);
            } else {
                String readString = parcel.readString();
                zzayi.zzc(parcel);
                zzf(readString);
            }
        } else {
            String readString2 = parcel.readString();
            zzayi.zzc(parcel);
            zze(readString2);
        }
        parcel2.writeNoException();
        return true;
    }
}
