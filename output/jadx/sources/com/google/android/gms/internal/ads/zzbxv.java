package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.lang.Thread;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbxv implements Thread.UncaughtExceptionHandler {
    final /* synthetic */ Thread.UncaughtExceptionHandler zza;
    final /* synthetic */ zzbxw zzb;

    public zzbxv(zzbxw zzbxwVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        this.zza = uncaughtExceptionHandler;
        this.zzb = zzbxwVar;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        try {
            try {
                this.zzb.zzf(thread, th);
            } catch (Throwable th2) {
                Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.zza;
                if (uncaughtExceptionHandler != null) {
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                }
                throw th2;
            }
        } catch (Throwable unused) {
            zzcec.zzg(new ObfuscatedString(new long[]{-2682752490534515804L, -1791703199786499183L, -1799465235292786287L, -6822701504860121741L, -225603987244361865L, 1051964037709192135L, -4371123942299979761L, -1932483669905488420L}).toString());
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.zza;
        if (uncaughtExceptionHandler2 != null) {
            uncaughtExceptionHandler2.uncaughtException(thread, th);
        }
    }
}
