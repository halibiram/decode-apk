package com.google.android.gms.internal.ads;

import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class zzake {
    private zzaea zzb;
    private zzacx zzc;
    private zzajz zzd;
    private long zze;
    private long zzf;
    private long zzg;
    private int zzh;
    private int zzi;
    private long zzk;
    private boolean zzl;
    private boolean zzm;
    private final zzajx zza = new zzajx();
    private zzakb zzj = new zzakb();

    public abstract long zza(zzfp zzfpVar);

    public void zzb(boolean z) {
        int i;
        if (z) {
            this.zzj = new zzakb();
            this.zzf = 0L;
            i = 0;
        } else {
            i = 1;
        }
        this.zzh = i;
        this.zze = -1L;
        this.zzg = 0L;
    }

    @EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public abstract boolean zzc(zzfp zzfpVar, long j, zzakb zzakbVar);

    public final int zze(zzacv zzacvVar, zzadr zzadrVar) {
        boolean z;
        zzek.zzb(this.zzb);
        int i = zzfy.zza;
        int i2 = this.zzh;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    return -1;
                }
                long zzd = this.zzd.zzd(zzacvVar);
                if (zzd >= 0) {
                    zzadrVar.zza = zzd;
                    return 1;
                }
                if (zzd < -1) {
                    zzi(-(zzd + 2));
                }
                if (!this.zzl) {
                    zzadu zze = this.zzd.zze();
                    zzek.zzb(zze);
                    this.zzc.zzO(zze);
                    this.zzl = true;
                }
                if (this.zzk <= 0 && !this.zza.zze(zzacvVar)) {
                    this.zzh = 3;
                    return -1;
                }
                this.zzk = 0L;
                zzfp zza = this.zza.zza();
                long zza2 = zza(zza);
                if (zza2 >= 0) {
                    long j = this.zzg;
                    if (j + zza2 >= this.zze) {
                        long zzf = zzf(j);
                        zzady.zzb(this.zzb, zza, zza.zze());
                        this.zzb.zzt(zzf, 1, zza.zze(), 0, null);
                        this.zze = -1L;
                    }
                }
                this.zzg += zza2;
            } else {
                ((zzack) zzacvVar).zzo((int) this.zzf, false);
                this.zzh = 2;
                return 0;
            }
        } else {
            while (this.zza.zze(zzacvVar)) {
                long zzf2 = zzacvVar.zzf();
                long j2 = this.zzf;
                this.zzk = zzf2 - j2;
                if (zzc(this.zza.zza(), j2, this.zzj)) {
                    this.zzf = zzacvVar.zzf();
                } else {
                    zzam zzamVar = this.zzj.zza;
                    this.zzi = zzamVar.zzA;
                    if (!this.zzm) {
                        this.zzb.zzl(zzamVar);
                        this.zzm = true;
                    }
                    zzajz zzajzVar = this.zzj.zzb;
                    if (zzajzVar != null) {
                        this.zzd = zzajzVar;
                    } else if (zzacvVar.zzd() == -1) {
                        this.zzd = new zzakd(null);
                    } else {
                        zzajy zzb = this.zza.zzb();
                        if ((zzb.zza & 4) != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        this.zzd = new zzajs(this, this.zzf, zzacvVar.zzd(), zzb.zzd + zzb.zze, zzb.zzb, z);
                    }
                    this.zzh = 2;
                    this.zza.zzd();
                }
            }
            this.zzh = 3;
            return -1;
        }
        return 0;
    }

    public final long zzf(long j) {
        return (j * 1000000) / this.zzi;
    }

    public final long zzg(long j) {
        return (this.zzi * j) / 1000000;
    }

    public final void zzh(zzacx zzacxVar, zzaea zzaeaVar) {
        this.zzc = zzacxVar;
        this.zzb = zzaeaVar;
        zzb(true);
    }

    public void zzi(long j) {
        this.zzg = j;
    }

    public final void zzj(long j, long j2) {
        this.zza.zzc();
        if (j == 0) {
            zzb(!this.zzl);
            return;
        }
        if (this.zzh != 0) {
            long zzg = zzg(j2);
            this.zze = zzg;
            zzajz zzajzVar = this.zzd;
            int i = zzfy.zza;
            zzajzVar.zzg(zzg);
            this.zzh = 2;
        }
    }
}
