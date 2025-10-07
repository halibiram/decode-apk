package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzfsv extends zzayh implements zzfsw {
    public zzfsv() {
        super(new ObfuscatedString(new long[]{-4759986071717289404L, -5782791574832705589L, -4610619824419144177L, -386225701097701413L, 5902888094734066421L, 7770446695921200080L, 4658903112887425602L, -2716714624232841060L, 2506459418116247702L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (i) {
            case 2:
                IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                parcel.readString();
                zzayi.zzc(parcel);
                break;
            case 3:
                break;
            case 4:
                parcel.createIntArray();
                zzayi.zzc(parcel);
                break;
            case 5:
                parcel.createByteArray();
                zzayi.zzc(parcel);
                break;
            case 6:
                parcel.readInt();
                zzayi.zzc(parcel);
                break;
            case 7:
                parcel.readInt();
                zzayi.zzc(parcel);
                break;
            case 8:
                IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                parcel.readString();
                parcel.readString();
                zzayi.zzc(parcel);
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
