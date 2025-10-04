package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbpr extends zzayh implements zzbps {
    public zzbpr() {
        super(new ObfuscatedString(new long[]{-5028416208233793678L, -5701386696744880709L, 1045796327071665836L, -7448036600060889422L, 3808807674947684906L, -7137909057705127505L, 7428648356758325121L, 2827501849331653736L, -6181189990828317780L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        zzbpv zzbptVar;
        if (i != 3) {
            if (i != 4) {
                if (i != 5) {
                    if (i != 6) {
                        if (i != 7) {
                            return false;
                        }
                        zzbjj zzc = zzc();
                        parcel2.writeNoException();
                        zzayi.zzf(parcel2, zzc);
                        return true;
                    }
                    IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                    zzayi.zzc(parcel);
                    zze(asInterface);
                    parcel2.writeNoException();
                    return true;
                }
                IObjectWrapper asInterface2 = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbptVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{7705724386512880613L, -1946055543076444292L, -6633982972134818385L, -1102322954339019509L, 8905908148989483977L, -5686044937284846829L, 5824516063742788692L, -8758832004595712827L, -4782232163439949272L, 1545833259599526759L}).toString());
                    if (queryLocalInterface instanceof zzbpv) {
                        zzbptVar = (zzbpv) queryLocalInterface;
                    } else {
                        zzbptVar = new zzbpt(readStrongBinder);
                    }
                }
                zzayi.zzc(parcel);
                zzf(asInterface2, zzbptVar);
                parcel2.writeNoException();
                return true;
            }
            zzd();
            parcel2.writeNoException();
            return true;
        }
        com.google.android.gms.ads.internal.client.zzdq zzb = zzb();
        parcel2.writeNoException();
        zzayi.zzf(parcel2, zzb);
        return true;
    }
}
