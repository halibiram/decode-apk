package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes2.dex */
public final class zzdse {
    private final zzdav zza;
    private final zzdce zzb;
    private final zzdcr zzc;
    private final zzddd zzd;
    private final zzdfr zze;
    private final zzdis zzf;

    public zzdse(zzdav zzdavVar, zzdce zzdceVar, zzdcr zzdcrVar, zzddd zzdddVar, zzdfr zzdfrVar, zzdis zzdisVar) {
        this.zza = zzdavVar;
        this.zzb = zzdceVar;
        this.zzc = zzdcrVar;
        this.zzd = zzdddVar;
        this.zze = zzdfrVar;
        this.zzf = zzdisVar;
    }

    public final void zza(zzdsf zzdsfVar) {
        zzdsc zzdscVar;
        final zzdce zzdceVar = this.zzb;
        zzdscVar = zzdsfVar.zza;
        Objects.requireNonNull(zzdceVar);
        zzdscVar.zzi(this.zza, this.zzc, this.zzd, this.zze, new com.google.android.gms.ads.internal.overlay.zzaa() { // from class: com.google.android.gms.internal.ads.zzdsd
            @Override // com.google.android.gms.ads.internal.overlay.zzaa
            public final void zzg() {
                zzdce.this.zzb();
            }
        }, this.zzf);
    }
}
