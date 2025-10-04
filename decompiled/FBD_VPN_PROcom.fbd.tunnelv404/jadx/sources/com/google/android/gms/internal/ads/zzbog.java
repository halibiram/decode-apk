package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbog extends zzayh implements zzboh {
    public zzbog() {
        super(new ObfuscatedString(new long[]{-8164414810763709465L, 2267775261879684226L, -3972864680046908019L, 2004933906753779330L, -8932470684654169587L, 7318743552495130318L, 4057905991686221064L, -5173731189072774753L, 5461654665182136956L}).toString());
    }

    public static zzboh zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-7279821083412778652L, -6465809742997840781L, 1943604749677497315L, -2766271105269751172L, -364757118783845038L, -3337019798979373682L, -8740718859508137741L, -162439813072727038L, -5834066268163835782L}).toString());
        if (queryLocalInterface instanceof zzboh) {
            return (zzboh) queryLocalInterface;
        }
        return new zzbof(iBinder);
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
