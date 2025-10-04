package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC1320xaf50c7e8;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzbke extends zzayg implements zzbkg {
    public zzbke(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-7862680421921311177L, 5376450181794992243L, -2396405221681435334L, 8700978328498222968L, 529036200731213597L, 3773651033972911628L, -7930452130751077988L, 3979894727996647900L, -8774426646861253554L, 4416415698780973069L, -7554531504788599998L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final com.google.android.gms.ads.internal.client.zzdq zze() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final zzbjj zzf() {
        zzbjj zzbjhVar;
        Parcel zzbl = zzbl(16, zza());
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzbjhVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-9210847679085464218L, 4034312426636356180L, 4476888623832843400L, 2131312710281903040L, 8662379141923182697L, 2707967580253595148L, 7903774224982791944L, -5040085904549311439L, -4991329136854022076L}).toString());
            if (queryLocalInterface instanceof zzbjj) {
                zzbjhVar = (zzbjj) queryLocalInterface;
            } else {
                zzbjhVar = new zzbjh(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzbjhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final zzbjm zzg(String str) {
        zzbjm zzbjkVar;
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzbl = zzbl(2, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        if (readStrongBinder == null) {
            zzbjkVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(new ObfuscatedString(new long[]{-734083123018359843L, 7644226556806232060L, 1153216845190923234L, 5543985274268191964L, -2344947953235430212L, 3015698294656023675L, 8767841347094492023L, -4376773564119069743L, 4022484050689486687L, 4168820980627543872L}).toString());
            if (queryLocalInterface instanceof zzbjm) {
                zzbjkVar = (zzbjm) queryLocalInterface;
            } else {
                zzbjkVar = new zzbjk(readStrongBinder);
            }
        }
        zzbl.recycle();
        return zzbjkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final IObjectWrapper zzh() {
        return AbstractC1320xaf50c7e8.m4357x75d576dc(zzbl(9, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final String zzi() {
        Parcel zzbl = zzbl(4, zza());
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final String zzj(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzbl = zzbl(1, zza);
        String readString = zzbl.readString();
        zzbl.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final List zzk() {
        Parcel zzbl = zzbl(3, zza());
        ArrayList<String> createStringArrayList = zzbl.createStringArrayList();
        zzbl.recycle();
        return createStringArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final void zzl() {
        zzbm(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final void zzm() {
        zzbm(15, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final void zzn(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzbm(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final void zzo() {
        zzbm(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final void zzp(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final boolean zzq() {
        Parcel zzbl = zzbl(12, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final boolean zzr(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        Parcel zzbl = zzbl(17, zza);
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final boolean zzs(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        Parcel zzbl = zzbl(10, zza);
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbkg
    public final boolean zzt() {
        Parcel zzbl = zzbl(13, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }
}
