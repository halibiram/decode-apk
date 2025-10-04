package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbak extends zzayg implements zzbam {
    public zzbak(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-1198748983654383800L, 7891447883044763332L, -6922589318216759654L, 7486290697902472361L, 1210640037302274280L, -8778035048834505057L, 6912959881945013549L, -890293959881487669L, 6741693783599709461L, 1643550871555460884L, 6190454967487534004L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    public final void zzb(int i) {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbm(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    public final void zzc(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzeVar);
        zzbm(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbam
    public final void zzd(zzbaj zzbajVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzbajVar);
        zzbm(1, zza);
    }
}
