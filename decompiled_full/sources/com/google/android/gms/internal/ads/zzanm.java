package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzanm implements zzamy {
    private final zzfp zza;
    private final zzado zzb;

    @Nullable
    private final String zzc;
    private zzaea zzd;
    private String zze;
    private int zzf;
    private int zzg;
    private boolean zzh;
    private boolean zzi;
    private long zzj;
    private int zzk;
    private long zzl;

    public zzanm() {
        this(null);
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zza(zzfp zzfpVar) {
        boolean z;
        boolean z2;
        zzek.zzb(this.zzd);
        while (zzfpVar.zzb() > 0) {
            int i = this.zzf;
            boolean z3 = true;
            if (i != 0) {
                if (i != 1) {
                    int min = Math.min(zzfpVar.zzb(), this.zzk - this.zzg);
                    this.zzd.zzr(zzfpVar, min);
                    int i2 = this.zzg + min;
                    this.zzg = i2;
                    if (i2 >= this.zzk) {
                        if (this.zzl == -9223372036854775807L) {
                            z3 = false;
                        }
                        zzek.zzf(z3);
                        this.zzd.zzt(this.zzl, 1, this.zzk, 0, null);
                        this.zzl += this.zzj;
                        this.zzg = 0;
                        this.zzf = 0;
                    }
                } else {
                    int min2 = Math.min(zzfpVar.zzb(), 4 - this.zzg);
                    zzfpVar.zzG(this.zza.zzM(), this.zzg, min2);
                    int i3 = this.zzg + min2;
                    this.zzg = i3;
                    if (i3 >= 4) {
                        this.zza.zzK(0);
                        if (!this.zzb.zza(this.zza.zzg())) {
                            this.zzg = 0;
                            this.zzf = 1;
                        } else {
                            this.zzk = this.zzb.zzc;
                            if (!this.zzh) {
                                this.zzj = (r0.zzg * 1000000) / r0.zzd;
                                zzak zzakVar = new zzak();
                                zzakVar.zzK(this.zze);
                                zzakVar.zzW(this.zzb.zzb);
                                zzakVar.zzO(4096);
                                zzakVar.zzy(this.zzb.zze);
                                zzakVar.zzX(this.zzb.zzd);
                                zzakVar.zzN(this.zzc);
                                this.zzd.zzl(zzakVar.zzac());
                                this.zzh = true;
                            }
                            this.zza.zzK(0);
                            this.zzd.zzr(this.zza, 4);
                            this.zzf = 2;
                        }
                    }
                }
            } else {
                byte[] zzM = zzfpVar.zzM();
                int zzd = zzfpVar.zzd();
                int zze = zzfpVar.zze();
                while (true) {
                    if (zzd < zze) {
                        int i4 = zzd + 1;
                        byte b = zzM[zzd];
                        if ((b & 255) == 255) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (this.zzi && (b & 224) == 224) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        this.zzi = z;
                        if (z2) {
                            zzfpVar.zzK(i4);
                            this.zzi = false;
                            this.zza.zzM()[1] = zzM[zzd];
                            this.zzg = 2;
                            this.zzf = 1;
                            break;
                        }
                        zzd = i4;
                    } else {
                        zzfpVar.zzK(zze);
                        break;
                    }
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzb(zzacx zzacxVar, zzaok zzaokVar) {
        zzaokVar.zzc();
        this.zze = zzaokVar.zzb();
        this.zzd = zzacxVar.zzw(zzaokVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zzd(long j, int i) {
        this.zzl = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamy
    public final void zze() {
        this.zzf = 0;
        this.zzg = 0;
        this.zzi = false;
        this.zzl = -9223372036854775807L;
    }

    public zzanm(@Nullable String str) {
        this.zzf = 0;
        zzfp zzfpVar = new zzfp(4);
        this.zza = zzfpVar;
        zzfpVar.zzM()[0] = -1;
        this.zzb = new zzado();
        this.zzl = -9223372036854775807L;
        this.zzc = str;
    }
}
