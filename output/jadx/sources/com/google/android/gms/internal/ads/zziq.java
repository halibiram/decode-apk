package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public abstract class zziq implements zzmf, zzmh {
    private final int zzb;

    @Nullable
    private zzmi zzd;
    private int zze;
    private zzpb zzf;
    private zzel zzg;
    private int zzh;

    @Nullable
    private zzwh zzi;

    @Nullable
    private zzam[] zzj;
    private long zzk;
    private long zzl;
    private boolean zzn;
    private boolean zzo;

    @Nullable
    @GuardedBy("lock")
    private zzmg zzq;
    private final Object zza = new Object();
    private final zzlb zzc = new zzlb();
    private long zzm = Long.MIN_VALUE;
    private zzcx zzp = zzcx.zza;

    public zziq(int i) {
        this.zzb = i;
    }

    private final void zzY(long j, boolean z) {
        this.zzn = false;
        this.zzl = j;
        this.zzm = j;
        zzz(j, z);
    }

    public void zzA() {
    }

    public void zzB() {
    }

    public void zzC() {
    }

    public void zzD() {
    }

    public void zzE(zzam[] zzamVarArr, long j, long j2, zzur zzurVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public final void zzF() {
        boolean z;
        if (this.zzh == 0) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzf(z);
        zzA();
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public final void zzG(zzam[] zzamVarArr, zzwh zzwhVar, long j, long j2, zzur zzurVar) {
        zzek.zzf(!this.zzn);
        this.zzi = zzwhVar;
        if (this.zzm == Long.MIN_VALUE) {
            this.zzm = j;
        }
        this.zzj = zzamVarArr;
        this.zzk = j2;
        zzE(zzamVarArr, j, j2, zzurVar);
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public final void zzH() {
        boolean z;
        if (this.zzh == 0) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzf(z);
        zzlb zzlbVar = this.zzc;
        zzlbVar.zzb = null;
        zzlbVar.zza = null;
        zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public final void zzI(long j) {
        zzY(j, false);
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public final void zzJ() {
        this.zzn = true;
    }

    @Override // com.google.android.gms.internal.ads.zzmh
    public final void zzK(zzmg zzmgVar) {
        synchronized (this.zza) {
            this.zzq = zzmgVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public /* synthetic */ void zzL(float f, float f2) {
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public final void zzM(zzcx zzcxVar) {
        if (!zzfy.zzF(this.zzp, zzcxVar)) {
            this.zzp = zzcxVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public final void zzN() {
        boolean z = true;
        if (this.zzh != 1) {
            z = false;
        }
        zzek.zzf(z);
        this.zzh = 2;
        zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public final void zzO() {
        boolean z;
        if (this.zzh == 2) {
            z = true;
        } else {
            z = false;
        }
        zzek.zzf(z);
        this.zzh = 1;
        zzD();
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public final boolean zzP() {
        return this.zzm == Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public final boolean zzQ() {
        return this.zzn;
    }

    public final boolean zzR() {
        if (zzP()) {
            return this.zzn;
        }
        zzwh zzwhVar = this.zzi;
        zzwhVar.getClass();
        return zzwhVar.zze();
    }

    public final zzam[] zzS() {
        zzam[] zzamVarArr = this.zzj;
        zzamVarArr.getClass();
        return zzamVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public final int zzbf() {
        return this.zzh;
    }

    public final int zzbg(zzlb zzlbVar, zzih zzihVar, int i) {
        zzwh zzwhVar = this.zzi;
        zzwhVar.getClass();
        int zza = zzwhVar.zza(zzlbVar, zzihVar, i);
        if (zza == -4) {
            if (zzihVar.zzf()) {
                this.zzm = Long.MIN_VALUE;
                if (this.zzn) {
                    return -4;
                }
                return -3;
            }
            long j = zzihVar.zze + this.zzk;
            zzihVar.zze = j;
            this.zzm = Math.max(this.zzm, j);
        } else if (zza == -5) {
            zzam zzamVar = zzlbVar.zza;
            zzamVar.getClass();
            long j2 = zzamVar.zzq;
            if (j2 != Long.MAX_VALUE) {
                zzak zzb = zzamVar.zzb();
                zzb.zzaa(j2 + this.zzk);
                zzlbVar.zza = zzb.zzac();
                return -5;
            }
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public final long zzbh() {
        return this.zzm;
    }

    public final zzlb zzbi() {
        zzlb zzlbVar = this.zzc;
        zzlbVar.zzb = null;
        zzlbVar.zza = null;
        return zzlbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzmf, com.google.android.gms.internal.ads.zzmh
    public final int zzbj() {
        return this.zzb;
    }

    public final int zzd(long j) {
        zzwh zzwhVar = this.zzi;
        zzwhVar.getClass();
        return zzwhVar.zzb(j - this.zzk);
    }

    @Override // com.google.android.gms.internal.ads.zzmh
    public int zze() {
        return 0;
    }

    public final long zzf() {
        return this.zzl;
    }

    public final zzel zzh() {
        zzel zzelVar = this.zzg;
        zzelVar.getClass();
        return zzelVar;
    }

    public final zziz zzi(Throwable th, @Nullable zzam zzamVar, boolean z, int i) {
        int i2;
        if (zzamVar != null && !this.zzo) {
            this.zzo = true;
            try {
                int zzX = zzX(zzamVar) & 7;
                this.zzo = false;
                i2 = zzX;
            } catch (zziz unused) {
                this.zzo = false;
            } catch (Throwable th2) {
                this.zzo = false;
                throw th2;
            }
            return zziz.zzb(th, zzT(), this.zze, zzamVar, i2, z, i);
        }
        i2 = 4;
        return zziz.zzb(th, zzT(), this.zze, zzamVar, i2, z, i);
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    @Nullable
    public zzlh zzk() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public final zzmh zzl() {
        return this;
    }

    public final zzmi zzm() {
        zzmi zzmiVar = this.zzd;
        zzmiVar.getClass();
        return zzmiVar;
    }

    public final zzpb zzn() {
        zzpb zzpbVar = this.zzf;
        zzpbVar.getClass();
        return zzpbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    @Nullable
    public final zzwh zzo() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzmh
    public final void zzp() {
        synchronized (this.zza) {
            this.zzq = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public final void zzq() {
        boolean z = true;
        if (this.zzh != 1) {
            z = false;
        }
        zzek.zzf(z);
        zzlb zzlbVar = this.zzc;
        zzlbVar.zzb = null;
        zzlbVar.zza = null;
        this.zzh = 0;
        this.zzi = null;
        this.zzj = null;
        this.zzn = false;
        zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public final void zzr(zzmi zzmiVar, zzam[] zzamVarArr, zzwh zzwhVar, long j, boolean z, boolean z2, long j2, long j3, zzur zzurVar) {
        boolean z3;
        if (this.zzh == 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        zzek.zzf(z3);
        this.zzd = zzmiVar;
        this.zzh = 1;
        zzx(z, z2);
        zzG(zzamVarArr, zzwhVar, j2, j3, zzurVar);
        zzY(j2, z);
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public /* synthetic */ void zzs() {
    }

    @Override // com.google.android.gms.internal.ads.zzma
    public void zzt(int i, @Nullable Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public final void zzu(int i, zzpb zzpbVar, zzel zzelVar) {
        this.zze = i;
        this.zzf = zzpbVar;
        this.zzg = zzelVar;
        zzy();
    }

    @Override // com.google.android.gms.internal.ads.zzmf
    public final void zzv() {
        zzwh zzwhVar = this.zzi;
        zzwhVar.getClass();
        zzwhVar.zzd();
    }

    public void zzw() {
        throw null;
    }

    public void zzx(boolean z, boolean z2) {
    }

    public void zzy() {
    }

    public void zzz(long j, boolean z) {
        throw null;
    }
}
