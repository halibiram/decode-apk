package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
final class zzou {
    final /* synthetic */ zzov zza;
    private final String zzb;
    private int zzc;
    private long zzd;
    private zzur zze;
    private boolean zzf;
    private boolean zzg;

    public zzou(zzov zzovVar, String str, @Nullable int i, zzur zzurVar) {
        this.zza = zzovVar;
        this.zzb = str;
        this.zzc = i;
        this.zzd = zzurVar == null ? -1L : zzurVar.zzd;
        if (zzurVar == null || !zzurVar.zzb()) {
            return;
        }
        this.zze = zzurVar;
    }

    public final void zzg(int i, @Nullable zzur zzurVar) {
        if (this.zzd == -1 && i == this.zzc && zzurVar != null) {
            zzov zzovVar = this.zza;
            long j = zzurVar.zzd;
            if (j >= zzov.zza(zzovVar)) {
                this.zzd = j;
            }
        }
    }

    public final boolean zzj(int i, @Nullable zzur zzurVar) {
        if (zzurVar == null) {
            return i == this.zzc;
        }
        zzur zzurVar2 = this.zze;
        return zzurVar2 == null ? !zzurVar.zzb() && zzurVar.zzd == this.zzd : zzurVar.zzd == zzurVar2.zzd && zzurVar.zzb == zzurVar2.zzb && zzurVar.zzc == zzurVar2.zzc;
    }

    public final boolean zzk(zzmq zzmqVar) {
        zzur zzurVar = zzmqVar.zzd;
        if (zzurVar == null) {
            if (this.zzc != zzmqVar.zzc) {
                return true;
            }
            return false;
        }
        long j = this.zzd;
        if (j == -1) {
            return false;
        }
        if (zzurVar.zzd > j) {
            return true;
        }
        if (this.zze == null) {
            return false;
        }
        zzcx zzcxVar = zzmqVar.zzb;
        int zza = zzcxVar.zza(zzurVar.zza);
        int zza2 = zzcxVar.zza(this.zze.zza);
        zzur zzurVar2 = zzmqVar.zzd;
        if (zzurVar2.zzd < this.zze.zzd || zza < zza2) {
            return false;
        }
        if (zza > zza2) {
            return true;
        }
        if (zzurVar2.zzb()) {
            zzur zzurVar3 = zzmqVar.zzd;
            int i = zzurVar3.zzb;
            int i2 = zzurVar3.zzc;
            zzur zzurVar4 = this.zze;
            int i3 = zzurVar4.zzb;
            if (i > i3) {
                return true;
            }
            if (i == i3 && i2 > zzurVar4.zzc) {
                return true;
            }
            return false;
        }
        int i4 = zzmqVar.zzd.zze;
        if (i4 == -1 || i4 > this.zze.zzb) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
    
        if (r0 < r8.zzc()) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean zzl(zzcx zzcxVar, zzcx zzcxVar2) {
        int i = this.zzc;
        if (i < zzcxVar.zzc()) {
            zzcxVar.zze(i, zzov.zzc(this.zza), 0L);
            for (int i2 = zzov.zzc(this.zza).zzp; i2 <= zzov.zzc(this.zza).zzq; i2++) {
                int zza = zzcxVar2.zza(zzcxVar.zzf(i2));
                if (zza != -1) {
                    i = zzcxVar2.zzd(zza, zzov.zzb(this.zza), false).zzd;
                    break;
                }
            }
            i = -1;
        }
        this.zzc = i;
        if (i == -1) {
            return false;
        }
        zzur zzurVar = this.zze;
        if (zzurVar != null && zzcxVar2.zza(zzurVar.zza) == -1) {
            return false;
        }
        return true;
    }
}
