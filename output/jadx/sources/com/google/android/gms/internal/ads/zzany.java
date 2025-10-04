package com.google.android.gms.internal.ads;

import androidx.core.view.InputDeviceCompat;

/* loaded from: classes2.dex */
public final class zzany implements zzaol {
    private final zzanx zza;
    private final zzfp zzb = new zzfp(32);
    private int zzc;
    private int zzd;
    private boolean zze;
    private boolean zzf;

    public zzany(zzanx zzanxVar) {
        this.zza = zzanxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaol
    public final void zza(zzfp zzfpVar, int i) {
        int i2;
        boolean z;
        int i3 = i & 1;
        if (i3 != 0) {
            i2 = zzfpVar.zzd() + zzfpVar.zzm();
        } else {
            i2 = -1;
        }
        if (this.zzf) {
            if (i3 != 0) {
                this.zzf = false;
                zzfpVar.zzK(i2);
                this.zzd = 0;
            } else {
                return;
            }
        }
        while (zzfpVar.zzb() > 0) {
            int i4 = this.zzd;
            if (i4 < 3) {
                if (i4 == 0) {
                    int zzm = zzfpVar.zzm();
                    zzfpVar.zzK(zzfpVar.zzd() - 1);
                    if (zzm == 255) {
                        this.zzf = true;
                        return;
                    }
                }
                int min = Math.min(zzfpVar.zzb(), 3 - this.zzd);
                zzfpVar.zzG(this.zzb.zzM(), this.zzd, min);
                int i5 = this.zzd + min;
                this.zzd = i5;
                if (i5 == 3) {
                    this.zzb.zzK(0);
                    this.zzb.zzJ(3);
                    this.zzb.zzL(1);
                    zzfp zzfpVar2 = this.zzb;
                    int zzm2 = zzfpVar2.zzm();
                    if ((zzm2 & 128) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    int zzm3 = zzfpVar2.zzm();
                    this.zze = z;
                    this.zzc = (zzm3 | ((zzm2 & 15) << 8)) + 3;
                    int zzc = this.zzb.zzc();
                    int i6 = this.zzc;
                    if (zzc < i6) {
                        int zzc2 = this.zzb.zzc();
                        this.zzb.zzE(Math.min(InputDeviceCompat.SOURCE_TOUCHSCREEN, Math.max(i6, zzc2 + zzc2)));
                    }
                }
            } else {
                int min2 = Math.min(zzfpVar.zzb(), this.zzc - i4);
                zzfpVar.zzG(this.zzb.zzM(), this.zzd, min2);
                int i7 = this.zzd + min2;
                this.zzd = i7;
                int i8 = this.zzc;
                if (i7 != i8) {
                    continue;
                } else {
                    if (this.zze) {
                        if (zzfy.zzd(this.zzb.zzM(), 0, i8, -1) == 0) {
                            this.zzb.zzJ(this.zzc - 4);
                        } else {
                            this.zzf = true;
                            return;
                        }
                    } else {
                        this.zzb.zzJ(i8);
                    }
                    this.zzb.zzK(0);
                    this.zza.zza(this.zzb);
                    this.zzd = 0;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaol
    public final void zzb(zzfw zzfwVar, zzacx zzacxVar, zzaok zzaokVar) {
        this.zza.zzb(zzfwVar, zzacxVar, zzaokVar);
        this.zzf = true;
    }

    @Override // com.google.android.gms.internal.ads.zzaol
    public final void zzc() {
        this.zzf = true;
    }
}
