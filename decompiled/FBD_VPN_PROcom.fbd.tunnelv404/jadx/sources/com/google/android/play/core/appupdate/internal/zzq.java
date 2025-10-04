package com.google.android.play.core.appupdate.internal;

import com.google.android.gms.tasks.TaskCompletionSource;
import com.panda912.muddy.ObfuscatedString;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzq extends zzn {
    final /* synthetic */ TaskCompletionSource zza;
    final /* synthetic */ zzn zzb;
    final /* synthetic */ zzx zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzq(zzx zzxVar, TaskCompletionSource taskCompletionSource, TaskCompletionSource taskCompletionSource2, zzn zznVar) {
        super(taskCompletionSource);
        this.zzc = zzxVar;
        this.zza = taskCompletionSource2;
        this.zzb = zznVar;
    }

    @Override // com.google.android.play.core.appupdate.internal.zzn
    public final void zza() {
        Object obj;
        AtomicInteger atomicInteger;
        zzm zzmVar;
        obj = this.zzc.zzg;
        synchronized (obj) {
            try {
                zzx.zzn(this.zzc, this.zza);
                atomicInteger = this.zzc.zzl;
                if (atomicInteger.getAndIncrement() > 0) {
                    zzmVar = this.zzc.zzc;
                    zzmVar.zzd(new ObfuscatedString(new long[]{-3324729746579691466L, 2366221857643642813L, 7240448833554120528L, -9138330450204415853L, -2840291504360650021L, 6193676501878140781L}).toString(), new Object[0]);
                }
                zzx.zzp(this.zzc, this.zzb);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
