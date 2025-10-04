package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public final class zzgfe {
    public static zzgey zza(ExecutorService executorService) {
        zzgey zzgfaVar;
        if (executorService instanceof zzgey) {
            return (zzgey) executorService;
        }
        if (executorService instanceof ScheduledExecutorService) {
            zzgfaVar = new zzgfd((ScheduledExecutorService) executorService);
        } else {
            zzgfaVar = new zzgfa(executorService);
        }
        return zzgfaVar;
    }

    public static Executor zzb() {
        return zzgeb.zza;
    }

    public static Executor zzc(Executor executor, zzgdb zzgdbVar) {
        executor.getClass();
        if (executor == zzgeb.zza) {
            return executor;
        }
        return new zzgez(executor, zzgdbVar);
    }
}
