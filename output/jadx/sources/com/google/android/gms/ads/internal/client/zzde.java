package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayg;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzde extends zzayg implements zzdg {
    public zzde(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-6902047953257330307L, -6508124455246166381L, -6661446423802975907L, 1570634855001690780L, -2067996119099655386L, 8445134133343325367L, 637678181781308301L, 2951444279763854827L, 4210572579416829984L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzdg
    public final void zze(zzs zzsVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzsVar);
        zzbm(1, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdg
    public final boolean zzf() {
        Parcel zzbl = zzbl(2, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }
}
