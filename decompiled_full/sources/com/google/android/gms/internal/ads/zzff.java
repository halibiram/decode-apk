package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.net.UnknownHostException;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes2.dex */
public final class zzff {
    private static final Object zza = new Object();

    @GuardedBy("lock")
    private static final zzfe zzb = zzfe.zza;

    @Pure
    public static String zza(String str, @Nullable Throwable th) {
        String replace;
        if (th == null) {
            replace = null;
        } else {
            synchronized (zza) {
                Throwable th2 = th;
                while (true) {
                    if (th2 != null) {
                        try {
                            if (th2 instanceof UnknownHostException) {
                                replace = new ObfuscatedString(new long[]{4693389805818426723L, -5498706199404889381L, -1242367544341133057L, -3276023283202667416L, -7999143201891158236L, 8252172956270585665L}).toString();
                            } else {
                                th2 = th2.getCause();
                            }
                        } finally {
                        }
                    } else {
                        replace = Log.getStackTraceString(th).trim().replace(new ObfuscatedString(new long[]{-2966163180109705975L, 4850338304630378445L}).toString(), new ObfuscatedString(new long[]{4162458003829514929L, 2118498198428102509L}).toString());
                        break;
                    }
                }
            }
        }
        if (!TextUtils.isEmpty(replace)) {
            String replace2 = replace.replace(new ObfuscatedString(new long[]{-8018546370827531105L, -6074780223547317879L}).toString(), new ObfuscatedString(new long[]{4794338512490324480L, 6976447578160151670L}).toString());
            StringBuilder m3341xc20437a5 = AbstractC0749x8313616e.m3341xc20437a5(str);
            m3341xc20437a5.append(new ObfuscatedString(new long[]{6371355268482565869L, 4140240289262889063L}).toString());
            m3341xc20437a5.append(replace2);
            return AbstractC0749x8313616e.m3332x9d12c1f4(new ObfuscatedString(new long[]{-7212731090078978973L, -1307120644100844156L}), m3341xc20437a5);
        }
        return str;
    }

    @Pure
    public static void zzb(@Size(max = 23) String str, String str2) {
        synchronized (zza) {
            zza(str2, null);
        }
    }

    @Pure
    public static void zzc(@Size(max = 23) String str, String str2) {
        synchronized (zza) {
            zza(str2, null);
        }
    }

    @Pure
    public static void zzd(@Size(max = 23) String str, String str2, @Nullable Throwable th) {
        synchronized (zza) {
            zza(str2, th);
        }
    }

    @Pure
    public static void zze(@Size(max = 23) String str, String str2) {
        synchronized (zza) {
            zza(str2, null);
        }
    }

    @Pure
    public static void zzf(@Size(max = 23) String str, String str2) {
        synchronized (zza) {
            zza(str2, null);
        }
    }

    @Pure
    public static void zzg(@Size(max = 23) String str, String str2, @Nullable Throwable th) {
        synchronized (zza) {
            zza(str2, th);
        }
    }
}
