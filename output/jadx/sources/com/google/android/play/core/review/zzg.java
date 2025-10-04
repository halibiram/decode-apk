package com.google.android.play.core.review;

import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.core.review.internal.zzt;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
class zzg extends com.google.android.play.core.review.internal.zzg {
    final com.google.android.play.core.review.internal.zzi zza;
    final TaskCompletionSource zzb;
    final /* synthetic */ zzi zzc;

    public zzg(zzi zziVar, com.google.android.play.core.review.internal.zzi zziVar2, TaskCompletionSource taskCompletionSource) {
        this.zzc = zziVar;
        this.zza = zziVar2;
        this.zzb = taskCompletionSource;
    }

    @Override // com.google.android.play.core.review.internal.zzh
    public void zzb(Bundle bundle) {
        zzt zztVar = this.zzc.zza;
        if (zztVar != null) {
            zztVar.zzu(this.zzb);
        }
        this.zza.zzc(new ObfuscatedString(new long[]{1346564002182080717L, -1231569473038184141L, -8820741751232037015L, -4611761152197621356L, -974398074717015331L}).toString(), new Object[0]);
    }
}
