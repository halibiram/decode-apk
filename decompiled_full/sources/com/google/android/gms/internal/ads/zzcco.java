package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcco extends zzayg implements zzccq {
    public zzcco(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-2406918541612279169L, 1600061942619163940L, -6395053550816687282L, 8782225669502191296L, 7904804478474242378L, -7664098580149606996L, 4283864658488757722L, 2937299012731842351L, -7478721307430591350L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzccq
    public final void zzb(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzbm(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzccq
    public final void zzc(String str, String str2, Bundle bundle) {
        Parcel zza = zza();
        zza.writeString(str);
        zza.writeString(str2);
        zzayi.zzd(zza, bundle);
        zzbm(3, zza);
    }
}
