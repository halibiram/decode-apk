package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbut extends zzayg implements zzbuv {
    public zzbut(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{2186920496878573368L, -3011586920080792895L, 3138468467357699473L, -5578885469712385105L, -8849150094922289683L, -2274642072463561050L, 5415236429822888997L, -992624010040932140L, -3819320554103838367L, 4267001378763080421L, 1204650813091052124L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbuv
    public final void zze(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzbm(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbuv
    public final void zzf(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzbm(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbuv
    public final void zzg(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzeVar);
        zzbm(3, zza);
    }
}
