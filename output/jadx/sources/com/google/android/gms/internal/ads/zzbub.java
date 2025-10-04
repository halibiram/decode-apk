package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbub extends zzayg implements zzbud {
    public zzbub(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{2705703422352403144L, 5736226558811165045L, -5532640406026754922L, -2552844237967409613L, 1748013462515289039L, 3732001809141447307L, -4706445554223516557L, -6474137048124053261L, -8476357674985444533L, -5757308323392491160L, -3755954124033609730L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbud
    public final void zze(String str) {
        Parcel zza = zza();
        zza.writeString(new ObfuscatedString(new long[]{-8812379262155056856L, -3609530426448577983L, -6657507262854185877L, 8590444991430615452L}).toString());
        zzbm(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbud
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzeVar);
        zzbm(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbud
    public final void zzg() {
        zzbm(2, zza());
    }
}
