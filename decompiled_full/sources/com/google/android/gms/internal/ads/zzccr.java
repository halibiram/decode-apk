package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzccr extends zzayg implements zzcct {
    public zzccr(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-2548963969672648822L, -7217411338669025091L, -8034670074934081326L, 7985837764441982626L, -767551730635505375L, -684809718369511875L, -9073316682574088074L, 2136335846361340395L, -8550922654039940549L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcct
    public final IObjectWrapper zze(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, String str, IObjectWrapper iObjectWrapper3) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, iObjectWrapper2);
        zza.writeString(str);
        zzayi.zzf(zza, iObjectWrapper3);
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzbl(11, zza));
    }

    @Override // com.google.android.gms.internal.ads.zzcct
    public final void zzf(IObjectWrapper iObjectWrapper, zzccx zzccxVar, zzccq zzccqVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzd(zza, zzccxVar);
        zzayi.zzf(zza, zzccqVar);
        zzbm(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcct
    public final void zzg(zzbxr zzbxrVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzbxrVar);
        zzbm(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcct
    public final void zzh(List list, IObjectWrapper iObjectWrapper, zzbxi zzbxiVar) {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbxiVar);
        zzbm(10, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcct
    public final void zzi(List list, IObjectWrapper iObjectWrapper, zzbxi zzbxiVar) {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbxiVar);
        zzbm(9, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcct
    public final void zzj(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcct
    public final void zzk(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcct
    public final void zzl(List list, IObjectWrapper iObjectWrapper, zzbxi zzbxiVar) {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbxiVar);
        zzbm(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcct
    public final void zzm(List list, IObjectWrapper iObjectWrapper, zzbxi zzbxiVar) {
        Parcel zza = zza();
        zza.writeTypedList(list);
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbxiVar);
        zzbm(5, zza);
    }
}
