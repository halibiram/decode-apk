package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayg;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbl extends zzayg implements zzbn {
    public zzbl(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-1482277875630438793L, 8800662268522849377L, 4751821560076394900L, 7336895201269698981L, 1332085706380636801L, -4464692071449528565L, 4743749530991411752L, 7940733048706366711L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final String zze() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final String zzf() {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final void zzg(zzl zzlVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzlVar);
        zzbm(1, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final void zzh(zzl zzlVar, int i) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzlVar);
        zza.writeInt(i);
        zzbm(5, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbn
    public final boolean zzi() {
        Parcel zzbl = zzbl(3, zza());
        boolean zzg = zzayi.zzg(zzbl);
        zzbl.recycle();
        return zzg;
    }
}
