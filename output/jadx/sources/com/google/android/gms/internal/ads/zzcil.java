package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;

/* loaded from: classes2.dex */
final class zzcil implements zzgw {
    private final zzgw zza;
    private final long zzb;
    private final zzgw zzc;
    private long zzd;
    private Uri zze;

    public zzcil(zzgw zzgwVar, int i, zzgw zzgwVar2) {
        this.zza = zzgwVar;
        this.zzb = i;
        this.zzc = zzgwVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzu
    public final int zza(byte[] bArr, int i, int i2) {
        int i3;
        long j = this.zzd;
        long j2 = this.zzb;
        if (j < j2) {
            int zza = this.zza.zza(bArr, i, (int) Math.min(i2, j2 - j));
            long j3 = this.zzd + zza;
            this.zzd = j3;
            i3 = zza;
            j = j3;
        } else {
            i3 = 0;
        }
        if (j >= this.zzb) {
            int zza2 = this.zzc.zza(bArr, i + i3, i2 - i3);
            int i4 = i3 + zza2;
            this.zzd += zza2;
            return i4;
        }
        return i3;
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final long zzb(zzhb zzhbVar) {
        zzhb zzhbVar2;
        long j;
        long j2;
        this.zze = zzhbVar.zza;
        long j3 = this.zzb;
        long j4 = zzhbVar.zzf;
        zzhb zzhbVar3 = null;
        if (j4 >= j3) {
            zzhbVar2 = null;
        } else {
            long j5 = zzhbVar.zzg;
            long j6 = j3 - j4;
            if (j5 != -1) {
                j6 = Math.min(j5, j6);
            }
            zzhbVar2 = new zzhb(zzhbVar.zza, null, j4, j4, j6, null, 0);
        }
        long j7 = zzhbVar.zzg;
        if (j7 == -1 || zzhbVar.zzf + j7 > this.zzb) {
            long max = Math.max(this.zzb, zzhbVar.zzf);
            long j8 = zzhbVar.zzg;
            if (j8 != -1) {
                j = Math.min(j8, (zzhbVar.zzf + j8) - this.zzb);
            } else {
                j = -1;
            }
            zzhbVar3 = new zzhb(zzhbVar.zza, null, max, max, j, null, 0);
        }
        long j9 = 0;
        if (zzhbVar2 != null) {
            j2 = this.zza.zzb(zzhbVar2);
        } else {
            j2 = 0;
        }
        if (zzhbVar3 != null) {
            j9 = this.zzc.zzb(zzhbVar3);
        }
        this.zzd = zzhbVar.zzf;
        if (j2 == -1 || j9 == -1) {
            return -1L;
        }
        return j2 + j9;
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final Uri zzc() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzd() {
        this.zza.zzd();
        this.zzc.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final Map zze() {
        return zzgad.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzgw
    public final void zzf(zzhy zzhyVar) {
    }
}
