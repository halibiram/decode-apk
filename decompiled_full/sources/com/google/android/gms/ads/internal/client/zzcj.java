package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayg;
import com.google.android.gms.internal.ads.zzayi;
import com.google.android.gms.internal.ads.zzbsu;
import com.google.android.gms.internal.ads.zzbsv;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcj extends zzayg implements zzcl {
    public zzcj(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-184621862095047952L, -6313582868211160668L, -8338777655245454223L, -2366674704145099549L, 4889432742909009793L, 4410375464336975909L, -951547872622990731L, -4205202343835999524L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzcl
    public final zzbsv getAdapterCreator() {
        Parcel zzbl = zzbl(2, zza());
        zzbsv zzf = zzbsu.zzf(zzbl.readStrongBinder());
        zzbl.recycle();
        return zzf;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcl
    public final zzen getLiteSdkVersion() {
        Parcel zzbl = zzbl(1, zza());
        zzen zzenVar = (zzen) zzayi.zza(zzbl, zzen.CREATOR);
        zzbl.recycle();
        return zzenVar;
    }
}
