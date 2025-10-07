package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzbul extends zzayh implements zzbum {
    public zzbul() {
        super(new ObfuscatedString(new long[]{8565052806679755386L, -4166845322614593118L, 8384716803956846434L, -111557478287575475L, 4061901973098131422L, -8351871052007363308L, 4629583517676248808L, -1023769533821387275L, -611564748076275763L, -4155905281532688628L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzayi.zza(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzayi.zzc(parcel);
                zzf(zzeVar);
            } else {
                String readString = parcel.readString();
                zzayi.zzc(parcel);
                zze(readString);
            }
        } else {
            zzbtk zzb = zzbtj.zzb(parcel.readStrongBinder());
            zzayi.zzc(parcel);
            zzg(zzb);
        }
        parcel2.writeNoException();
        return true;
    }
}
