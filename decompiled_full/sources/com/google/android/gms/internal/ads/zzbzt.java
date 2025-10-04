package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbzt extends zzayh implements zzbzu {
    public zzbzt() {
        super(new ObfuscatedString(new long[]{2656479261659745098L, 378095066231278433L, 5843168276883314008L, -2079498905078342113L, 3884532739654099921L, 5736370302721307316L, 6073975615380054664L, 7368957430512043301L, 7929758013163886398L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            int zzb = zzb();
            parcel2.writeNoException();
            parcel2.writeInt(zzb);
        } else {
            String zzc = zzc();
            parcel2.writeNoException();
            parcel2.writeString(zzc);
        }
        return true;
    }
}
