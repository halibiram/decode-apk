package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbkv extends zzayg implements zzbkx {
    public zzbkv(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-4680546974290789197L, 2575150337612403637L, -2530826249951176727L, -5031651409908239718L, 4287252514824323658L, -6391252825382894137L, -5073176546401757598L, -7784347104580846190L, -4216409872049712806L, 8488683789998776793L, 313335985446850600L, 2120932204609888608L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbkx
    public final void zze(com.google.android.gms.ads.internal.client.zzbu zzbuVar, IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzbuVar);
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(1, zza);
    }
}
