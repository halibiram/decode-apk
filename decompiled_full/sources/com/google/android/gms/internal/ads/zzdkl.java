package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzdkl implements com.google.android.gms.ads.internal.overlay.zzp {
    private final zzddd zza;
    private final zzdig zzb;

    public zzdkl(zzddd zzdddVar, zzdig zzdigVar) {
        this.zza = zzdddVar;
        this.zzb = zzdigVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbA() {
        this.zza.zzbA();
        this.zzb.zzb();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbC() {
        this.zza.zzbC();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbD(int i) {
        this.zza.zzbD(i);
        this.zzb.zza();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbP() {
        this.zza.zzbP();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbt() {
        this.zza.zzbt();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzp
    public final void zzbz() {
        this.zza.zzbz();
    }
}
