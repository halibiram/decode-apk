package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbap extends zzayh implements zzbaq {
    public zzbap() {
        super(new ObfuscatedString(new long[]{7707805113234521039L, 7792894673297236985L, -8581527882951497626L, -7576083863891512347L, 2677247520002130752L, 3506758956739426825L, 723986177346192280L, -3571175643288727419L, 2188879628805308672L, 3840131495798293866L, -8940487194193928875L, -3621677607265372992L}).toString());
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
                    com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                    zzayi.zzc(parcel);
                    zzd(zzeVar);
                }
            } else {
                zzc();
            }
        } else {
            zzf();
        }
        parcel2.writeNoException();
        return true;
    }
}
