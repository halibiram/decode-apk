package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzblf extends zzayh implements zzblg {
    public zzblf() {
        super(new ObfuscatedString(new long[]{-7463998927829390101L, 4087064429349175144L, 7818195190914047910L, 7535023307056724632L, -1985341819990369455L, 6302033917480334072L, 5328463655384656558L, -1736023919776206616L, -7072137133905283436L, -8507251461702414740L, 3159920267399445987L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            zze();
        } else {
            String readString = parcel.readString();
            zzayi.zzc(parcel);
            zzf(readString);
        }
        parcel2.writeNoException();
        return true;
    }
}
