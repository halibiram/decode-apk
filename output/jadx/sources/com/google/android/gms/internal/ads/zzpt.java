package com.google.android.gms.internal.ads;

import android.os.Handler;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzpt {

    @Nullable
    private final Handler zza;

    @Nullable
    private final zzpu zzb;

    public zzpt(@Nullable Handler handler, @Nullable zzpu zzpuVar) {
        this.zza = zzpuVar == null ? null : handler;
        this.zzb = zzpuVar;
    }

    public final void zza(final Exception exc) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpn
                @Override // java.lang.Runnable
                public final void run() {
                    zzpt.this.zzj(exc);
                }
            });
        }
    }

    public final void zzb(final Exception exc) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpo
                @Override // java.lang.Runnable
                public final void run() {
                    zzpt.this.zzk(exc);
                }
            });
        }
    }

    public final void zzc(final zzpv zzpvVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpl
                @Override // java.lang.Runnable
                public final void run() {
                    zzpt.this.zzl(zzpvVar);
                }
            });
        }
    }

    public final void zzd(final zzpv zzpvVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpm
                @Override // java.lang.Runnable
                public final void run() {
                    zzpt.this.zzm(zzpvVar);
                }
            });
        }
    }

    public final void zze(final String str, final long j, final long j2) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpr
                @Override // java.lang.Runnable
                public final void run() {
                    zzpt.this.zzn(str, j, j2);
                }
            });
        }
    }

    public final void zzf(final String str) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzps
                @Override // java.lang.Runnable
                public final void run() {
                    zzpt.this.zzo(str);
                }
            });
        }
    }

    public final void zzg(final zzir zzirVar) {
        zzirVar.zza();
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpi
                @Override // java.lang.Runnable
                public final void run() {
                    zzpt.this.zzp(zzirVar);
                }
            });
        }
    }

    public final void zzh(final zzir zzirVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzph
                @Override // java.lang.Runnable
                public final void run() {
                    zzpt.this.zzq(zzirVar);
                }
            });
        }
    }

    public final void zzi(final zzam zzamVar, @Nullable final zzis zzisVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpp
                @Override // java.lang.Runnable
                public final void run() {
                    zzpt.this.zzr(zzamVar, zzisVar);
                }
            });
        }
    }

    public final /* synthetic */ void zzj(Exception exc) {
        int i = zzfy.zza;
        this.zzb.zza(exc);
    }

    public final /* synthetic */ void zzk(Exception exc) {
        int i = zzfy.zza;
        this.zzb.zzh(exc);
    }

    public final /* synthetic */ void zzl(zzpv zzpvVar) {
        int i = zzfy.zza;
        this.zzb.zzi(zzpvVar);
    }

    public final /* synthetic */ void zzm(zzpv zzpvVar) {
        int i = zzfy.zza;
        this.zzb.zzj(zzpvVar);
    }

    public final /* synthetic */ void zzn(String str, long j, long j2) {
        int i = zzfy.zza;
        this.zzb.zzb(str, j, j2);
    }

    public final /* synthetic */ void zzo(String str) {
        int i = zzfy.zza;
        this.zzb.zzc(str);
    }

    public final /* synthetic */ void zzp(zzir zzirVar) {
        zzirVar.zza();
        int i = zzfy.zza;
        this.zzb.zzd(zzirVar);
    }

    public final /* synthetic */ void zzq(zzir zzirVar) {
        int i = zzfy.zza;
        this.zzb.zze(zzirVar);
    }

    public final /* synthetic */ void zzr(zzam zzamVar, zzis zzisVar) {
        int i = zzfy.zza;
        this.zzb.zzf(zzamVar, zzisVar);
    }

    public final /* synthetic */ void zzs(long j) {
        int i = zzfy.zza;
        this.zzb.zzg(j);
    }

    public final /* synthetic */ void zzt(boolean z) {
        int i = zzfy.zza;
        this.zzb.zzn(z);
    }

    public final /* synthetic */ void zzu(int i, long j, long j2) {
        int i2 = zzfy.zza;
        this.zzb.zzk(i, j, j2);
    }

    public final void zzv(final long j) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpj
                @Override // java.lang.Runnable
                public final void run() {
                    zzpt.this.zzs(j);
                }
            });
        }
    }

    public final void zzw(final boolean z) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpq
                @Override // java.lang.Runnable
                public final void run() {
                    zzpt.this.zzt(z);
                }
            });
        }
    }

    public final void zzx(final int i, final long j, final long j2) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzpk
                @Override // java.lang.Runnable
                public final void run() {
                    zzpt.this.zzu(i, j, j2);
                }
            });
        }
    }
}
