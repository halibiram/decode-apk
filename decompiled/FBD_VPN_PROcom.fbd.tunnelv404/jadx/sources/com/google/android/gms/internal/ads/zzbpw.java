package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbpw extends zzayg implements zzbpy {
    public zzbpw(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-75442866656802614L, -1401623383978579443L, 5833059307572595061L, 2826673879616024507L, 5139125724188453626L, -8042040074324064837L, 1880927185312610146L, -7109987876031297909L, 7913773230416767915L, -2940369228524505095L, 7025905583035960765L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbpy
    public final void zze(int i) {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbm(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpy
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzeVar);
        zzbm(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpy
    public final void zzg(zzbps zzbpsVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzbpsVar);
        zzbm(1, zza);
    }
}
