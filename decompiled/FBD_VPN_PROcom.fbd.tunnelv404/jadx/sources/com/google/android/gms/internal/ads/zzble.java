package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzble extends zzayg implements zzblg {
    public zzble(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-3073804503215217393L, 1441785672345957526L, -6085782103088567814L, -444380287640180393L, -739881983197435141L, 2570995999833453083L, 4291839702915361082L, 1015391389697518523L, 7454943330944303023L, -4051082953899619098L, 4429943687410192567L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzblg
    public final void zze() {
        zzbm(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzblg
    public final void zzf(String str) {
        Parcel zza = zza();
        zza.writeString(str);
        zzbm(1, zza);
    }
}
