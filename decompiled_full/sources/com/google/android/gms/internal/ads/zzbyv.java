package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbyv extends zzayg implements zzbyx {
    public zzbyv(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-8567615701231442288L, 6381745959810555841L, -5085036197948442623L, -5031896244284061556L, 1307496591678017179L, -7582539047486416413L, 1501982770171128642L, -1398402139533833882L, 8862157177794323787L, -5223569766808389292L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbyx
    public final void zze(com.google.android.gms.ads.internal.util.zzbb zzbbVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzbbVar);
        zzbm(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbyx
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) {
        Parcel zza = zza();
        zzayi.zzd(zza, parcelFileDescriptor);
        zzbm(1, zza);
    }
}
