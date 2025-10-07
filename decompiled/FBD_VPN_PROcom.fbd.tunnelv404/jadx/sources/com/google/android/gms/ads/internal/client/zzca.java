package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayh;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzca extends zzayh implements zzcb {
    public zzca() {
        super(new ObfuscatedString(new long[]{1451692947440676094L, 4742050050007969265L, 5145801784148698854L, -1875803117420958033L, -7607640067989691671L, 1583758295988535048L, 1681724697667302015L, 2350443237520172146L, 1222398786517967944L}).toString());
    }

    public static zzcb zzd(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-1310716633972271319L, -5987769501266606905L, -4443196183044751776L, -5435741521889078312L, -2275623851051613390L, -218989890101568758L, 2948182058582752185L, -1259650401983378282L, -7077533325966795099L}).toString());
        if (queryLocalInterface instanceof zzcb) {
            return (zzcb) queryLocalInterface;
        }
        return new zzbz(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            String readString = parcel.readString();
            String readString2 = parcel.readString();
            zzayi.zzc(parcel);
            zzc(readString, readString2);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
