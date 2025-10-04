package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzfuk extends zzayg implements zzfum {
    public zzfuk(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-1928591615221230941L, -5358029026099583196L, 6829407137711258990L, -4337078952487611246L, -4591906213323261654L, 2904680580820283043L, -140193059267756806L, 254891081955737485L, -1430988820743083864L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzfum
    public final void zze(Bundle bundle, zzfuo zzfuoVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, bundle);
        zzayi.zzf(zza, zzfuoVar);
        zzbn(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfum
    public final void zzf(String str, Bundle bundle, zzfuo zzfuoVar) {
        Parcel zza = zza();
        zza.writeString(str);
        zzayi.zzd(zza, bundle);
        zzayi.zzf(zza, zzfuoVar);
        zzbn(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzfum
    public final void zzg(Bundle bundle, zzfuo zzfuoVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, bundle);
        zzayi.zzf(zza, zzfuoVar);
        zzbn(3, zza);
    }
}
