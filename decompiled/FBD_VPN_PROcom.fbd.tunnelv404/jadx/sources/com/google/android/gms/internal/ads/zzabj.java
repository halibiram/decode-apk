package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.SystemClock;
import androidx.annotation.Nullable;

/* loaded from: classes2.dex */
public final class zzabj {

    @Nullable
    private final Handler zza;

    @Nullable
    private final zzabk zzb;

    public zzabj(@Nullable Handler handler, @Nullable zzabk zzabkVar) {
        this.zza = zzabkVar == null ? null : handler;
        this.zzb = zzabkVar;
    }

    public final void zza(final String str, final long j, final long j2) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaaz
                @Override // java.lang.Runnable
                public final void run() {
                    zzabj.this.zzg(str, j, j2);
                }
            });
        }
    }

    public final void zzb(final String str) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabi
                @Override // java.lang.Runnable
                public final void run() {
                    zzabj.this.zzh(str);
                }
            });
        }
    }

    public final void zzc(final zzir zzirVar) {
        zzirVar.zza();
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabh
                @Override // java.lang.Runnable
                public final void run() {
                    zzabj.this.zzi(zzirVar);
                }
            });
        }
    }

    public final void zzd(final int i, final long j) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabb
                @Override // java.lang.Runnable
                public final void run() {
                    zzabj.this.zzj(i, j);
                }
            });
        }
    }

    public final void zze(final zzir zzirVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabf
                @Override // java.lang.Runnable
                public final void run() {
                    zzabj.this.zzk(zzirVar);
                }
            });
        }
    }

    public final void zzf(final zzam zzamVar, @Nullable final zzis zzisVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabg
                @Override // java.lang.Runnable
                public final void run() {
                    zzabj.this.zzl(zzamVar, zzisVar);
                }
            });
        }
    }

    public final /* synthetic */ void zzg(String str, long j, long j2) {
        int i = zzfy.zza;
        this.zzb.zzp(str, j, j2);
    }

    public final /* synthetic */ void zzh(String str) {
        int i = zzfy.zza;
        this.zzb.zzq(str);
    }

    public final /* synthetic */ void zzi(zzir zzirVar) {
        zzirVar.zza();
        int i = zzfy.zza;
        this.zzb.zzr(zzirVar);
    }

    public final /* synthetic */ void zzj(int i, long j) {
        int i2 = zzfy.zza;
        this.zzb.zzl(i, j);
    }

    public final /* synthetic */ void zzk(zzir zzirVar) {
        int i = zzfy.zza;
        this.zzb.zzs(zzirVar);
    }

    public final /* synthetic */ void zzl(zzam zzamVar, zzis zzisVar) {
        int i = zzfy.zza;
        this.zzb.zzu(zzamVar, zzisVar);
    }

    public final /* synthetic */ void zzm(Object obj, long j) {
        int i = zzfy.zza;
        this.zzb.zzm(obj, j);
    }

    public final /* synthetic */ void zzn(long j, int i) {
        int i2 = zzfy.zza;
        this.zzb.zzt(j, i);
    }

    public final /* synthetic */ void zzo(Exception exc) {
        int i = zzfy.zza;
        this.zzb.zzo(exc);
    }

    public final /* synthetic */ void zzp(zzdp zzdpVar) {
        int i = zzfy.zza;
        this.zzb.zzv(zzdpVar);
    }

    public final void zzq(final Object obj) {
        Handler handler = this.zza;
        if (handler != null) {
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabc
                @Override // java.lang.Runnable
                public final void run() {
                    zzabj.this.zzm(obj, elapsedRealtime);
                }
            });
        }
    }

    public final void zzr(final long j, final int i) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabd
                @Override // java.lang.Runnable
                public final void run() {
                    zzabj.this.zzn(j, i);
                }
            });
        }
    }

    public final void zzs(final Exception exc) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabe
                @Override // java.lang.Runnable
                public final void run() {
                    zzabj.this.zzo(exc);
                }
            });
        }
    }

    public final void zzt(final zzdp zzdpVar) {
        Handler handler = this.zza;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaba
                @Override // java.lang.Runnable
                public final void run() {
                    zzabj.this.zzp(zzdpVar);
                }
            });
        }
    }
}
