package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1320xaf50c7e8;

/* loaded from: classes2.dex */
public final class zzbtc extends zzayg implements zzbte {
    public zzbtc(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{5569655689925169321L, 4835228941466623344L, 958058655562433104L, -2499274377110318070L, -1411347380462632797L, 1079656176233971332L, -64245728447460521L, 2158762066446105354L, -5602135916835977354L, 2895947141561628230L, -3799317496930756195L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final IObjectWrapper zze() {
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzbl(1, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbte
    public final boolean zzf() {
        Parcel zzbl = zzbl(2, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }
}
