package com.google.android.gms.internal.ads;

import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.panda912.muddy.ObfuscatedString;
import defpackage.AbstractC0749x8313616e;

/* loaded from: classes2.dex */
public class zzcec {
    protected static final zzfxr zza = zzfxr.zzb(4000);

    @VisibleForTesting
    public static String zzd(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length >= 4) {
            int lineNumber = stackTrace[3].getLineNumber();
            return AbstractC0749x8313616e.m3333x1db10c9d(new ObfuscatedString(new long[]{8004962986944678362L, 1387049817409310574L}), AbstractC0749x8313616e.m3341xc20437a5(str), lineNumber);
        }
        return str;
    }

    public static void zze(String str) {
        if (zzm(3)) {
            if (str != null && str.length() > 4000) {
                boolean z = true;
                for (String str2 : zza.zzd(str)) {
                    if (z) {
                        new ObfuscatedString(new long[]{3514381855890217653L, -3628987865770776275L}).toString();
                    } else {
                        new ObfuscatedString(new long[]{-8275068191788461885L, -7763367762482257636L}).toString();
                    }
                    z = false;
                }
                return;
            }
            new ObfuscatedString(new long[]{1900636672099127302L, 4374258689259098431L}).toString();
        }
    }

    public static void zzf(String str, Throwable th) {
        if (zzm(3)) {
            new ObfuscatedString(new long[]{5887259179050577995L, 447003224895207488L}).toString();
        }
    }

    public static void zzg(String str) {
        if (zzm(6)) {
            if (str != null && str.length() > 4000) {
                boolean z = true;
                for (String str2 : zza.zzd(str)) {
                    if (z) {
                        new ObfuscatedString(new long[]{-3262122169904281934L, -2514774857306527284L}).toString();
                    } else {
                        new ObfuscatedString(new long[]{4899792651564323963L, -1294470991239379219L}).toString();
                    }
                    z = false;
                }
                return;
            }
            new ObfuscatedString(new long[]{7473856685112407021L, -1654961252108321807L}).toString();
        }
    }

    public static void zzh(String str, Throwable th) {
        if (zzm(6)) {
            new ObfuscatedString(new long[]{6266968993333076885L, -6572669274447644268L}).toString();
        }
    }

    public static void zzi(String str) {
        if (zzm(4)) {
            if (str != null && str.length() > 4000) {
                boolean z = true;
                for (String str2 : zza.zzd(str)) {
                    if (z) {
                        new ObfuscatedString(new long[]{155180982784980741L, 788777944415756119L}).toString();
                    } else {
                        new ObfuscatedString(new long[]{5446640524409990833L, 5260875154490209815L}).toString();
                    }
                    z = false;
                }
                return;
            }
            new ObfuscatedString(new long[]{3418800634568178497L, -2832379485214225992L}).toString();
        }
    }

    public static void zzj(String str) {
        if (zzm(5)) {
            if (str != null && str.length() > 4000) {
                boolean z = true;
                for (String str2 : zza.zzd(str)) {
                    if (z) {
                        new ObfuscatedString(new long[]{-7748972856759976353L, 6427525906880379270L}).toString();
                    } else {
                        new ObfuscatedString(new long[]{-8725858683220218092L, -5334169559830848155L}).toString();
                    }
                    z = false;
                }
                return;
            }
            new ObfuscatedString(new long[]{-2406997129383437092L, -8440879778133156525L}).toString();
        }
    }

    public static void zzk(String str, Throwable th) {
        if (zzm(5)) {
            new ObfuscatedString(new long[]{1415918764169562205L, -7022035653230871163L}).toString();
        }
    }

    public static void zzl(String str, @Nullable Throwable th) {
        if (zzm(5)) {
            if (th != null) {
                zzk(zzd(str), th);
            } else {
                zzj(zzd(str));
            }
        }
    }

    public static boolean zzm(int i) {
        if (i < 5 && !Log.isLoggable(new ObfuscatedString(new long[]{-2523770431675334357L, -7848282772165297426L}).toString(), i)) {
            return false;
        }
        return true;
    }
}
