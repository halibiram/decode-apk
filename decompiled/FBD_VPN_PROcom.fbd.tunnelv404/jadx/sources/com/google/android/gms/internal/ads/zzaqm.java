package com.google.android.gms.internal.ads;

import android.util.Log;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class zzaqm {
    public static final String zza;
    public static final boolean zzb;
    private static final String zzc;

    static {
        String obfuscatedString = new ObfuscatedString(new long[]{-58357110501603469L, -2638017104341925114L}).toString();
        zza = obfuscatedString;
        zzb = Log.isLoggable(obfuscatedString, 2);
        zzc = zzaqm.class.getName();
    }

    public static void zza(String str, Object... objArr) {
        zze(str, objArr);
    }

    public static void zzb(String str, Object... objArr) {
        zze(str, objArr);
    }

    public static void zzc(Throwable th, String str, Object... objArr) {
        zze(str, objArr);
    }

    public static void zzd(String str, Object... objArr) {
        if (zzb) {
            zze(str, objArr);
        }
    }

    private static String zze(String str, Object... objArr) {
        String obfuscatedString;
        String format = String.format(Locale.US, str, objArr);
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i < stackTrace.length) {
                if (!stackTrace[i].getClassName().equals(zzc)) {
                    String className = stackTrace[i].getClassName();
                    String substring = className.substring(className.lastIndexOf(46) + 1);
                    String substring2 = substring.substring(substring.lastIndexOf(36) + 1);
                    obfuscatedString = AbstractC0749x8313616e.m3336x1aebc6d9(new ObfuscatedString(new long[]{1046289982536563896L, -2814842690889787947L}), AbstractC0749x8313616e.m3341xc20437a5(substring2), stackTrace[i].getMethodName());
                    break;
                }
                i++;
            } else {
                obfuscatedString = new ObfuscatedString(new long[]{4163792548833034896L, -8631665732425238747L, 5752733868327774223L}).toString();
                break;
            }
        }
        return String.format(Locale.US, new ObfuscatedString(new long[]{3576706983854684286L, 9120568525211841153L, -7868645826299462867L}).toString(), Long.valueOf(Thread.currentThread().getId()), obfuscatedString, format);
    }
}
