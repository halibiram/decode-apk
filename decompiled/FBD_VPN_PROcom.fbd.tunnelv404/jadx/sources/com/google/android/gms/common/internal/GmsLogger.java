package com.google.android.gms.common.internal;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.errorprone.annotations.FormatMethod;
import com.google.errorprone.annotations.FormatString;
import com.panda912.muddy.ObfuscatedString;

@KeepForSdk
/* loaded from: classes2.dex */
public final class GmsLogger {
    private final String zza;

    @Nullable
    private final String zzb;

    @KeepForSdk
    public GmsLogger(@NonNull String str) {
        this(str, null);
    }

    private final String zza(String str) {
        String str2 = this.zzb;
        if (str2 == null) {
            return str;
        }
        return str2.concat(str);
    }

    @FormatMethod
    private final String zzb(String str, Object... objArr) {
        String str2 = this.zzb;
        String format = String.format(str, objArr);
        if (str2 == null) {
            return format;
        }
        return str2.concat(format);
    }

    @KeepForSdk
    public boolean canLog(int i) {
        return Log.isLoggable(this.zza, i);
    }

    @KeepForSdk
    public boolean canLogPii() {
        return false;
    }

    @KeepForSdk
    public void d(@NonNull String str, @NonNull String str2) {
        if (canLog(3)) {
            zza(str2);
        }
    }

    @KeepForSdk
    public void e(@NonNull String str, @NonNull String str2) {
        if (canLog(6)) {
            zza(str2);
        }
    }

    @KeepForSdk
    @FormatMethod
    public void efmt(@NonNull String str, @NonNull @FormatString String str2, @NonNull Object... objArr) {
        if (canLog(6)) {
            zzb(str2, objArr);
        }
    }

    @KeepForSdk
    public void i(@NonNull String str, @NonNull String str2) {
        if (canLog(4)) {
            zza(str2);
        }
    }

    @KeepForSdk
    public void pii(@NonNull String str, @NonNull String str2) {
    }

    @KeepForSdk
    public void v(@NonNull String str, @NonNull String str2) {
        if (canLog(2)) {
            zza(str2);
        }
    }

    @KeepForSdk
    public void w(@NonNull String str, @NonNull String str2) {
        if (canLog(5)) {
            zza(str2);
        }
    }

    @KeepForSdk
    @FormatMethod
    public void wfmt(@NonNull String str, @NonNull @FormatString String str2, @NonNull Object... objArr) {
        if (canLog(5)) {
            zzb(str2, objArr);
        }
    }

    @KeepForSdk
    public void wtf(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        if (canLog(7)) {
            zza(str2);
            Log.wtf(str, zza(str2), th);
        }
    }

    @KeepForSdk
    public GmsLogger(@NonNull String str, @Nullable String str2) {
        Preconditions.checkNotNull(str, new ObfuscatedString(new long[]{-8237451081446073707L, -9008597131567949857L, -7355696596567650840L, -4217579133325578567L}).toString());
        Preconditions.checkArgument(str.length() <= 23, new ObfuscatedString(new long[]{9061907258536753567L, 5436969377106682855L, -3804104215218972006L, 8225060079283234092L, 4822867580273773685L, 564970039818877657L, 187878286397363534L}).toString(), str, 23);
        this.zza = str;
        this.zzb = (str2 == null || str2.length() <= 0) ? null : str2;
    }

    @KeepForSdk
    public void pii(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
    }

    @KeepForSdk
    public void d(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        if (canLog(3)) {
            zza(str2);
        }
    }

    @KeepForSdk
    public void e(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        if (canLog(6)) {
            zza(str2);
        }
    }

    @KeepForSdk
    public void i(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        if (canLog(4)) {
            zza(str2);
        }
    }

    @KeepForSdk
    public void v(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        if (canLog(2)) {
            zza(str2);
        }
    }

    @KeepForSdk
    public void w(@NonNull String str, @NonNull String str2, @NonNull Throwable th) {
        if (canLog(5)) {
            zza(str2);
        }
    }
}
