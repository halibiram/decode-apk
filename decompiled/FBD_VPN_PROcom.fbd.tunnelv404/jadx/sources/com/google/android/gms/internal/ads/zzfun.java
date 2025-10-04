package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class zzfun extends zzayh implements zzfuo {
    public zzfun() {
        super(new ObfuscatedString(new long[]{1593773381627351632L, 6511229999875066116L, -6747976055675029574L, 6640680230168645440L, 1098861010240457011L, -9182649338881921149L, 2752543924514287730L, -9190360440244187322L, 4788476635924586568L, 6050392748101662168L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzayh
    public final boolean zzbO(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            Bundle bundle = (Bundle) zzayi.zza(parcel, Bundle.CREATOR);
            zzayi.zzc(parcel);
            zzb(bundle);
            return true;
        }
        return false;
    }
}
