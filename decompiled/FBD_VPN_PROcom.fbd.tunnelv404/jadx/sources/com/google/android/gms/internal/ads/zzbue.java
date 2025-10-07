package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzbue extends zzayg implements zzbug {
    public zzbue(IBinder iBinder) {
        super(iBinder, new ObfuscatedString(new long[]{9134876079576956988L, -7325038714094230226L, 5343158856298809960L, -2597570164885309809L, -9094464295244751186L, 3768234084649950110L, -8120718847044892515L, 8785352154965638922L, 7570096421446916858L, -5460377380965669841L}).toString());
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final void zze(String str) {
        Parcel zza = zza();
        zza.writeString(new ObfuscatedString(new long[]{-4966270830734347645L, -698500343605874899L, -6628537662007303699L, 5090355551489770838L}).toString());
        zzbm(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final void zzf(com.google.android.gms.ads.internal.client.zze zzeVar) {
        Parcel zza = zza();
        zzayi.zzd(zza, zzeVar);
        zzbm(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final void zzg(IObjectWrapper iObjectWrapper) {
        Parcel zza = zza();
        zzayi.zzf(zza, iObjectWrapper);
        zzbm(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final void zzh(zzbte zzbteVar) {
        Parcel zza = zza();
        zzayi.zzf(zza, zzbteVar);
        zzbm(4, zza);
    }
}
