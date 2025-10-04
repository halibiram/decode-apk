package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzayg;
import com.google.android.gms.internal.ads.zzayi;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzdr extends zzayg implements zzdt {
    public zzdr(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{-7743178802951899431L, 2038280376523823658L, -2525410251242081317L, -4320319392406522278L, -4207468204702863392L, -3364834234862973771L, -9168126691268159711L, -3879523724550992241L, -967519850892897010L, 194655951332614294L}).toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zzdt
    public final void zze() {
        zzbm(4, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzdt
    public final void zzf(boolean z) {
        Parcel zza = zza();
        int i = zzayi.zza;
        zza.writeInt(z ? 1 : 0);
        zzbm(5, zza);
    }

    @Override // com.google.android.gms.ads.internal.client.zzdt
    public final void zzg() {
        zzbm(3, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzdt
    public final void zzh() {
        zzbm(2, zza());
    }

    @Override // com.google.android.gms.ads.internal.client.zzdt
    public final void zzi() {
        zzbm(1, zza());
    }
}
