package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayh;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzch extends zzayh implements zzci {
    public zzch() {
        super(new ObfuscatedString(new long[]{-8068434968766186175L, -8993595604012485018L, -4280065003875690980L, -4412418856415832900L, 5467399741299907403L, -1389779005948757535L, 1220704136675333934L, -4716509118793251571L, -3895246668659040947L, 1955631608224321499L}).toString());
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
                        zzb();
                    } else {
                        zze();
                    }
                } else {
                    zzc();
                }
            } else {
                zzf();
            }
        } else {
            zze zzeVar = (zze) zzayi.zza(parcel, zze.CREATOR);
            zzayi.zzc(parcel);
            zzd(zzeVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
