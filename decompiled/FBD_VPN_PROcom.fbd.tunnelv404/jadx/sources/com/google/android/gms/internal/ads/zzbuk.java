package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbuk extends zzayg implements zzbum {
    public zzbuk(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{3054570572944074961L, 2668010067699348675L, 6480955281607130159L, 814840040025996105L, -4211977339499049191L, -101495193255287056L, 2160352221670549378L, -8369523116419298530L, 5433309747230741566L, -2257264709015868125L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbum
    public final void zze(String str) {
        Parcel zza = zza();
        zza.writeString(new ObfuscatedString(new long[]{7635487880957662735L, -7806553456432051527L, -4917335162661849417L, 1831923782338118583L}).toString());
        zzbm(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbum
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzeVar);
        zzbm(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbum
    public final void zzg(zzbtk zzbtkVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzbtkVar);
        zzbm(1, zza);
    }
}
