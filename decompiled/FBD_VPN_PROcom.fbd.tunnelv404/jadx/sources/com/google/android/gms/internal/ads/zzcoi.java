package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
final class zzcoi implements zzdxo {
    private final zzcnc zza;
    private Context zzb;
    private zzboe zzc;

    public /* synthetic */ zzcoi(zzcnc zzcncVar, zzcoh zzcohVar) {
        this.zza = zzcncVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdxo
    public final /* synthetic */ zzdxo zza(zzboe zzboeVar) {
        zzboeVar.getClass();
        this.zzc = zzboeVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdxo
    public final /* synthetic */ zzdxo zzb(Context context) {
        context.getClass();
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzdxo
    public final zzdxp zzc() {
        zzhhl.zzc(this.zzb, Context.class);
        zzhhl.zzc(this.zzc, zzboe.class);
        return new zzcok(this.zza, this.zzb, this.zzc, null);
    }
}
