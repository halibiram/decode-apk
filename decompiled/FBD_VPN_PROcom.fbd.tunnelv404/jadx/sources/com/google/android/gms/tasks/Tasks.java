package com.google.android.gms.tasks;

import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes2.dex */
public final class Tasks {
    private Tasks() {
    }

    public static <TResult> TResult await(@NonNull Task<TResult> task) {
        Preconditions.checkNotMainThread();
        Preconditions.checkNotGoogleApiHandlerThread();
        Preconditions.checkNotNull(task, new ObfuscatedString(new long[]{-8008054507056983376L, 5575504651467202769L, -3160383819357970658L, -88235479898923030L}).toString());
        if (task.isComplete()) {
            return (TResult) zza(task);
        }
        zzad zzadVar = new zzad(null);
        zzb(task, zzadVar);
        zzadVar.zza();
        return (TResult) zza(task);
    }

    @NonNull
    @Deprecated
    public static <TResult> Task<TResult> call(@NonNull Callable<TResult> callable) {
        return call(TaskExecutors.MAIN_THREAD, callable);
    }

    @NonNull
    public static <TResult> Task<TResult> forCanceled() {
        zzw zzwVar = new zzw();
        zzwVar.zzc();
        return zzwVar;
    }

    @NonNull
    public static <TResult> Task<TResult> forException(@NonNull Exception exc) {
        zzw zzwVar = new zzw();
        zzwVar.zza(exc);
        return zzwVar;
    }

    @NonNull
    public static <TResult> Task<TResult> forResult(TResult tresult) {
        zzw zzwVar = new zzw();
        zzwVar.zzb(tresult);
        return zzwVar;
    }

    @NonNull
    public static Task<Void> whenAll(@Nullable Collection<? extends Task<?>> collection) {
        if (collection != null && !collection.isEmpty()) {
            Iterator<? extends Task<?>> it = collection.iterator();
            while (it.hasNext()) {
                if (it.next() == null) {
                    throw new NullPointerException(new ObfuscatedString(new long[]{-6801671851102714783L, -7556411613167409675L, 8600097843164870679L, 5789172069155807497L, 2074187325237503687L}).toString());
                }
            }
            zzw zzwVar = new zzw();
            zzaf zzafVar = new zzaf(collection.size(), zzwVar);
            Iterator<? extends Task<?>> it2 = collection.iterator();
            while (it2.hasNext()) {
                zzb(it2.next(), zzafVar);
            }
            return zzwVar;
        }
        return forResult(null);
    }

    @NonNull
    public static Task<List<Task<?>>> whenAllComplete(@Nullable Collection<? extends Task<?>> collection) {
        return whenAllComplete(TaskExecutors.MAIN_THREAD, collection);
    }

    @NonNull
    public static <TResult> Task<List<TResult>> whenAllSuccess(@Nullable Collection<? extends Task> collection) {
        return whenAllSuccess(TaskExecutors.MAIN_THREAD, collection);
    }

    @NonNull
    public static <T> Task<T> withTimeout(@NonNull Task<T> task, long j, @NonNull TimeUnit timeUnit) {
        boolean z;
        Preconditions.checkNotNull(task, new ObfuscatedString(new long[]{8732048221123029146L, -5463317762719712111L, 4311555967406964073L, 556179216095329449L}).toString());
        if (j > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, new ObfuscatedString(new long[]{3987893096774088094L, -6881556127381312582L, 3649862486038795049L, 2516732091937759519L}).toString());
        Preconditions.checkNotNull(timeUnit, new ObfuscatedString(new long[]{1227845559463690954L, 6588386910923148898L, -4824693884562391464L, 8908972079461419226L, 5644667305096824949L}).toString());
        final zzb zzbVar = new zzb();
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource(zzbVar);
        final com.google.android.gms.internal.tasks.zza zzaVar = new com.google.android.gms.internal.tasks.zza(Looper.getMainLooper());
        zzaVar.postDelayed(new Runnable() { // from class: com.google.android.gms.tasks.zzx
            @Override // java.lang.Runnable
            public final void run() {
                TaskCompletionSource.this.trySetException(new TimeoutException());
            }
        }, timeUnit.toMillis(j));
        task.addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.gms.tasks.zzy
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task2) {
                com.google.android.gms.internal.tasks.zza.this.removeCallbacksAndMessages(null);
                TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                if (task2.isSuccessful()) {
                    taskCompletionSource2.trySetResult(task2.getResult());
                } else {
                    if (task2.isCanceled()) {
                        zzbVar.zza();
                        return;
                    }
                    Exception exception = task2.getException();
                    exception.getClass();
                    taskCompletionSource2.trySetException(exception);
                }
            }
        });
        return taskCompletionSource.getTask();
    }

    private static Object zza(@NonNull Task task) {
        if (task.isSuccessful()) {
            return task.getResult();
        }
        if (task.isCanceled()) {
            throw new CancellationException(new ObfuscatedString(new long[]{-1015712219302639749L, 3619864130163991563L, -3252892434570272086L, -1642719759942266506L}).toString());
        }
        throw new ExecutionException(task.getException());
    }

    private static void zzb(Task task, zzae zzaeVar) {
        Executor executor = TaskExecutors.zza;
        task.addOnSuccessListener(executor, zzaeVar);
        task.addOnFailureListener(executor, zzaeVar);
        task.addOnCanceledListener(executor, zzaeVar);
    }

    @NonNull
    @Deprecated
    public static <TResult> Task<TResult> call(@NonNull Executor executor, @NonNull Callable<TResult> callable) {
        Preconditions.checkNotNull(executor, new ObfuscatedString(new long[]{-8542446423165197918L, -5576467086817241522L, 4269117841774392453L, -4344836978797096053L, 6418659126147868038L}).toString());
        Preconditions.checkNotNull(callable, new ObfuscatedString(new long[]{8639914856804378368L, 2095267837738517442L, 7831182360200179541L, 1623649969859123285L, -4211612904157705449L}).toString());
        zzw zzwVar = new zzw();
        executor.execute(new zzz(zzwVar, callable));
        return zzwVar;
    }

    @NonNull
    public static Task<List<Task<?>>> whenAllComplete(@NonNull Executor executor, @Nullable Collection<? extends Task<?>> collection) {
        if (collection != null && !collection.isEmpty()) {
            return whenAll(collection).continueWithTask(executor, new zzab(collection));
        }
        return forResult(Collections.emptyList());
    }

    @NonNull
    public static <TResult> Task<List<TResult>> whenAllSuccess(@NonNull Executor executor, @Nullable Collection<? extends Task> collection) {
        if (collection != null && !collection.isEmpty()) {
            return (Task<List<TResult>>) whenAll((Collection<? extends Task<?>>) collection).continueWith(executor, new zzaa(collection));
        }
        return forResult(Collections.emptyList());
    }

    @NonNull
    public static Task<List<Task<?>>> whenAllComplete(@NonNull Executor executor, @Nullable Task<?>... taskArr) {
        if (taskArr != null && taskArr.length != 0) {
            return whenAllComplete(executor, Arrays.asList(taskArr));
        }
        return forResult(Collections.emptyList());
    }

    @NonNull
    public static <TResult> Task<List<TResult>> whenAllSuccess(@NonNull Executor executor, @Nullable Task... taskArr) {
        if (taskArr != null && taskArr.length != 0) {
            return whenAllSuccess(executor, Arrays.asList(taskArr));
        }
        return forResult(Collections.emptyList());
    }

    @NonNull
    public static Task<List<Task<?>>> whenAllComplete(@Nullable Task<?>... taskArr) {
        if (taskArr != null && taskArr.length != 0) {
            return whenAllComplete(Arrays.asList(taskArr));
        }
        return forResult(Collections.emptyList());
    }

    @NonNull
    public static <TResult> Task<List<TResult>> whenAllSuccess(@Nullable Task... taskArr) {
        if (taskArr != null && taskArr.length != 0) {
            return whenAllSuccess(Arrays.asList(taskArr));
        }
        return forResult(Collections.emptyList());
    }

    @NonNull
    public static Task<Void> whenAll(@Nullable Task<?>... taskArr) {
        if (taskArr != null && taskArr.length != 0) {
            return whenAll(Arrays.asList(taskArr));
        }
        return forResult(null);
    }

    public static <TResult> TResult await(@NonNull Task<TResult> task, long j, @NonNull TimeUnit timeUnit) {
        Preconditions.checkNotMainThread();
        Preconditions.checkNotGoogleApiHandlerThread();
        Preconditions.checkNotNull(task, new ObfuscatedString(new long[]{-7982407737622880668L, 1741967725007816967L, -1976366088552291044L, -3148968692226632193L}).toString());
        Preconditions.checkNotNull(timeUnit, new ObfuscatedString(new long[]{-688282411782536990L, -5696546498076818282L, -8787338493115185153L, -7031196796733639769L, -681200873672768022L}).toString());
        if (task.isComplete()) {
            return (TResult) zza(task);
        }
        zzad zzadVar = new zzad(null);
        zzb(task, zzadVar);
        if (zzadVar.zzb(j, timeUnit)) {
            return (TResult) zza(task);
        }
        throw new TimeoutException(new ObfuscatedString(new long[]{-1155403775370613722L, 3570602446188364846L, -463053257539234486L, -3456567097908598714L, -6450547180890717444L}).toString());
    }
}
