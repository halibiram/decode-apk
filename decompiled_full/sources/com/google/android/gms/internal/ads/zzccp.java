package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzccp extends zzayh implements zzccq {
    public zzccp() {
        super(new ObfuscatedString(new long[]{6661200890101399483L, 3407677302815904046L, -1283942275635441129L, 3758356560231489973L, -2638094169065264206L, 4249152124895162502L, -8569431176366414531L, 7896975105974318183L, -7492644122975887965L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) zzayi.zza(parcel, Bundle.CREATOR);
                zzayi.zzc(parcel);
                zzc(readString, readString2, bundle);
            } else {
                String readString3 = parcel.readString();
                zzayi.zzc(parcel);
                zzb(readString3);
            }
        } else {
            parcel.readString();
            parcel.readString();
            zzayi.zzc(parcel);
        }
        parcel2.writeNoException();
        return true;
    }
}
