package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzae extends com.google.android.gms.internal.common.zza implements zzag {
    public zzae(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-148641189271772925L, -5623418348561230970L, -4631099687387572539L, 5718834432155738649L, 3760834355195651734L, -72452485298939876L, 6306257225409646128L, 2199460327037517921L, 5304846583636778081L}).toString());
    }

    @Override // com.google.android.gms.common.internal.zzag
    public final com.google.android.gms.common.zzq zze(com.google.android.gms.common.zzo zzoVar) {
        Parcel zza = zza();
        com.google.android.gms.internal.common.zzc.zzc(zza, zzoVar);
        Parcel zzB = zzB(6, zza);
        com.google.android.gms.common.zzq zzqVar = (com.google.android.gms.common.zzq) com.google.android.gms.internal.common.zzc.zza(zzB, com.google.android.gms.common.zzq.CREATOR);
        zzB.recycle();
        return zzqVar;
    }

    @Override // com.google.android.gms.common.internal.zzag
    public final com.google.android.gms.common.zzq zzf(com.google.android.gms.common.zzo zzoVar) {
        Parcel zza = zza();
        com.google.android.gms.internal.common.zzc.zzc(zza, zzoVar);
        Parcel zzB = zzB(8, zza);
        com.google.android.gms.common.zzq zzqVar = (com.google.android.gms.common.zzq) com.google.android.gms.internal.common.zzc.zza(zzB, com.google.android.gms.common.zzq.CREATOR);
        zzB.recycle();
        return zzqVar;
    }

    @Override // com.google.android.gms.common.internal.zzag
    public final boolean zzg() {
        Parcel zzB = zzB(9, zza());
        boolean zzf = com.google.android.gms.internal.common.zzc.zzf(zzB);
        zzB.recycle();
        return zzf;
    }

    @Override // com.google.android.gms.common.internal.zzag
    public final boolean zzh(com.google.android.gms.common.zzs zzsVar, IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        com.google.android.gms.internal.common.zzc.zzc(zza, zzsVar);
        com.google.android.gms.internal.common.zzc.zze(zza, iObjectWrapper);
        Parcel zzB = zzB(5, zza);
        boolean zzf = com.google.android.gms.internal.common.zzc.zzf(zzB);
        zzB.recycle();
        return zzf;
    }

    @Override // com.google.android.gms.common.internal.zzag
    public final boolean zzi() {
        Parcel zzB = zzB(7, zza());
        boolean zzf = com.google.android.gms.internal.common.zzc.zzf(zzB);
        zzB.recycle();
        return zzf;
    }
}
