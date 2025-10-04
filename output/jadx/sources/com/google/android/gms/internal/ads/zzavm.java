package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.os.Build;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class zzavm {
    private NetworkCapabilities zza;

    public zzavm(ConnectivityManager connectivityManager) {
        if (connectivityManager != null && Build.VERSION.SDK_INT >= 24) {
            try {
                connectivityManager.registerDefaultNetworkCallback(new zzavl(this));
            } catch (RuntimeException unused) {
                synchronized (zzavm.class) {
                    this.zza = null;
                }
            }
        }
    }

    public static zzavm zzc(Context context) {
        if (context != null) {
            return new zzavm((ConnectivityManager) context.getSystemService(new ObfuscatedString(new long[]{125963888637483192L, 5456840943300079390L, 2157200376865769967L}).toString()));
        }
        return null;
    }

    public final long zza() {
        synchronized (zzavm.class) {
            try {
                NetworkCapabilities networkCapabilities = this.zza;
                if (networkCapabilities != null) {
                    if (networkCapabilities.hasTransport(4)) {
                        return 2L;
                    }
                    if (this.zza.hasTransport(1)) {
                        return 1L;
                    }
                    if (this.zza.hasTransport(0)) {
                        return 0L;
                    }
                }
                return -1L;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final NetworkCapabilities zzb() {
        return this.zza;
    }
}
