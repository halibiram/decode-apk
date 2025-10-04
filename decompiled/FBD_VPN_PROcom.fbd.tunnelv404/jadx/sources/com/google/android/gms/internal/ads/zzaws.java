package com.google.android.gms.internal.ads;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
import androidx.annotation.NonNull;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class zzaws {
    private static final String[] zza = {new ObfuscatedString(new long[]{-2617204159576710588L, 771221125022361603L, -6512520451073544572L, 3031836153982602749L, -297016668991612151L}).toString(), new ObfuscatedString(new long[]{3862846080736815409L, -5271966281256704059L, 5459034410741616530L, 2143499419671285271L, -8166849952552725636L}).toString()};
    private long zzb = 0;
    private long zzc = 0;
    private long zzd = -1;
    private boolean zze = false;

    public zzaws(@NonNull Context context, @NonNull Executor executor, @NonNull String[] strArr) {
        if (Build.VERSION.SDK_INT < 30) {
            return;
        }
        try {
            ((AppOpsManager) context.getSystemService(new ObfuscatedString(new long[]{6053356338753211151L, 4757781725875945443L}).toString())).startWatchingActive(strArr, executor, new zzawr(this));
        } catch (IllegalArgumentException | NoSuchMethodError unused) {
        }
    }

    public static zzaws zzd(@NonNull Context context, @NonNull Executor executor) {
        return new zzaws(context, executor, zza);
    }

    public final long zzb() {
        long j = this.zzd;
        this.zzd = -1L;
        return j;
    }

    public final long zzc() {
        if (this.zze) {
            return this.zzc - this.zzb;
        }
        return -1L;
    }

    public final void zzh() {
        if (this.zze) {
            this.zzc = System.currentTimeMillis();
        }
    }
}
