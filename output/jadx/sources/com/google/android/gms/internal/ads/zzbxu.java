package com.google.android.gms.internal.ads;

import com.panda912.muddy.ObfuscatedString;
import java.lang.Thread;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbxu implements Thread.UncaughtExceptionHandler {
    final /* synthetic */ Thread.UncaughtExceptionHandler zza;
    final /* synthetic */ zzbxw zzb;

    public zzbxu(zzbxw zzbxwVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
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
            zzcec.zzg(new ObfuscatedString(new long[]{-7883329865529103811L, -8858160542702744813L, 6482647787742226488L, -7465787457128568254L, 1708874649581149558L, -8824821532065627082L, 6072567765033324877L, 8823457768758107083L}).toString());
        }
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.zza;
        if (uncaughtExceptionHandler2 != null) {
            uncaughtExceptionHandler2.uncaughtException(thread, th);
        }
    }
}
