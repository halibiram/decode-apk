package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbyo extends zzayg implements zzbyq {
    public zzbyo(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{1977991403493110603L, 4582295049652586288L, 957127172732991518L, 8482312609707014418L, 1008378316294988697L, 1007640198456786244L, 3384496432276583869L, 3072700693876849312L, 7085199108556990626L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbyq
    public final void zze(zzbze zzbzeVar, zzbza zzbzaVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzbzeVar);
        zzayi.zzf(zza, zzbzaVar);
        zzbm(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyq
    public final void zzf(zzbze zzbzeVar, zzbza zzbzaVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzbzeVar);
        zzayi.zzf(zza, zzbzaVar);
        zzbm(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyq
    public final void zzg(zzbze zzbzeVar, zzbza zzbzaVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzbzeVar);
        zzayi.zzf(zza, zzbzaVar);
        zzbm(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyq
    public final void zzh(String str, zzbza zzbzaVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zzayi.zzf(zza, zzbzaVar);
        zzbm(7, zza);
    }
}
