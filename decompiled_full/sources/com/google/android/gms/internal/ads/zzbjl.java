package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbjl extends zzayh implements zzbjm {
    public zzbjl() {
        super(new ObfuscatedString(new long[]{-6568835172961530257L, -7464254083407698100L, -6675729320542849447L, -2885201299605368806L, 226630806836096828L, -5192303283213842119L, 721727642008920872L, -2859902066037399839L, 4678579123006733438L, -7637720045699063548L}).toString());
    }

    public static zzbjm zzg(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface(new ObfuscatedString(new long[]{-1781065823539405673L, -8721057946530068417L, 839837144191679347L, 1921014268430108188L, -7895204686543720626L, 7401483784471527531L, -6626559620414735500L, -9076042576674584583L, -8376411626260794412L, -8308173141242420322L}).toString());
        if (queryLocalInterface instanceof zzbjm) {
            return (zzbjm) queryLocalInterface;
        }
        return new zzbjk(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return false;
                        }
                        int zzc = zzc();
                        parcel2.writeNoException();
                        parcel2.writeInt(zzc);
                    } else {
                        int zzd = zzd();
                        parcel2.writeNoException();
                        parcel2.writeInt(zzd);
                    }
                } else {
                    double zzb = zzb();
                    parcel2.writeNoException();
                    parcel2.writeDouble(zzb);
                }
            } else {
                Uri zze = zze();
                parcel2.writeNoException();
                zzayi.zze(parcel2, zze);
            }
        } else {
            IObjectWrapper zzf = zzf();
            parcel2.writeNoException();
            zzayi.zzf(parcel2, zzf);
        }
        return true;
    }
}
