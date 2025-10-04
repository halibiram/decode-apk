package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.os.SystemClock;
import androidx.annotation.Nullable;
import com.panda912.muddy.ObfuscatedString;
import java.io.IOException;
import java.util.concurrent.ExecutorService;

/* loaded from: classes2.dex */
public final class zzzk {
    public static final zzze zza = new zzze(0, -9223372036854775807L, null);
    public static final zzze zzb = new zzze(1, -9223372036854775807L, null);
    public static final zzze zzc = new zzze(2, -9223372036854775807L, null);
    public static final zzze zzd = new zzze(3, -9223372036854775807L, null);
    private final ExecutorService zze = zzfy.zzD(new ObfuscatedString(new long[]{2025420470722994098L, -6132085813735926520L, 5891936163694488879L, -3475340502214537973L, -3838992148924481607L, -3825893659392593737L}).toString());

    @Nullable
    private zzzf zzf;

    @Nullable
    private IOException zzg;

    public zzzk(String str) {
    }

    public static zzze zzb(boolean z, long j) {
        return new zzze(z ? 1 : 0, j, null);
    }

    public final long zza(zzzg zzzgVar, zzzc zzzcVar, int i) {
        Looper myLooper = Looper.myLooper();
        zzek.zzb(myLooper);
        this.zzg = null;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        new zzzf(this, myLooper, zzzgVar, zzzcVar, i, elapsedRealtime).zzc(0L);
        return elapsedRealtime;
    }

    public final void zzg() {
        zzzf zzzfVar = this.zzf;
        zzek.zzb(zzzfVar);
        zzzfVar.zza(false);
    }

    public final void zzh() {
        this.zzg = null;
    }

    public final void zzi(int i) {
        IOException iOException = this.zzg;
        if (iOException == null) {
            zzzf zzzfVar = this.zzf;
            if (zzzfVar != null) {
                zzzfVar.zzb(i);
                return;
            }
            return;
        }
        throw iOException;
    }

    public final void zzj(@Nullable zzzh zzzhVar) {
        zzzf zzzfVar = this.zzf;
        if (zzzfVar != null) {
            zzzfVar.zza(true);
        }
        this.zze.execute(new zzzi(zzzhVar));
        this.zze.shutdown();
    }

    public final boolean zzk() {
        return this.zzg != null;
    }

    public final boolean zzl() {
        return this.zzf != null;
    }
}
