package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayh;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzdf extends zzayh implements zzdg {
    public zzdf() {
        super(new ObfuscatedString(new long[]{-3139705472449568097L, -2832608999691037428L, 5030787171533108474L, 5850573736584014459L, -112446305616598813L, 3010118868212261147L, -1612436387131448422L, -2150557720804526196L, 5639083269298143653L}).toString());
    }

    public static zzdg zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-1212359988125787169L, -6036764754089810880L, -136296481970250969L, 916975871052766501L, 7390481664496980643L, -1119345724438120438L, 3798533159808326914L, -4024111738110698101L, -3796414930325109668L}).toString());
        if (queryLocalInterface instanceof zzdg) {
            return (zzdg) queryLocalInterface;
        }
        return new zzde(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            boolean zzf = zzf();
            parcel2.writeNoException();
            int i3 = zzayi.zza;
            parcel2.writeInt(zzf ? 1 : 0);
        } else {
            zzs zzsVar = (zzs) zzayi.zza(parcel, zzs.CREATOR);
            zzayi.zzc(parcel);
            zze(zzsVar);
            parcel2.writeNoException();
        }
        return true;
    }
}
