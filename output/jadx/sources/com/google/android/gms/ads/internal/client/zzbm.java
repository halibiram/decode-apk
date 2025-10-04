package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayh;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbm extends zzayh implements zzbn {
    public zzbm() {
        super(new ObfuscatedString(new long[]{8140361550418904088L, 8816341205190312258L, 6315671689115117143L, -6694406553713731381L, 5823823559757080150L, 4149554286967038508L, -6630099067171630631L, 2014140243791733883L}).toString());
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
                        zzl zzlVar = (zzl) zzayi.zza(parcel, zzl.CREATOR);
                        int readInt = parcel.readInt();
                        zzayi.zzc(parcel);
                        zzh(zzlVar, readInt);
                        parcel2.writeNoException();
                    } else {
                        String zzf = zzf();
                        parcel2.writeNoException();
                        parcel2.writeString(zzf);
                    }
                } else {
                    boolean zzi = zzi();
                    parcel2.writeNoException();
                    int i3 = zzayi.zza;
                    parcel2.writeInt(zzi ? 1 : 0);
                }
            } else {
                String zze = zze();
                parcel2.writeNoException();
                parcel2.writeString(zze);
            }
        } else {
            zzl zzlVar2 = (zzl) zzayi.zza(parcel, zzl.CREATOR);
            zzayi.zzc(parcel);
            zzg(zzlVar2);
            parcel2.writeNoException();
        }
        return true;
    }
}
