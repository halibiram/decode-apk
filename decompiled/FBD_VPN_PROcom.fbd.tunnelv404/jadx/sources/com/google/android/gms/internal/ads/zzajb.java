package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
final class zzajb {
    public final zzaea zza;
    public zzajp zzd;
    public zzaix zze;
    public int zzf;
    public int zzg;
    public int zzh;
    public int zzi;
    private boolean zzl;
    public final zzajo zzb = new zzajo();
    public final zzfp zzc = new zzfp();
    private final zzfp zzj = new zzfp(1);
    private final zzfp zzk = new zzfp();

    public zzajb(zzaea zzaeaVar, zzajp zzajpVar, zzaix zzaixVar) {
        this.zza = zzaeaVar;
        this.zzd = zzajpVar;
        this.zze = zzaixVar;
        zzh(zzajpVar, zzaixVar);
    }

    public final int zza() {
        int i;
        if (!this.zzl) {
            i = this.zzd.zzg[this.zzf];
        } else if (this.zzb.zzj[this.zzf]) {
            i = 1;
        } else {
            i = 0;
        }
        if (zzf() != null) {
            return i | 1073741824;
        }
        return i;
    }

    public final int zzb() {
        if (!this.zzl) {
            return this.zzd.zzd[this.zzf];
        }
        return this.zzb.zzh[this.zzf];
    }

    public final int zzc(int i, int i2) {
        zzfp zzfpVar;
        boolean z;
        int i3;
        zzajn zzf = zzf();
        if (zzf == null) {
            return 0;
        }
        int i4 = zzf.zzd;
        if (i4 != 0) {
            zzfpVar = this.zzb.zzn;
        } else {
            byte[] bArr = zzf.zze;
            int i5 = zzfy.zza;
            zzfp zzfpVar2 = this.zzk;
            int length = bArr.length;
            zzfpVar2.zzI(bArr, length);
            zzfpVar = this.zzk;
            i4 = length;
        }
        boolean zzb = this.zzb.zzb(this.zzf);
        if (zzb || i2 != 0) {
            z = true;
        } else {
            z = false;
        }
        zzfp zzfpVar3 = this.zzj;
        if (true != z) {
            i3 = 0;
        } else {
            i3 = 128;
        }
        zzfpVar3.zzM()[0] = (byte) (i3 | i4);
        zzfpVar3.zzK(0);
        this.zza.zzs(this.zzj, 1, 1);
        this.zza.zzs(zzfpVar, i4, 1);
        if (!z) {
            return i4 + 1;
        }
        if (!zzb) {
            this.zzc.zzH(8);
            zzfp zzfpVar4 = this.zzc;
            byte[] zzM = zzfpVar4.zzM();
            zzM[0] = 0;
            zzM[1] = 1;
            zzM[2] = 0;
            zzM[3] = (byte) i2;
            zzM[4] = (byte) ((i >> 24) & 255);
            zzM[5] = (byte) ((i >> 16) & 255);
            zzM[6] = (byte) ((i >> 8) & 255);
            zzM[7] = (byte) (i & 255);
            this.zza.zzs(zzfpVar4, 8, 1);
            return i4 + 9;
        }
        int i6 = i4 + 1;
        zzfp zzfpVar5 = this.zzb.zzn;
        int zzq = zzfpVar5.zzq();
        zzfpVar5.zzL(-2);
        int i7 = (zzq * 6) + 2;
        if (i2 != 0) {
            this.zzc.zzH(i7);
            byte[] zzM2 = this.zzc.zzM();
            zzfpVar5.zzG(zzM2, 0, i7);
            int i8 = (((zzM2[2] & 255) << 8) | (zzM2[3] & 255)) + i2;
            zzM2[2] = (byte) ((i8 >> 8) & 255);
            zzM2[3] = (byte) (i8 & 255);
            zzfpVar5 = this.zzc;
        }
        this.zza.zzs(zzfpVar5, i7, 1);
        return i6 + i7;
    }

    public final long zzd() {
        if (!this.zzl) {
            return this.zzd.zzc[this.zzf];
        }
        return this.zzb.zzf[this.zzh];
    }

    public final long zze() {
        if (!this.zzl) {
            return this.zzd.zzf[this.zzf];
        }
        zzajo zzajoVar = this.zzb;
        return zzajoVar.zzi[this.zzf];
    }

    @Nullable
    public final zzajn zzf() {
        if (!this.zzl) {
            return null;
        }
        zzajo zzajoVar = this.zzb;
        zzaix zzaixVar = zzajoVar.zza;
        int i = zzfy.zza;
        int i2 = zzaixVar.zza;
        zzajn zzajnVar = zzajoVar.zzm;
        if (zzajnVar == null) {
            zzajnVar = this.zzd.zza.zza(i2);
        }
        if (zzajnVar == null || !zzajnVar.zza) {
            return null;
        }
        return zzajnVar;
    }

    public final void zzh(zzajp zzajpVar, zzaix zzaixVar) {
        this.zzd = zzajpVar;
        this.zze = zzaixVar;
        this.zza.zzl(zzajpVar.zza.zzf);
        zzi();
    }

    public final void zzi() {
        zzajo zzajoVar = this.zzb;
        zzajoVar.zzd = 0;
        zzajoVar.zzp = 0L;
        zzajoVar.zzq = false;
        zzajoVar.zzk = false;
        zzajoVar.zzo = false;
        zzajoVar.zzm = null;
        this.zzf = 0;
        this.zzh = 0;
        this.zzg = 0;
        this.zzi = 0;
        this.zzl = false;
    }

    public final boolean zzk() {
        this.zzf++;
        if (!this.zzl) {
            return false;
        }
        int i = this.zzg + 1;
        this.zzg = i;
        int[] iArr = this.zzb.zzg;
        int i2 = this.zzh;
        if (i != iArr[i2]) {
            return true;
        }
        this.zzh = i2 + 1;
        this.zzg = 0;
        return false;
    }
}
