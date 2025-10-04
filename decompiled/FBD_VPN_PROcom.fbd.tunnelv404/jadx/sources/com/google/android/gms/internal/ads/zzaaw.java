package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.Display;
import android.view.Surface;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzaaw {
    private final zzaad zza = new zzaad();

    @Nullable
    private final zzaas zzb;

    @Nullable
    private final zzaav zzc;
    private boolean zzd;

    @Nullable
    private Surface zze;
    private float zzf;
    private float zzg;
    private float zzh;
    private float zzi;
    private int zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private long zzo;
    private long zzp;
    private long zzq;

    public zzaaw(@Nullable Context context) {
        zzaas zzaasVar;
        if (context != null) {
            Context applicationContext = context.getApplicationContext();
            int i = zzfy.zza;
            zzaasVar = zzaau.zzc(applicationContext);
            if (zzaasVar == null) {
                zzaasVar = zzaat.zzc(applicationContext);
            }
        } else {
            zzaasVar = null;
        }
        this.zzb = zzaasVar;
        this.zzc = zzaasVar != null ? zzaav.zza() : null;
        this.zzk = -9223372036854775807L;
        this.zzl = -9223372036854775807L;
        this.zzf = -1.0f;
        this.zzi = 1.0f;
        this.zzj = 0;
    }

    public static /* synthetic */ void zzb(zzaaw zzaawVar, Display display) {
        if (display != null) {
            long refreshRate = (long) (1.0E9d / display.getRefreshRate());
            zzaawVar.zzk = refreshRate;
            zzaawVar.zzl = (refreshRate * 80) / 100;
        } else {
            zzff.zzf(new ObfuscatedString(new long[]{-1187992497990759221L, -6549231050300608960L, -5486192718269332764L, 2530325085239475791L}).toString(), new ObfuscatedString(new long[]{-4575584885032326081L, -3597025934825518836L, 5875489710313122953L, 3687212127287159420L, 3219880426644542377L, 8456680594833040364L}).toString());
            zzaawVar.zzk = -9223372036854775807L;
            zzaawVar.zzl = -9223372036854775807L;
        }
    }

    private final void zzk() {
        Surface surface;
        if (zzfy.zza >= 30 && (surface = this.zze) != null && this.zzj != Integer.MIN_VALUE && this.zzh != 0.0f) {
            this.zzh = 0.0f;
            zzaar.zza(surface, 0.0f);
        }
    }

    private final void zzl() {
        this.zzm = 0L;
        this.zzp = -1L;
        this.zzn = -1L;
    }

    private final void zzm() {
        float f;
        if (zzfy.zza >= 30 && this.zze != null) {
            if (this.zza.zzg()) {
                f = this.zza.zza();
            } else {
                f = this.zzf;
            }
            float f2 = this.zzg;
            if (f != f2) {
                if (f != -1.0f && f2 != -1.0f) {
                    float f3 = 1.0f;
                    if (this.zza.zzg() && this.zza.zzd() >= 5000000000L) {
                        f3 = 0.02f;
                    }
                    if (Math.abs(f - this.zzg) < f3) {
                        return;
                    }
                } else if (f == -1.0f && this.zza.zzb() < 30) {
                    return;
                }
                this.zzg = f;
                zzn(false);
            }
        }
    }

    private final void zzn(boolean z) {
        Surface surface;
        if (zzfy.zza >= 30 && (surface = this.zze) != null && this.zzj != Integer.MIN_VALUE) {
            float f = 0.0f;
            if (this.zzd) {
                float f2 = this.zzg;
                if (f2 != -1.0f) {
                    f = this.zzi * f2;
                }
            }
            if (z || this.zzh != f) {
                this.zzh = f;
                zzaar.zza(surface, f);
            }
        }
    }

    public final long zza(long j) {
        long j2;
        if (this.zzp != -1 && this.zza.zzg()) {
            long zzc = this.zza.zzc();
            long j3 = this.zzq + (((float) ((this.zzm - this.zzp) * zzc)) / this.zzi);
            if (Math.abs(j - j3) > 20000000) {
                zzl();
            } else {
                j = j3;
            }
        }
        this.zzn = this.zzm;
        this.zzo = j;
        zzaav zzaavVar = this.zzc;
        if (zzaavVar != null && this.zzk != -9223372036854775807L) {
            long j4 = zzaavVar.zza;
            if (j4 != -9223372036854775807L) {
                long j5 = this.zzk;
                long j6 = (((j - j4) / j5) * j5) + j4;
                if (j <= j6) {
                    j2 = j6 - j5;
                } else {
                    j2 = j6;
                    j6 = j5 + j6;
                }
                long j7 = this.zzl;
                if (j6 - j >= j - j2) {
                    j6 = j2;
                }
                return j6 - j7;
            }
        }
        return j;
    }

    public final void zzc(float f) {
        this.zzf = f;
        this.zza.zzf();
        zzm();
    }

    public final void zzd(long j) {
        long j2 = this.zzn;
        if (j2 != -1) {
            this.zzp = j2;
            this.zzq = this.zzo;
        }
        this.zzm++;
        this.zza.zze(j * 1000);
        zzm();
    }

    public final void zze(float f) {
        this.zzi = f;
        zzl();
        zzn(false);
    }

    public final void zzf() {
        zzl();
    }

    public final void zzg() {
        this.zzd = true;
        zzl();
        if (this.zzb != null) {
            zzaav zzaavVar = this.zzc;
            zzaavVar.getClass();
            zzaavVar.zzb();
            this.zzb.zzb(new zzaap(this));
        }
        zzn(false);
    }

    public final void zzh() {
        this.zzd = false;
        zzaas zzaasVar = this.zzb;
        if (zzaasVar != null) {
            zzaasVar.zza();
            zzaav zzaavVar = this.zzc;
            zzaavVar.getClass();
            zzaavVar.zzc();
        }
        zzk();
    }

    public final void zzi(@Nullable Surface surface) {
        int i = zzfy.zza;
        boolean zza = zzaaq.zza(surface);
        Surface surface2 = this.zze;
        if (true == zza) {
            surface = null;
        }
        if (surface2 == surface) {
            return;
        }
        zzk();
        this.zze = surface;
        zzn(true);
    }

    public final void zzj(int i) {
        if (this.zzj == i) {
            return;
        }
        this.zzj = i;
        zzn(true);
    }
}
