package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzafk implements zzacu {
    private zzacx zzb;
    private int zzc;
    private int zzd;
    private int zze;

    @Nullable
    private zzahe zzg;
    private zzacv zzh;
    private zzafn zzi;

    @Nullable
    private zzajh zzj;
    private final zzfp zza = new zzfp(6);
    private long zzf = -1;

    private final int zza(zzacv zzacvVar) {
        this.zza.zzH(2);
        ((zzack) zzacvVar).zzm(this.zza.zzM(), 0, 2, false);
        return this.zza.zzq();
    }

    private final void zzf() {
        zzg(new zzbx[0]);
        zzacx zzacxVar = this.zzb;
        zzacxVar.getClass();
        zzacxVar.zzD();
        this.zzb.zzO(new zzadt(-9223372036854775807L, 0L));
        this.zzc = 6;
    }

    private final void zzg(zzbx... zzbxVarArr) {
        zzacx zzacxVar = this.zzb;
        zzacxVar.getClass();
        zzaea zzw = zzacxVar.zzw(1024, 4);
        zzak zzakVar = new zzak();
        zzakVar.zzB(new ObfuscatedString(new long[]{-7974920586441990450L, 6369282400150699058L, -6097684842014292236L}).toString());
        zzakVar.zzP(new zzby(-9223372036854775807L, zzbxVarArr));
        zzw.zzl(zzakVar.zzac());
    }

    /* JADX WARN: Removed duplicated region for block: B:50:0x017f  */
    @Override // com.google.android.gms.internal.ads.zzacu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(zzacv zzacvVar, zzadr zzadrVar) {
        int i;
        String zzx;
        zzafm zza;
        zzahe zzaheVar;
        long j;
        int i2 = this.zzc;
        long j2 = -1;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 4) {
                        if (i2 != 5) {
                            if (i2 == 6) {
                                return -1;
                            }
                            throw new IllegalStateException();
                        }
                        if (this.zzi == null || zzacvVar != this.zzh) {
                            this.zzh = zzacvVar;
                            this.zzi = new zzafn(zzacvVar, this.zzf);
                        }
                        zzajh zzajhVar = this.zzj;
                        zzajhVar.getClass();
                        int zzb = zzajhVar.zzb(this.zzi, zzadrVar);
                        if (zzb == 1) {
                            zzadrVar.zza += this.zzf;
                        }
                        return zzb;
                    }
                    long zzf = zzacvVar.zzf();
                    long j3 = this.zzf;
                    if (zzf == j3) {
                        if (!zzacvVar.zzm(this.zza.zzM(), 0, 1, true)) {
                            zzf();
                        } else {
                            zzacvVar.zzj();
                            if (this.zzj == null) {
                                this.zzj = new zzajh(zzakp.zza, 8);
                            }
                            zzafn zzafnVar = new zzafn(zzacvVar, this.zzf);
                            this.zzi = zzafnVar;
                            if (this.zzj.zze(zzafnVar)) {
                                zzajh zzajhVar2 = this.zzj;
                                long j4 = this.zzf;
                                zzacx zzacxVar = this.zzb;
                                zzacxVar.getClass();
                                zzajhVar2.zzc(new zzafp(j4, zzacxVar));
                                zzahe zzaheVar2 = this.zzg;
                                zzaheVar2.getClass();
                                zzg(zzaheVar2);
                                this.zzc = 5;
                            } else {
                                zzf();
                            }
                        }
                        return 0;
                    }
                    zzadrVar.zza = j3;
                    return 1;
                }
                if (this.zzd == 65505) {
                    zzfp zzfpVar = new zzfp(this.zze);
                    ((zzack) zzacvVar).zzn(zzfpVar.zzM(), 0, this.zze, false);
                    if (this.zzg == null && new ObfuscatedString(new long[]{7996771276018278L, -3383891485021916152L, -2924738972014202102L, -1222925397077240682L, 8373730987651633129L}).toString().equals(zzfpVar.zzx((char) 0)) && (zzx = zzfpVar.zzx((char) 0)) != null) {
                        long zzd = zzacvVar.zzd();
                        if (zzd != -1 && (zza = zzafq.zza(zzx)) != null && zza.zzb.size() >= 2) {
                            int size = zza.zzb.size() - 1;
                            long j5 = -1;
                            long j6 = -1;
                            long j7 = -1;
                            long j8 = -1;
                            boolean z = false;
                            while (size >= 0) {
                                zzafl zzaflVar = (zzafl) zza.zzb.get(size);
                                boolean equals = new ObfuscatedString(new long[]{-5282748654436670446L, -6625978660207101891L, 8285119356126470875L}).toString().equals(zzaflVar.zza) | z;
                                if (size == 0) {
                                    zzd -= zzaflVar.zzd;
                                    j = 0;
                                } else {
                                    j = zzd - zzaflVar.zzc;
                                }
                                long j9 = zzd;
                                zzd = j;
                                if (equals && zzd != j9) {
                                    j8 = j9 - zzd;
                                    j7 = zzd;
                                    equals = false;
                                }
                                if (size == 0) {
                                    j6 = j9;
                                }
                                if (size == 0) {
                                    j5 = zzd;
                                }
                                size--;
                                z = equals;
                                j2 = -1;
                            }
                            long j10 = j2;
                            if (j7 != j10 && j8 != j10 && j5 != j10 && j6 != j10) {
                                zzaheVar = new zzahe(j5, j6, zza.zza, j7, j8);
                                this.zzg = zzaheVar;
                                if (zzaheVar != null) {
                                    this.zzf = zzaheVar.zzd;
                                }
                            }
                        }
                        zzaheVar = null;
                        this.zzg = zzaheVar;
                        if (zzaheVar != null) {
                        }
                    }
                    i = 0;
                } else {
                    i = 0;
                    ((zzack) zzacvVar).zzo(this.zze, false);
                }
                this.zzc = i;
                return i;
            }
            this.zza.zzH(2);
            ((zzack) zzacvVar).zzn(this.zza.zzM(), 0, 2, false);
            this.zze = this.zza.zzq() - 2;
            this.zzc = 2;
            return 0;
        }
        this.zza.zzH(2);
        ((zzack) zzacvVar).zzn(this.zza.zzM(), 0, 2, false);
        int zzq = this.zza.zzq();
        this.zzd = zzq;
        if (zzq == 65498) {
            if (this.zzf != -1) {
                this.zzc = 4;
                return 0;
            }
            zzf();
            return 0;
        }
        if ((zzq >= 65488 && zzq <= 65497) || zzq == 65281) {
            return 0;
        }
        this.zzc = 1;
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzc(zzacx zzacxVar) {
        this.zzb = zzacxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzd(long j, long j2) {
        if (j == 0) {
            this.zzc = 0;
            this.zzj = null;
        } else if (this.zzc == 5) {
            zzajh zzajhVar = this.zzj;
            zzajhVar.getClass();
            zzajhVar.zzd(j, j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final boolean zze(zzacv zzacvVar) {
        if (zza(zzacvVar) != 65496) {
            return false;
        }
        int zza = zza(zzacvVar);
        this.zzd = zza;
        if (zza == 65504) {
            this.zza.zzH(2);
            zzack zzackVar = (zzack) zzacvVar;
            zzackVar.zzm(this.zza.zzM(), 0, 2, false);
            zzackVar.zzl(this.zza.zzq() - 2, false);
            zza = zza(zzacvVar);
            this.zzd = zza;
        }
        if (zza == 65505) {
            zzack zzackVar2 = (zzack) zzacvVar;
            zzackVar2.zzl(2, false);
            this.zza.zzH(6);
            zzackVar2.zzm(this.zza.zzM(), 0, 6, false);
            if (this.zza.zzu() == 1165519206 && this.zza.zzq() == 0) {
                return true;
            }
        }
        return false;
    }
}
