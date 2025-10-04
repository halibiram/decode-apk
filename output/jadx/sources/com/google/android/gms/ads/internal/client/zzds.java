package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayh;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzds extends zzayh implements zzdt {
    public zzds() {
        super(new ObfuscatedString(new long[]{5800593353741786846L, 4891197614850221890L, -2726131475099080396L, 6616375895062845549L, -5180000318749404555L, 4391739426890945557L, 9011919016300694006L, 758503947321856774L, 1101731336877013706L, 283955660438103551L}).toString());
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
                        boolean zzg = zzayi.zzg(parcel);
                        zzayi.zzc(parcel);
                        zzf(zzg);
                    } else {
                        zze();
                    }
                } else {
                    zzg();
                }
            } else {
                zzh();
            }
        } else {
            zzi();
        }
        parcel2.writeNoException();
        return true;
    }
}
