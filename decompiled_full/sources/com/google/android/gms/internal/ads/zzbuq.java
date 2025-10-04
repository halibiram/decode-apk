package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbuq extends zzayg implements zzbus {
    public zzbuq(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{1565774274220195840L, 1052133558207178620L, 6413356469117951505L, 2940010684971952888L, 1384770763947986902L, 2088382338801751386L, 3304702628266706827L, 3663912459605933805L, -8611128811843451703L, 8706504726259506142L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final com.google.android.gms.ads.internal.client.zzdq zze() {
        Parcel zzbl = zzbl(5, zza());
        com.google.android.gms.ads.internal.client.zzdq zzb = com.google.android.gms.ads.internal.client.zzdp.zzb(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final zzbvg zzf() {
        Parcel zzbl = zzbl(2, zza());
        zzbvg zzbvgVar = (zzbvg) zzayi.zza(zzbl, zzbvg.CREATOR);
        zzbl.recycle();
        return zzbvgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final zzbvg zzg() {
        Parcel zzbl = zzbl(3, zza());
        zzbvg zzbvgVar = (zzbvg) zzayi.zza(zzbl, zzbvg.CREATOR);
        zzbl.recycle();
        return zzbvgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzh(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, com.google.android.gms.ads.internal.client.zzq zzqVar, zzbuv zzbuvVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zzayi.zzd(zza, bundle);
        zzayi.zzd(zza, bundle2);
        zzayi.zzd(zza, zzqVar);
        zzayi.zzf(zza, zzbuvVar);
        zzbm(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzi(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbud zzbudVar, zzbtb zzbtbVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzayi.zzd(zza, zzlVar);
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbudVar);
        zzayi.zzf(zza, zzbtbVar);
        zzbm(23, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzj(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbug zzbugVar, zzbtb zzbtbVar, com.google.android.gms.ads.internal.client.zzq zzqVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzayi.zzd(zza, zzlVar);
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbugVar);
        zzayi.zzf(zza, zzbtbVar);
        zzayi.zzd(zza, zzqVar);
        zzbm(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzk(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbug zzbugVar, zzbtb zzbtbVar, com.google.android.gms.ads.internal.client.zzq zzqVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzayi.zzd(zza, zzlVar);
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbugVar);
        zzayi.zzf(zza, zzbtbVar);
        zzayi.zzd(zza, zzqVar);
        zzbm(21, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzl(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbuj zzbujVar, zzbtb zzbtbVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzayi.zzd(zza, zzlVar);
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbujVar);
        zzayi.zzf(zza, zzbtbVar);
        zzbm(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzm(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbum zzbumVar, zzbtb zzbtbVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzayi.zzd(zza, zzlVar);
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbumVar);
        zzayi.zzf(zza, zzbtbVar);
        zzbm(18, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzn(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbum zzbumVar, zzbtb zzbtbVar, zzbjb zzbjbVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzayi.zzd(zza, zzlVar);
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbumVar);
        zzayi.zzf(zza, zzbtbVar);
        zzayi.zzd(zza, zzbjbVar);
        zzbm(22, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzo(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbup zzbupVar, zzbtb zzbtbVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzayi.zzd(zza, zzlVar);
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbupVar);
        zzayi.zzf(zza, zzbtbVar);
        zzbm(20, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzp(String str, String str2, com.google.android.gms.ads.internal.client.zzl zzlVar, IObjectWrapper iObjectWrapper, zzbup zzbupVar, zzbtb zzbtbVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzayi.zzd(zza, zzlVar);
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzbupVar);
        zzayi.zzf(zza, zzbtbVar);
        zzbm(16, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final void zzq(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzbm(19, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final boolean zzr(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        Parcel zzbl = zzbl(24, zza);
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final boolean zzs(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        Parcel zzbl = zzbl(15, zza);
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbus
    public final boolean zzt(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        Parcel zzbl = zzbl(17, zza);
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }
}
