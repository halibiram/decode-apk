package com.google.android.gms.tasks;

import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class zze implements Runnable {
    final /* synthetic */ Task zza;
    final /* synthetic */ zzf zzb;

    public zze(zzf zzfVar, Task task) {
        this.zzb = zzfVar;
        this.zza = task;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzw zzwVar;
        zzw zzwVar2;
        zzw zzwVar3;
        Continuation continuation;
        try {
            continuation = this.zzb.zzb;
            Task task = (Task) continuation.then(this.zza);
            if (task == null) {
                this.zzb.onFailure(new NullPointerException(new ObfuscatedString(new long[]{-2612333546539757932L, -8009768016420079366L, 565114370999765393L, -7935666535488023791L, -7093428751936907799L}).toString()));
                return;
            }
            zzf zzfVar = this.zzb;
            Executor executor = TaskExecutors.zza;
            task.addOnSuccessListener(executor, zzfVar);
            task.addOnFailureListener(executor, this.zzb);
            task.addOnCanceledListener(executor, this.zzb);
        } catch (RuntimeExecutionException e) {
            if (e.getCause() instanceof Exception) {
                zzwVar3 = this.zzb.zzc;
                zzwVar3.zza((Exception) e.getCause());
            } else {
                zzwVar2 = this.zzb.zzc;
                zzwVar2.zza(e);
            }
        } catch (Exception e2) {
            zzwVar = this.zzb.zzc;
            zzwVar.zza(e2);
        }
    }
}
