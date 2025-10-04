package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayh;
import com.google.android.gms.internal.ads.zzayi;
import com.google.android.gms.internal.ads.zzbsv;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzck extends zzayh implements zzcl {
    public zzck() {
        super(new ObfuscatedString(new long[]{-2272800348755487261L, -1160473897045465924L, 5926937875875785473L, 8056185427462279438L, -7861722151012461857L, 6364203392639038238L, 8821543927489196109L, -5968307582268421849L}).toString());
    }

    public static zzcl asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-1850831907564604677L, 347020064269206198L, 3521195780017811733L, 188277595851308020L, -2151106031743972228L, -3068553431983440819L, 309788601313578398L, 1784467285016096793L}).toString());
        if (queryLocalInterface instanceof zzcl) {
            return (zzcl) queryLocalInterface;
        }
        return new zzcj(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            zzbsv adapterCreator = getAdapterCreator();
            parcel2.writeNoException();
            zzayi.zzf(parcel2, adapterCreator);
        } else {
            zzen liteSdkVersion = getLiteSdkVersion();
            parcel2.writeNoException();
            zzayi.zze(parcel2, liteSdkVersion);
        }
        return true;
    }
}
