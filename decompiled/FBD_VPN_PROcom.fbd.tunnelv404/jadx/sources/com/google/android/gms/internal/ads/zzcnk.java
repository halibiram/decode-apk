package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
final class zzcnk implements zzfbm {
    private final zzcnc zza;
    private Context zzb;
    private String zzc;

    public /* synthetic */ zzcnk(zzcnc zzcncVar, zzcnj zzcnjVar) {
        this.zza = zzcncVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfbm
    public final /* synthetic */ zzfbm zza(String str) {
        str.getClass();
        this.zzc = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfbm
    public final /* synthetic */ zzfbm zzb(Context context) {
        context.getClass();
        this.zzb = context;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfbm
    public final zzfbn zzc() {
        zzhhl.zzc(this.zzb, Context.class);
        zzhhl.zzc(this.zzc, String.class);
        return new zzcnm(this.zza, this.zzb, this.zzc, null);
    }
}
