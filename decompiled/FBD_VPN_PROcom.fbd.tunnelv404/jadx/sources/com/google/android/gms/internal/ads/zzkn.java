package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzkn implements zzlm {
    private final Object zza;
    private final zzut zzb;
    private zzcx zzc;

    public zzkn(Object obj, zzum zzumVar) {
        this.zza = obj;
        this.zzb = zzumVar;
        this.zzc = zzumVar.zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzlm
    public final zzcx zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzlm
    public final Object zzb() {
        return this.zza;
    }

    public final void zzc(zzcx zzcxVar) {
        this.zzc = zzcxVar;
    }
}
