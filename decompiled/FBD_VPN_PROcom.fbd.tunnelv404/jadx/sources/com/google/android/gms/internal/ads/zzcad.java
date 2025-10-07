package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcad extends zzayg implements zzcaf {
    public zzcad(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{1123977461482026586L, 9195626390183565406L, 8150514770095131332L, -2839149177414291456L, -3522636419428969392L, 8059302627748562827L, -4206824967278363353L, 4867439331107172168L, 5264565679667887121L, 7409353783576629612L, -6003655610965139556L, 7437483396515526173L, 360887504327251916L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zze(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzf(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzg(IObjectWrapper iObjectWrapper, int i) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zza.writeInt(i);
        zzbm(9, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzh(IObjectWrapper iObjectWrapper) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzi(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzj(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzk(IObjectWrapper iObjectWrapper, int i) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzl(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzm(IObjectWrapper iObjectWrapper, zzcag zzcagVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzd(zza, zzcagVar);
        zzbm(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzn(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(11, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcaf
    public final void zzo(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(5, zza);
    }
}
