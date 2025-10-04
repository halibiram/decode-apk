package com.google.android.gms.common.logging;

import android.util.Log;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.GmsLogger;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Locale;

@KeepForSdk
/* loaded from: classes2.dex */
public class Logger {
    private final String zza;
    private final String zzb;
    private final GmsLogger zzc;
    private final int zzd;

    @KeepForSdk
    public Logger(@NonNull String str, @NonNull String... strArr) {
        String m3332x9d12c1f4;
        int i = 2;
        if (strArr.length == 0) {
            m3332x9d12c1f4 = new ObfuscatedString(new long[]{-8856753366953168970L}).toString();
        } else {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            for (String str2 : strArr) {
                if (sb.length() > 1) {
                    sb.append(new ObfuscatedString(new long[]{-7345178572166144414L, -3016674005262170786L}).toString());
                }
                sb.append(str2);
            }
            m3332x9d12c1f4 = AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-5237590445710590996L, 2620129065710743050L}), sb);
        }
        this.zzb = m3332x9d12c1f4;
        this.zza = str;
        this.zzc = new GmsLogger(str);
        while (i <= 7 && !Log.isLoggable(this.zza, i)) {
            i++;
        }
        this.zzd = i;
    }

    @KeepForSdk
    public void d(@NonNull String str, @NonNull Object... objArr) {
        if (isLoggable(3)) {
            format(str, objArr);
        }
    }

    @KeepForSdk
    public void e(@NonNull String str, @NonNull Throwable th, @NonNull Object... objArr) {
        format(str, objArr);
    }

    @NonNull
    @KeepForSdk
    public String format(@NonNull String str, @NonNull Object... objArr) {
        if (objArr != null && objArr.length > 0) {
            str = String.format(Locale.US, str, objArr);
        }
        return this.zzb.concat(str);
    }

    @NonNull
    @KeepForSdk
    public String getTag() {
        return this.zza;
    }

    @KeepForSdk
    public void i(@NonNull String str, @NonNull Object... objArr) {
        format(str, objArr);
    }

    @KeepForSdk
    public boolean isLoggable(int i) {
        return this.zzd <= i;
    }

    @KeepForSdk
    public void v(@NonNull String str, @NonNull Throwable th, @NonNull Object... objArr) {
        if (isLoggable(2)) {
            format(str, objArr);
        }
    }

    @KeepForSdk
    public void w(@NonNull String str, @NonNull Object... objArr) {
        format(str, objArr);
    }

    @KeepForSdk
    public void wtf(@NonNull String str, @NonNull Throwable th, @NonNull Object... objArr) {
        Log.wtf(this.zza, format(str, objArr), th);
    }

    @KeepForSdk
    public void e(@NonNull String str, @NonNull Object... objArr) {
        format(str, objArr);
    }

    @KeepForSdk
    public void wtf(@NonNull Throwable th) {
        Log.wtf(this.zza, th);
    }

    @KeepForSdk
    public void v(@NonNull String str, @NonNull Object... objArr) {
        if (isLoggable(2)) {
            format(str, objArr);
        }
    }
}
