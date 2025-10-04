package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbys extends zzayg implements zzbyu {
    public zzbys(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{294772168100924426L, 7234155492636077245L, -803662072126804086L, 4796463726112930569L, -7604699610604117476L, -7569778401168289052L, 3172509368851590416L, -7113416696516726047L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zze(zzbym zzbymVar, zzbyx zzbyxVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzbymVar);
        zzayi.zzf(zza, zzbyxVar);
        zzbm(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyu
    public final void zzf(zzbyi zzbyiVar, zzbyx zzbyxVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzbyiVar);
        zzayi.zzf(zza, zzbyxVar);
        zzbm(1, zza);
    }
}
