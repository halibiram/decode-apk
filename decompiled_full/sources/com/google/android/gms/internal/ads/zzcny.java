package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcny {
    private zzclj zza;
    private zzcpl zzb;
    private zzflq zzc;
    private zzcpx zzd;
    private zzfik zze;

    private zzcny() {
    }

    public final zzclg zza() {
        zzhhl.zzc(this.zza, zzclj.class);
        zzhhl.zzc(this.zzb, zzcpl.class);
        if (this.zzc == null) {
            this.zzc = new zzflq();
        }
        if (this.zzd == null) {
            this.zzd = new zzcpx();
        }
        if (this.zze == null) {
            this.zze = new zzfik();
        }
        return new zzcnc(this.zza, this.zzb, this.zzc, this.zzd, this.zze, null);
    }

    public final zzcny zzb(zzclj zzcljVar) {
        this.zza = zzcljVar;
        return this;
    }

    public final zzcny zzc(zzcpl zzcplVar) {
        this.zzb = zzcplVar;
        return this;
    }

    public /* synthetic */ zzcny(zzcnx zzcnxVar) {
    }
}
