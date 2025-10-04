package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
public final class zzmb {
    private final zzma zza;
    private final zzlz zzb;
    private final zzel zzc;
    private final zzcx zzd;
    private int zze;

    @Nullable
    private Object zzf;
    private final Looper zzg;
    private final int zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    public zzmb(zzlz zzlzVar, zzma zzmaVar, zzcx zzcxVar, int i, zzel zzelVar, Looper looper) {
        this.zzb = zzlzVar;
        this.zza = zzmaVar;
        this.zzd = zzcxVar;
        this.zzg = looper;
        this.zzc = zzelVar;
        this.zzh = i;
    }

    public final int zza() {
        return this.zze;
    }

    public final Looper zzb() {
        return this.zzg;
    }

    public final zzma zzc() {
        return this.zza;
    }

    public final zzmb zzd() {
        zzek.zzf(!this.zzi);
        this.zzi = true;
        this.zzb.zzm(this);
        return this;
    }

    public final zzmb zze(@Nullable Object obj) {
        zzek.zzf(!this.zzi);
        this.zzf = obj;
        return this;
    }

    public final zzmb zzf(int i) {
        zzek.zzf(!this.zzi);
        this.zze = i;
        return this;
    }

    @Nullable
    public final Object zzg() {
        return this.zzf;
    }

    public final synchronized void zzh(boolean z) {
        this.zzj = z | this.zzj;
        this.zzk = true;
        notifyAll();
    }

    public final synchronized boolean zzi(long j) {
        boolean z;
        try {
            zzek.zzf(this.zzi);
            if (this.zzg.getThread() != Thread.currentThread()) {
                z = true;
            } else {
                z = false;
            }
            zzek.zzf(z);
            long elapsedRealtime = SystemClock.elapsedRealtime() + j;
            while (!this.zzk) {
                if (j > 0) {
                    wait(j);
                    j = elapsedRealtime - SystemClock.elapsedRealtime();
                } else {
                    throw new TimeoutException(new ObfuscatedString(new long[]{-8492054629657270214L, -2132015959000994885L, -6714808398167622335L, -1068082216619972209L, -536255515373890440L}).toString());
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.zzj;
    }

    public final synchronized boolean zzj() {
        return false;
    }
}
