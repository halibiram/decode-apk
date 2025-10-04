package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayg;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbi extends zzayg implements zzbk {
    public zzbi(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{3311916618093874459L, -4004403701496811229L, -7554172461736481150L, 8560223134357317609L, 2101696509060232750L, -2547262166211849619L, 8662779858924329703L, 5488416278904345932L, 1162219039699289690L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzb(zze zzeVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzeVar);
        zzbm(2, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbk
    public final void zzc() {
        zzbm(1, zza());
    }
}
