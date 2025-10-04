package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbyy extends zzayg implements zzbza {
    public zzbyy(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{3385101197696999483L, 7437587111718248627L, -5485418789031783219L, 91651507125939859L, -8942780875729018253L, 6981822301653891772L, -7999155693030718727L, 786897252257800217L, -5948551470857543732L, -1783175175417771680L, -6864430443505955204L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbza
    public final void zze(com.google.android.gms.ads.internal.util.zzbb zzbbVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzbbVar);
        zzbm(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbza
    public final void zzf(ParcelFileDescriptor parcelFileDescriptor) {
        Parcel zza = zza();
        zzayi.zzd(zza, parcelFileDescriptor);
        zzbm(1, zza);
    }
}
