package com.google.android.gms.internal.ads;

import android.os.Looper;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzvy extends zzts implements zzvp {
    private final zzgv zza;
    private final zzry zzb;
    private final int zzc;
    private boolean zzd = true;
    private long zze = -9223372036854775807L;
    private boolean zzf;
    private boolean zzg;

    @Nullable
    private zzhy zzh;

    @GuardedBy("this")
    private zzbp zzi;
    private final zzvv zzj;
    private final zzzb zzk;

    public /* synthetic */ zzvy(zzbp zzbpVar, zzgv zzgvVar, zzvv zzvvVar, zzry zzryVar, zzzb zzzbVar, int i, zzvx zzvxVar) {
        this.zzi = zzbpVar;
        this.zza = zzgvVar;
        this.zzj = zzvvVar;
        this.zzb = zzryVar;
        this.zzk = zzzbVar;
        this.zzc = i;
    }

    private final void zzw() {
        zzbf zzbfVar;
        zzcx zzcxVar;
        long j = this.zze;
        boolean z = this.zzf;
        boolean z2 = this.zzg;
        zzbp zzJ = zzJ();
        if (z2) {
            zzbfVar = zzJ.zzf;
        } else {
            zzbfVar = null;
        }
        zzwl zzwlVar = new zzwl(-9223372036854775807L, -9223372036854775807L, -9223372036854775807L, j, j, 0L, 0L, z, false, false, null, zzJ, zzbfVar);
        if (this.zzd) {
            zzcxVar = new zzvu(this, zzwlVar);
        } else {
            zzcxVar = zzwlVar;
        }
        zzo(zzcxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzG(zzup zzupVar) {
        ((zzvt) zzupVar).zzN();
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final zzup zzI(zzur zzurVar, zzyx zzyxVar, long j) {
        zzgw zza = this.zza.zza();
        zzhy zzhyVar = this.zzh;
        if (zzhyVar != null) {
            zza.zzf(zzhyVar);
        }
        zzbi zzbiVar = zzJ().zzd;
        zzbiVar.getClass();
        zzvv zzvvVar = this.zzj;
        zzb();
        return new zzvt(zzbiVar.zzb, zza, new zztu(zzvvVar.zza), this.zzb, zzc(zzurVar), this.zzk, zze(zzurVar), this, zzyxVar, null, this.zzc, zzfy.zzq(-9223372036854775807L));
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final synchronized zzbp zzJ() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzvp
    public final void zza(long j, boolean z, boolean z2) {
        if (j == -9223372036854775807L) {
            j = this.zze;
        }
        if (!this.zzd && this.zze == j && this.zzf == z && this.zzg == z2) {
            return;
        }
        this.zze = j;
        this.zzf = z;
        this.zzg = z2;
        this.zzd = false;
        zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzts
    public final void zzn(@Nullable zzhy zzhyVar) {
        this.zzh = zzhyVar;
        Looper.myLooper().getClass();
        zzb();
        zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzts
    public final void zzq() {
    }

    @Override // com.google.android.gms.internal.ads.zzts, com.google.android.gms.internal.ads.zzut
    public final synchronized void zzt(zzbp zzbpVar) {
        this.zzi = zzbpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzut
    public final void zzz() {
    }
}
