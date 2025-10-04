package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzgfh implements Runnable {

    @CheckForNull
    zzgfk zza;

    public zzgfh(zzgfk zzgfkVar) {
        this.zza = zzgfkVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:3:0x0006, code lost:
    
        r1 = r0.zza;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        ListenableFuture listenableFuture;
        ScheduledFuture scheduledFuture;
        zzgfk zzgfkVar = this.zza;
        if (zzgfkVar != null && listenableFuture != null) {
            this.zza = null;
            if (listenableFuture.isDone()) {
                zzgfkVar.zzs(listenableFuture);
                return;
            }
            try {
                scheduledFuture = zzgfkVar.zzb;
                zzgfkVar.zzb = null;
                String obfuscatedString = new ObfuscatedString(new long[]{6542739287808229147L, -365532687833967462L, 2996956811702799499L}).toString();
                if (scheduledFuture != null) {
                    try {
                        long abs = Math.abs(scheduledFuture.getDelay(TimeUnit.MILLISECONDS));
                        if (abs > 10) {
                            obfuscatedString = obfuscatedString + new ObfuscatedString(new long[]{2086803024876843229L, -2748673938900676554L, -7277319020236999661L, 1337190988414416031L}).toString() + abs + new ObfuscatedString(new long[]{1329036383857102201L, 3617920761996889133L, -871387768920269075L, 4209579545676875035L, 3482574345638471616L}).toString();
                        }
                    } catch (Throwable th) {
                        zzgfkVar.zzd(new zzgfj(obfuscatedString, null));
                        throw th;
                    }
                }
                zzgfkVar.zzd(new zzgfj(obfuscatedString + new ObfuscatedString(new long[]{5381085662042585500L, 6150383916628060166L}).toString() + listenableFuture.toString(), null));
            } finally {
                listenableFuture.cancel(true);
            }
        }
    }
}
