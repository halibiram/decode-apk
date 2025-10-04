package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayh;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzcv extends zzayh implements zzcw {
    public zzcv() {
        super(new ObfuscatedString(new long[]{1895193071678525401L, 2833293589535774627L, -607785300741901044L, -8760566615901631060L, -8266226778098921343L, -4840953823730579644L, -7357093401883261923L, -281355506916140600L, 646247072464478595L}).toString());
    }

    public static zzcw zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{4146774375358234285L, -1954685310615270368L, -7982596864833545319L, -3473609403686334375L, -6427477784744691120L, -3298468418068394194L, -8557845546852373219L, -9139342887495921905L, -4755236360544149183L}).toString());
        if (queryLocalInterface instanceof zzcw) {
            return (zzcw) queryLocalInterface;
        }
        return new zzcu(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            String zzf = zzf();
            parcel2.writeNoException();
            parcel2.writeString(zzf);
        } else {
            String zze = zze();
            parcel2.writeNoException();
            parcel2.writeString(zze);
        }
        return true;
    }
}
