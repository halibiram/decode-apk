package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzayg;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzdh extends zzayg implements zzdj {
    public zzdh(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{2917516269935484861L, -4145236847007468986L, -8664456710113030662L, -7308421162047881995L, -2026657888990670808L, 4997758583026110124L, -85734470149336098L, -4294021986122290515L, 6411949893904338033L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzdj
    public final void zze(String str, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        Parcel zza = zza();
        zza.writeString(str);
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, iObjectWrapper2);
        zzbm(1, zza);
    }
}
