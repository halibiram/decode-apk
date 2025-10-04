package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcal extends zzayg implements zzcan {
    public zzcal(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-849458506550801484L, 6776475611376641643L, -7767027366687653593L, 6495602269649287025L, 1310900242189827139L, 9097561912811667552L, -5504481092538548995L, -5811610822734755555L, 6739615875390787525L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final Bundle zzb() {
        Parcel zzbl = zzbl(9, zza());
        Bundle bundle = (Bundle) zzayi.zza(zzbl, Bundle.CREATOR);
        zzbl.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final com.google.android.gms.ads.internal.client.zzdn zzc() {
        Parcel zzbl = zzbl(12, zza());
        com.google.android.gms.ads.internal.client.zzdn zzb = com.google.android.gms.ads.internal.client.zzdm.zzb(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final zzcak zzd() {
        zzcak zzcaiVar;
        Parcel zzbl = zzbl(11, zza());
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzcaiVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-6152426655908157016L, -8736211740848741036L, 727447884991837371L, 5262221828021408870L, 5995876336968855901L, 1588582113617452477L, 6050384760162303123L, -4420207702923914270L, 1776373904472088985L}).toString());
            if (queryLocalInterface instanceof zzcak) {
                zzcaiVar = (zzcak) queryLocalInterface;
            } else {
                zzcaiVar = new zzcai(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzcaiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final String zze() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzf(com.google.android.gms.ads.internal.client.zzl zzlVar, zzcau zzcauVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzlVar);
        zzayi.zzf(zza, zzcauVar);
        zzbm(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzg(com.google.android.gms.ads.internal.client.zzl zzlVar, zzcau zzcauVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzlVar);
        zzayi.zzf(zza, zzcauVar);
        zzbm(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzh(boolean z) {
        Parcel zza = zza();
        int i = zzayi.zza;
        zza.writeInt(z ? 1 : 0);
        zzbm(15, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzi(com.google.android.gms.ads.internal.client.zzdd zzddVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzddVar);
        zzbm(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzj(com.google.android.gms.ads.internal.client.zzdg zzdgVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzdgVar);
        zzbm(13, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzk(zzcaq zzcaqVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzcaqVar);
        zzbm(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzl(zzcbb zzcbbVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzcbbVar);
        zzbm(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzm(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzn(IObjectWrapper iObjectWrapper, boolean z) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final boolean zzo() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcan
    public final void zzp(zzcav zzcavVar) {
        throw null;
    }
}
