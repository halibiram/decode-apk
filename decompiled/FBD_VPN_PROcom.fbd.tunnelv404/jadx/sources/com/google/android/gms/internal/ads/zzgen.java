package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzgen extends zzgep {
    /* JADX WARN: Multi-variable type inference failed */
    public static zzgem zza(Iterable iterable) {
        return new zzgem(false, zzgaa.zzj(iterable), null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzgem zzb(Iterable iterable) {
        int i = zzgaa.zzd;
        iterable.getClass();
        return new zzgem(true, zzgaa.zzj(iterable), null);
    }

    @SafeVarargs
    public static zzgem zzc(ListenableFuture... listenableFutureArr) {
        return new zzgem(true, zzgaa.zzk(listenableFutureArr), null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ListenableFuture zzd(Iterable iterable) {
        return new zzgdv(zzgaa.zzj(iterable), true);
    }

    public static ListenableFuture zze(ListenableFuture listenableFuture, Class cls, zzfws zzfwsVar, Executor executor) {
        zzgcy zzgcyVar = new zzgcy(listenableFuture, cls, zzfwsVar);
        listenableFuture.addListener(zzgcyVar, zzgfe.zzc(executor, zzgcyVar));
        return zzgcyVar;
    }

    public static ListenableFuture zzf(ListenableFuture listenableFuture, Class cls, zzgdu zzgduVar, Executor executor) {
        zzgcx zzgcxVar = new zzgcx(listenableFuture, cls, zzgduVar);
        listenableFuture.addListener(zzgcxVar, zzgfe.zzc(executor, zzgcxVar));
        return zzgcxVar;
    }

    public static ListenableFuture zzg(Throwable th) {
        th.getClass();
        return new zzgeq(th);
    }

    public static ListenableFuture zzh(Object obj) {
        if (obj == null) {
            return zzger.zza;
        }
        return new zzger(obj);
    }

    public static ListenableFuture zzi() {
        return zzger.zza;
    }

    public static ListenableFuture zzj(Callable callable, Executor executor) {
        zzgfn zzgfnVar = new zzgfn(callable);
        executor.execute(zzgfnVar);
        return zzgfnVar;
    }

    public static ListenableFuture zzk(zzgdt zzgdtVar, Executor executor) {
        zzgfn zzgfnVar = new zzgfn(zzgdtVar);
        executor.execute(zzgfnVar);
        return zzgfnVar;
    }

    @SafeVarargs
    public static ListenableFuture zzl(ListenableFuture... listenableFutureArr) {
        return new zzgdv(zzgaa.zzk(listenableFutureArr), false);
    }

    public static ListenableFuture zzm(ListenableFuture listenableFuture, zzfws zzfwsVar, Executor executor) {
        zzgdi zzgdiVar = new zzgdi(listenableFuture, zzfwsVar);
        listenableFuture.addListener(zzgdiVar, zzgfe.zzc(executor, zzgdiVar));
        return zzgdiVar;
    }

    public static ListenableFuture zzn(ListenableFuture listenableFuture, zzgdu zzgduVar, Executor executor) {
        int i = zzgdj.zzc;
        executor.getClass();
        zzgdh zzgdhVar = new zzgdh(listenableFuture, zzgduVar);
        listenableFuture.addListener(zzgdhVar, zzgfe.zzc(executor, zzgdhVar));
        return zzgdhVar;
    }

    public static ListenableFuture zzo(ListenableFuture listenableFuture, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        if (listenableFuture.isDone()) {
            return listenableFuture;
        }
        return zzgfk.zzf(listenableFuture, j, timeUnit, scheduledExecutorService);
    }

    public static Object zzp(Future future) {
        if (future.isDone()) {
            return zzgfp.zza(future);
        }
        throw new IllegalStateException(zzfxt.zzb(new ObfuscatedString(new long[]{8799815668201025082L, 1999204901729983063L, -8787941806815347609L, 7787015487810981145L, -8082787897783071353L, -6301865681433475396L}).toString(), future));
    }

    public static Object zzq(Future future) {
        try {
            return zzgfp.zza(future);
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause instanceof Error) {
                throw new zzgec((Error) cause);
            }
            throw new zzgfo(cause);
        }
    }

    public static void zzr(ListenableFuture listenableFuture, zzgej zzgejVar, Executor executor) {
        zzgejVar.getClass();
        listenableFuture.addListener(new zzgek(listenableFuture, zzgejVar), executor);
    }
}
