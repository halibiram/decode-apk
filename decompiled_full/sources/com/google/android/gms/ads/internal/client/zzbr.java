package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzayg;
import com.google.android.gms.internal.ads.zzayi;
import com.google.android.gms.internal.ads.zzbsv;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbr extends zzayg implements IInterface {
    public zzbr(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{4808849257596637782L, -1473549214736940200L, -2385663043415987040L, 4265806613156101191L, 1919690649598662803L, 851102668320429840L, -7320675935307898132L, 3162052297099074436L, -7433983380056775371L, -5485102305899381340L}).toString());
    }

    public final IBinder zze(IObjectWrapper iObjectWrapper, String str, zzbsv zzbsvVar, int i) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zza.writeString(str);
        zzayi.zzf(zza, zzbsvVar);
        zza.writeInt(240304000);
        Parcel zzbl = zzbl(1, zza);
        IBinder readStrongBinder = zzbl.readStrongBinder();
        zzbl.recycle();
        return readStrongBinder;
    }
}
