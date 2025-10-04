package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzcao extends zzayg implements zzcaq {
    public zzcao(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{9206292811097163756L, 8694377915079493872L, 6295404891918698718L, -1433488663620415732L, -1641667549361755376L, -1480073388224597052L, -6616148364236662087L, 4084516912905771222L, 2927502919551731232L, -4619156243937432616L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcaq
    public final void zze() {
        zzbm(7, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcaq
    public final void zzf() {
        zzbm(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcaq
    public final void zzg() {
        zzbm(2, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcaq
    public final void zzh(int i) {
        Parcel zza = zza();
        zza.writeInt(i);
        zzbm(4, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcaq
    public final void zzi(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzeVar);
        zzbm(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcaq
    public final void zzj() {
        zzbm(1, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzcaq
    public final void zzk(zzcak zzcakVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzcakVar);
        zzbm(3, zza);
    }
}
