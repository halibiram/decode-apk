package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.util.Map;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* loaded from: classes2.dex */
public final class zzafd implements zzacu {
    public static final zzadb zza = new zzadb() { // from class: com.google.android.gms.internal.ads.zzafc
        @Override // com.google.android.gms.internal.ads.zzadb
        public final /* synthetic */ zzacu[] zza(Uri uri, Map map) {
            int i = zzada.zza;
            return new zzacu[]{new zzafd()};
        }
    };
    private zzacx zzg;
    private boolean zzi;
    private long zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private long zzn;
    private boolean zzo;
    private zzafb zzp;
    private zzafh zzq;
    private final zzfp zzb = new zzfp(4);
    private final zzfp zzc = new zzfp(9);
    private final zzfp zzd = new zzfp(11);
    private final zzfp zze = new zzfp();
    private final zzafe zzf = new zzafe();
    private int zzh = 1;

    private final zzfp zza(zzacv zzacvVar) {
        if (this.zzm > this.zze.zzc()) {
            zzfp zzfpVar = this.zze;
            int zzc = zzfpVar.zzc();
            zzfpVar.zzI(new byte[Math.max(zzc + zzc, this.zzm)], 0);
        } else {
            this.zze.zzK(0);
        }
        this.zze.zzJ(this.zzm);
        ((zzack) zzacvVar).zzn(this.zze.zzM(), 0, this.zzm, false);
        return this.zze;
    }

    @RequiresNonNull({"extractorOutput"})
    private final void zzf() {
        if (!this.zzo) {
            this.zzg.zzO(new zzadt(-9223372036854775807L, 0L));
            this.zzo = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00b8  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00c2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0009 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzacu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int zzb(zzacv zzacvVar, zzadr zzadrVar) {
        long j;
        boolean zzf;
        boolean z;
        long j2;
        zzek.zzb(this.zzg);
        while (true) {
            int i = this.zzh;
            int i2 = 8;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4) {
                            if (this.zzi) {
                                j = this.zzj + this.zzn;
                            } else if (this.zzf.zzc() == -9223372036854775807L) {
                                j = 0;
                            } else {
                                j = this.zzn;
                            }
                            int i3 = this.zzl;
                            if (i3 == 8) {
                                if (this.zzp != null) {
                                    zzf();
                                    zzf = this.zzp.zzf(zza(zzacvVar), j);
                                    z = true;
                                    if (!this.zzi && zzf) {
                                        this.zzi = true;
                                        if (this.zzf.zzc() != -9223372036854775807L) {
                                            j2 = -this.zzn;
                                        } else {
                                            j2 = 0;
                                        }
                                        this.zzj = j2;
                                    }
                                    this.zzk = 4;
                                    this.zzh = 2;
                                    if (!z) {
                                        return 0;
                                    }
                                }
                            } else {
                                i2 = i3;
                            }
                            if (i2 == 9) {
                                if (this.zzq != null) {
                                    zzf();
                                    zzf = this.zzq.zzf(zza(zzacvVar), j);
                                    z = true;
                                }
                                ((zzack) zzacvVar).zzo(this.zzm, false);
                                zzf = false;
                                z = false;
                            } else {
                                if (i2 == 18 && !this.zzo) {
                                    zzf = this.zzf.zzf(zza(zzacvVar), j);
                                    zzafe zzafeVar = this.zzf;
                                    long zzc = zzafeVar.zzc();
                                    if (zzc != -9223372036854775807L) {
                                        this.zzg.zzO(new zzadn(zzafeVar.zzd(), zzafeVar.zze(), zzc));
                                        this.zzo = true;
                                    }
                                    z = true;
                                }
                                ((zzack) zzacvVar).zzo(this.zzm, false);
                                zzf = false;
                                z = false;
                            }
                            if (!this.zzi) {
                                this.zzi = true;
                                if (this.zzf.zzc() != -9223372036854775807L) {
                                }
                                this.zzj = j2;
                            }
                            this.zzk = 4;
                            this.zzh = 2;
                            if (!z) {
                            }
                        } else {
                            throw new IllegalStateException();
                        }
                    } else {
                        if (!zzacvVar.zzn(this.zzd.zzM(), 0, 11, true)) {
                            return -1;
                        }
                        this.zzd.zzK(0);
                        this.zzl = this.zzd.zzm();
                        this.zzm = this.zzd.zzo();
                        this.zzn = this.zzd.zzo();
                        this.zzn = (this.zzn | (this.zzd.zzm() << 24)) * 1000;
                        this.zzd.zzL(3);
                        this.zzh = 4;
                    }
                } else {
                    ((zzack) zzacvVar).zzo(this.zzk, false);
                    this.zzk = 0;
                    this.zzh = 3;
                }
            } else {
                if (!zzacvVar.zzn(this.zzc.zzM(), 0, 9, true)) {
                    return -1;
                }
                this.zzc.zzK(0);
                this.zzc.zzL(4);
                int zzm = this.zzc.zzm();
                int i4 = zzm & 4;
                int i5 = zzm & 1;
                if (i4 != 0 && this.zzp == null) {
                    this.zzp = new zzafb(this.zzg.zzw(8, 1));
                }
                if (i5 != 0 && this.zzq == null) {
                    this.zzq = new zzafh(this.zzg.zzw(9, 2));
                }
                this.zzg.zzD();
                this.zzk = this.zzc.zzg() - 5;
                this.zzh = 2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzc(zzacx zzacxVar) {
        this.zzg = zzacxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final void zzd(long j, long j2) {
        if (j == 0) {
            this.zzh = 1;
            this.zzi = false;
        } else {
            this.zzh = 3;
        }
        this.zzk = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzacu
    public final boolean zze(zzacv zzacvVar) {
        zzack zzackVar = (zzack) zzacvVar;
        zzackVar.zzm(this.zzb.zzM(), 0, 3, false);
        this.zzb.zzK(0);
        if (this.zzb.zzo() != 4607062) {
            return false;
        }
        zzackVar.zzm(this.zzb.zzM(), 0, 2, false);
        this.zzb.zzK(0);
        if ((this.zzb.zzq() & 250) != 0) {
            return false;
        }
        zzackVar.zzm(this.zzb.zzM(), 0, 4, false);
        this.zzb.zzK(0);
        int zzg = this.zzb.zzg();
        zzacvVar.zzj();
        zzack zzackVar2 = (zzack) zzacvVar;
        zzackVar2.zzl(zzg, false);
        zzackVar2.zzm(this.zzb.zzM(), 0, 4, false);
        this.zzb.zzK(0);
        if (this.zzb.zzg() != 0) {
            return false;
        }
        return true;
    }
}
