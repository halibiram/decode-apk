package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzcaj extends zzayh implements zzcak {
    public zzcaj() {
        super(new ObfuscatedString(new long[]{-1149140230661195545L, -4969692805264224495L, -773505714508953292L, 4188874001978376663L, 5495290680289675773L, 3608807474975975848L, -2312316331756369865L, -2363996677566271967L, -6133365409132689577L}).toString());
    }

    public static zzcak zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-1194468945278633302L, -2335002548099784164L, 2009122319992354751L, 6233303616853596446L, 4961442940321915639L, -4647754722751376102L, -4599090324035386178L, 2631255852457146407L, -3063952700550139919L}).toString());
        if (queryLocalInterface instanceof zzcak) {
            return (zzcak) queryLocalInterface;
        }
        return new zzcai(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            int zze = zze();
            parcel2.writeNoException();
            parcel2.writeInt(zze);
        } else {
            String zzf = zzf();
            parcel2.writeNoException();
            parcel2.writeString(zzf);
        }
        return true;
    }
}
