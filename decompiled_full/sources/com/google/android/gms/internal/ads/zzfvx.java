package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzfvx extends zzfvu {
    final /* synthetic */ TaskCompletionSource zza;
    final /* synthetic */ zzfvu zzb;
    final /* synthetic */ zzfwe zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzfvx(zzfwe zzfweVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, zzfvu zzfvuVar) {
        super(taskCompletionSource);
        this.zza = taskCompletionSource2;
        this.zzb = zzfvuVar;
        this.zzc = zzfweVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfvu
    public final void zza() {
        Object obj;
        AtomicInteger atomicInteger;
        zzfvt zzfvtVar;
        obj = this.zzc.zzg;
        synchronized (obj) {
            try {
                zzfwe.zzn(this.zzc, this.zza);
                atomicInteger = this.zzc.zzl;
                if (atomicInteger.getAndIncrement() > 0) {
                    zzfvtVar = this.zzc.zzc;
                    zzfvtVar.zzc(new ObfuscatedString(new long[]{335986217034603483L, -4684054728916629985L, 536852520820646442L, -6544629614234247994L, 426928388488270623L, -6913567864406120589L}).toString(), new Object[0]);
                }
                zzfwe.zzp(this.zzc, this.zzb);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
