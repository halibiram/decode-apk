package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
final class zzcnu implements zzfda {
    private final zzcnc zza;
    private Context zzb;
    private String zzc;
    private com.google.android.gms.ads.internal.client.zzq zzd;

    public /* synthetic */ zzcnu(zzcnc zzcncVar, zzcnt zzcntVar) {
        this.zza = zzcncVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfda
    public final /* synthetic */ zzfda zza(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        zzqVar.getClass();
        this.zzd = zzqVar;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfda
    public final /* synthetic */ zzfda zzb(String str) {
        str.getClass();
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfda
    public final /* synthetic */ zzfda zzc(Context context) {
        context.getClass();
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfda
    public final zzfdb zzd() {
        zzhhl.zzc(this.zzb, Context.class);
        zzhhl.zzc(this.zzc, String.class);
        zzhhl.zzc(this.zzd, com.google.android.gms.ads.internal.client.zzq.class);
        return new zzcnw(this.zza, this.zzb, this.zzc, this.zzd, null);
    }
}
