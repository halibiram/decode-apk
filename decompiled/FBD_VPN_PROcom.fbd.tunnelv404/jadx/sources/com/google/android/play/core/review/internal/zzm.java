package com.google.android.play.core.review.internal;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzm extends zzj {
    final /* synthetic */ TaskCompletionSource zza;
    final /* synthetic */ zzj zzb;
    final /* synthetic */ zzt zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzm(zzt zztVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, zzj zzjVar) {
        super(taskCompletionSource);
        this.zza = taskCompletionSource2;
        this.zzb = zzjVar;
        this.zzc = zztVar;
    }

    @Override // com.google.android.play.core.review.internal.zzj
    public final void zza() {
        Object obj;
        AtomicInteger atomicInteger;
        zzi zziVar;
        obj = this.zzc.zzg;
        synchronized (obj) {
            try {
                zzt.zzn(this.zzc, this.zza);
                atomicInteger = this.zzc.zzl;
                if (atomicInteger.getAndIncrement() > 0) {
                    zziVar = this.zzc.zzc;
                    zziVar.zzc(new ObfuscatedString(new long[]{-1969224576177744626L, 5451709454987997309L, 4153154461858808342L, 5105289111711349206L, 8032644300833505235L, 1114201480743649846L}).toString(), new Object[0]);
                }
                zzt.zzp(this.zzc, this.zzb);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
