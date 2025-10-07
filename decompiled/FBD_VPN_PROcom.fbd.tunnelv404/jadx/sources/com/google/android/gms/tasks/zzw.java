package com.google.android.gms.tasks;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.Preconditions;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzw<TResult> extends Task<TResult> {
    private final Object zza = new Object();
    private final zzr zzb = new zzr();
    private boolean zzc;
    private volatile boolean zzd;

    @Nullable
    private Object zze;
    private Exception zzf;

    private final void zzf() {
        Preconditions.checkState(this.zzc, new ObfuscatedString(new long[]{-1360707926894853923L, 2918599090513481343L, -8957208790993293781L, -2141902539939133066L}).toString());
    }

    private final void zzg() {
        if (!this.zzd) {
        } else {
            throw new CancellationException(new ObfuscatedString(new long[]{-4983529253149157018L, 4879061288925670860L, -5823767571668302019L, 1668443320397645857L, 6881199458402309477L}).toString());
        }
    }

    private final void zzh() {
        if (!this.zzc) {
        } else {
            throw DuplicateTaskCompletionException.of(this);
        }
    }

    private final void zzi() {
        synchronized (this.zza) {
            try {
                if (!this.zzc) {
                    return;
                }
                this.zzb.zzb(this);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    public final Task<TResult> addOnCanceledListener(@NonNull Activity activity, @NonNull OnCanceledListener onCanceledListener) {
        zzh zzhVar = new zzh(TaskExecutors.MAIN_THREAD, onCanceledListener);
        this.zzb.zza(zzhVar);
        zzv.zza(activity).zzb(zzhVar);
        zzi();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    public final Task<TResult> addOnCompleteListener(@NonNull Activity activity, @NonNull OnCompleteListener<TResult> onCompleteListener) {
        zzj zzjVar = new zzj(TaskExecutors.MAIN_THREAD, onCompleteListener);
        this.zzb.zza(zzjVar);
        zzv.zza(activity).zzb(zzjVar);
        zzi();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    public final Task<TResult> addOnFailureListener(@NonNull Activity activity, @NonNull OnFailureListener onFailureListener) {
        zzl zzlVar = new zzl(TaskExecutors.MAIN_THREAD, onFailureListener);
        this.zzb.zza(zzlVar);
        zzv.zza(activity).zzb(zzlVar);
        zzi();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    public final Task<TResult> addOnSuccessListener(@NonNull Activity activity, @NonNull OnSuccessListener<? super TResult> onSuccessListener) {
        zzn zznVar = new zzn(TaskExecutors.MAIN_THREAD, onSuccessListener);
        this.zzb.zza(zznVar);
        zzv.zza(activity).zzb(zznVar);
        zzi();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    public final <TContinuationResult> Task<TContinuationResult> continueWith(@NonNull Continuation<TResult, TContinuationResult> continuation) {
        return continueWith(TaskExecutors.MAIN_THREAD, continuation);
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    public final <TContinuationResult> Task<TContinuationResult> continueWithTask(@NonNull Continuation<TResult, Task<TContinuationResult>> continuation) {
        return continueWithTask(TaskExecutors.MAIN_THREAD, continuation);
    }

    @Override // com.google.android.gms.tasks.Task
    @Nullable
    public final Exception getException() {
        Exception exc;
        synchronized (this.zza) {
            exc = this.zzf;
        }
        return exc;
    }

    @Override // com.google.android.gms.tasks.Task
    public final TResult getResult() {
        TResult tresult;
        synchronized (this.zza) {
            try {
                zzf();
                zzg();
                Exception exc = this.zzf;
                if (exc == null) {
                    tresult = (TResult) this.zze;
                } else {
                    throw new RuntimeExecutionException(exc);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return tresult;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean isCanceled() {
        return this.zzd;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean isComplete() {
        boolean z;
        synchronized (this.zza) {
            z = this.zzc;
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.Task
    public final boolean isSuccessful() {
        boolean z;
        synchronized (this.zza) {
            try {
                z = false;
                if (this.zzc && !this.zzd && this.zzf == null) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    public final <TContinuationResult> Task<TContinuationResult> onSuccessTask(@NonNull SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        Executor executor = TaskExecutors.MAIN_THREAD;
        zzw zzwVar = new zzw();
        this.zzb.zza(new zzp(executor, successContinuation, zzwVar));
        zzi();
        return zzwVar;
    }

    public final void zza(@NonNull Exception exc) {
        Preconditions.checkNotNull(exc, new ObfuscatedString(new long[]{3222304909549040551L, -584794147224215869L, -2260948718060123052L, 8095966166794922763L, 3871748408045625906L}).toString());
        synchronized (this.zza) {
            zzh();
            this.zzc = true;
            this.zzf = exc;
        }
        this.zzb.zzb(this);
    }

    public final void zzb(@Nullable Object obj) {
        synchronized (this.zza) {
            zzh();
            this.zzc = true;
            this.zze = obj;
        }
        this.zzb.zzb(this);
    }

    public final boolean zzc() {
        synchronized (this.zza) {
            try {
                if (this.zzc) {
                    return false;
                }
                this.zzc = true;
                this.zzd = true;
                this.zzb.zzb(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zzd(@NonNull Exception exc) {
        Preconditions.checkNotNull(exc, new ObfuscatedString(new long[]{-5840864600430051755L, -8272205394789921651L, -276960490065118709L, 6927995280191267621L, 6963423586580715783L}).toString());
        synchronized (this.zza) {
            try {
                if (this.zzc) {
                    return false;
                }
                this.zzc = true;
                this.zzf = exc;
                this.zzb.zzb(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final boolean zze(@Nullable Object obj) {
        synchronized (this.zza) {
            try {
                if (this.zzc) {
                    return false;
                }
                this.zzc = true;
                this.zze = obj;
                this.zzb.zzb(this);
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    public final <TContinuationResult> Task<TContinuationResult> continueWith(@NonNull Executor executor, @NonNull Continuation<TResult, TContinuationResult> continuation) {
        zzw zzwVar = new zzw();
        this.zzb.zza(new zzd(executor, continuation, zzwVar));
        zzi();
        return zzwVar;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    public final <TContinuationResult> Task<TContinuationResult> continueWithTask(@NonNull Executor executor, @NonNull Continuation<TResult, Task<TContinuationResult>> continuation) {
        zzw zzwVar = new zzw();
        this.zzb.zza(new zzf(executor, continuation, zzwVar));
        zzi();
        return zzwVar;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    public final Task<TResult> addOnCanceledListener(@NonNull OnCanceledListener onCanceledListener) {
        addOnCanceledListener(TaskExecutors.MAIN_THREAD, onCanceledListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    public final Task<TResult> addOnCompleteListener(@NonNull OnCompleteListener<TResult> onCompleteListener) {
        this.zzb.zza(new zzj(TaskExecutors.MAIN_THREAD, onCompleteListener));
        zzi();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    public final Task<TResult> addOnFailureListener(@NonNull OnFailureListener onFailureListener) {
        addOnFailureListener(TaskExecutors.MAIN_THREAD, onFailureListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    public final Task<TResult> addOnSuccessListener(@NonNull OnSuccessListener<? super TResult> onSuccessListener) {
        addOnSuccessListener(TaskExecutors.MAIN_THREAD, onSuccessListener);
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    public final <TContinuationResult> Task<TContinuationResult> onSuccessTask(Executor executor, SuccessContinuation<TResult, TContinuationResult> successContinuation) {
        zzw zzwVar = new zzw();
        this.zzb.zza(new zzp(executor, successContinuation, zzwVar));
        zzi();
        return zzwVar;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    public final Task<TResult> addOnCanceledListener(@NonNull Executor executor, @NonNull OnCanceledListener onCanceledListener) {
        this.zzb.zza(new zzh(executor, onCanceledListener));
        zzi();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    public final Task<TResult> addOnFailureListener(@NonNull Executor executor, @NonNull OnFailureListener onFailureListener) {
        this.zzb.zza(new zzl(executor, onFailureListener));
        zzi();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    public final Task<TResult> addOnSuccessListener(@NonNull Executor executor, @NonNull OnSuccessListener<? super TResult> onSuccessListener) {
        this.zzb.zza(new zzn(executor, onSuccessListener));
        zzi();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    @NonNull
    public final Task<TResult> addOnCompleteListener(@NonNull Executor executor, @NonNull OnCompleteListener<TResult> onCompleteListener) {
        this.zzb.zza(new zzj(executor, onCompleteListener));
        zzi();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public final <X extends Throwable> TResult getResult(@NonNull Class<X> cls) {
        TResult tresult;
        synchronized (this.zza) {
            try {
                zzf();
                zzg();
                if (!cls.isInstance(this.zzf)) {
                    Exception exc = this.zzf;
                    if (exc == null) {
                        tresult = (TResult) this.zze;
                    } else {
                        throw new RuntimeExecutionException(exc);
                    }
                } else {
                    throw cls.cast(this.zzf);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return tresult;
    }
}
