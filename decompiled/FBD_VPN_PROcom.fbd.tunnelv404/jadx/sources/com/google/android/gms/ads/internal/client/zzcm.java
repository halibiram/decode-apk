package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzayg;
import com.google.android.gms.internal.ads.zzayi;
import com.google.android.gms.internal.ads.zzbpd;
import com.google.android.gms.internal.ads.zzbpk;
import com.google.android.gms.internal.ads.zzbsv;
import com.panda912.muddy.ObfuscatedString;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzcm extends zzayg implements zzco {
    public zzcm(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-7586490717250503387L, 1345277115419834443L, -990252048108360113L, -6941835091431840632L, 438132920402276228L, -7989253323184141782L, -2837978948593203223L, -6274517795849919892L, 1531383310221357163L, 356936984184269805L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final float zze() {
        Parcel zzbl = zzbl(7, zza());
        float readFloat = zzbl.readFloat();
        zzbl.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final String zzf() {
        Parcel zzbl = zzbl(9, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final List zzg() {
        Parcel zzbl = zzbl(13, zza());
        ArrayList createTypedArrayList = zzbl.createTypedArrayList(zzbpd.CREATOR);
        zzbl.recycle();
        return createTypedArrayList;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzh(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzbm(10, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzi() {
        zzbm(15, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzj(boolean z) {
        Parcel zza = zza();
        int i = zzayi.zza;
        zza.writeInt(z ? 1 : 0);
        zzbm(17, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzk() {
        zzbm(1, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzl(String str, IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zza.writeString(null);
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(6, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzm(zzda zzdaVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzdaVar);
        zzbm(16, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzn(IObjectWrapper iObjectWrapper, String str) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zzbm(5, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzo(zzbsv zzbsvVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzbsvVar);
        zzbm(11, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzp(boolean z) {
        Parcel zza = zza();
        int i = zzayi.zza;
        zza.writeInt(z ? 1 : 0);
        zzbm(4, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzq(float f) {
        Parcel zza = zza();
        zza.writeFloat(f);
        zzbm(2, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzr(String str) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzs(zzbpk zzbpkVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzbpkVar);
        zzbm(12, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzt(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzbm(18, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzu(zzff zzffVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzffVar);
        zzbm(14, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final boolean zzv() {
        Parcel zzbl = zzbl(8, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }
}
