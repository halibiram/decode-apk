package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbju extends zzayg implements zzbjw {
    public zzbju(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{5544351990119742695L, -8816154150545731914L, -2664485210321962275L, -7790768969657546734L, 1551049405088158245L, 7315288613440723415L, 3147492577893918488L, -3453337708089316505L, -8481981321496959868L, 4365457237409951861L, -1200229077010978668L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zzb(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zzc(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbjw
    public final void zzd() {
        zzbm(2, zza());
    }
}
