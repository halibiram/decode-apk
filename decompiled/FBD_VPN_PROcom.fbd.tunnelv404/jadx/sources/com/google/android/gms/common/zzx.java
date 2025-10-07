package com.google.android.gms.common;

import android.util.Log;
import androidx.annotation.NonNull;
import com.google.errorprone.annotations.CheckReturnValue;
import com.panda912.muddy.ObfuscatedString;
import javax.annotation.Nullable;

/* JADX INFO: Access modifiers changed from: package-private */
@CheckReturnValue
/* loaded from: classes2.dex */
public class zzx {
    private static final zzx zze = new zzx(true, 3, 1, null, null);
    final boolean zza;

    @Nullable
    final String zzb;

    @Nullable
    final Throwable zzc;
    final int zzd;

    private zzx(boolean z, int i, int i2, @Nullable String str, @Nullable Throwable th) {
        this.zza = z;
        this.zzd = i;
        this.zzb = str;
        this.zzc = th;
    }

    @Deprecated
    public static zzx zzb() {
        return zze;
    }

    public static zzx zzc(@NonNull String str) {
        return new zzx(false, 1, 5, str, null);
    }

    public static zzx zzd(@NonNull String str, @NonNull Throwable th) {
        return new zzx(false, 1, 5, str, th);
    }

    public static zzx zzf(int i) {
        return new zzx(true, i, 1, null, null);
    }

    public static zzx zzg(int i, int i2, @NonNull String str, @Nullable Throwable th) {
        return new zzx(false, i, i2, str, th);
    }

    @Nullable
    public String zza() {
        return this.zzb;
    }

    public final void zze() {
        if (!this.zza && Log.isLoggable(new ObfuscatedString(new long[]{-5705063564367610320L, -7898469378564687767L, 2011642960054235391L, 5299181583618535965L}).toString(), 3)) {
            if (this.zzc != null) {
                zza();
                new ObfuscatedString(new long[]{7410412826549000527L, -5616134878431545577L, 7966034130041992467L, -4017435764430227122L}).toString();
            } else {
                zza();
                new ObfuscatedString(new long[]{1081363620158565354L, -520483702220422699L, -4754722893515959676L, 3992005491076259354L}).toString();
            }
        }
    }
}
