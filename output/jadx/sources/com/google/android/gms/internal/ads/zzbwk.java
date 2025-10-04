package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbwk extends zzayg implements zzbwm {
    public zzbwk(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{2929686428921715637L, 2256047802867534800L, -1579465445600752363L, -5950553450771258300L, 3499332307414083421L, -2459111586567509405L, 4440932851370414162L, -8791726246466361906L, -452733712586341663L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final void zze(Intent intent) {
        Parcel zza = zza();
        zzayi.zzd(zza, intent);
        zzbm(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final void zzf(String[] strArr, int[] iArr, IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zza.writeStringArray(strArr);
        zza.writeIntArray(iArr);
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final void zzg(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final void zzh() {
        zzbm(3, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final void zzi(IObjectWrapper iObjectWrapper, String str, String str2) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbwm
    public final void zzj(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.offline.buffering.zza zzaVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzd(zza, zzaVar);
        zzbm(6, zza);
    }
}
