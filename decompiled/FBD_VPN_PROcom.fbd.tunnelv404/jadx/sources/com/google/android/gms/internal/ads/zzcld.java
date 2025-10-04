package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcld extends zzayg implements zzclf {
    public zzcld(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{7819394546532516900L, -7143750590731909256L, -2108203264943999134L, 802483564850685773L, 4709453038327212601L, 1298049727004440667L, 7315217648743703691L, 3201270824124279910L, -7615670282933084235L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzclf
    public final void zze(IObjectWrapper iObjectWrapper, zzclc zzclcVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzayi.zzf(zza, zzclcVar);
        zzbm(2, zza);
    }
}
