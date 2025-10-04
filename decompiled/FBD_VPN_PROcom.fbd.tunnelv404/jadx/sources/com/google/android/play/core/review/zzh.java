package com.google.android.play.core.review;

import android.app.PendingIntent;
import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzh extends zzg {
    public zzh(zzi zziVar, TaskCompletionSource taskCompletionSource, String str) {
        super(zziVar, new com.google.android.play.core.review.internal.zzi(new ObfuscatedString(new long[]{3119125511621072910L, -710697071347502912L, 4041078919945811668L, 913253400822739473L}).toString()), taskCompletionSource);
    }

    @Override // com.google.android.play.core.review.zzg, com.google.android.play.core.review.internal.zzh
    public final void zzb(Bundle bundle) {
        super.zzb(bundle);
        this.zzb.trySetResult(new zza((PendingIntent) bundle.get(new ObfuscatedString(new long[]{7843056547613927300L, 3300297368766651821L, -416095276276606798L, 7990138025264707819L}).toString()), bundle.getBoolean(new ObfuscatedString(new long[]{-8966272648992454912L, 3977798499855280260L, 2022432374005487875L}).toString())));
    }
}
