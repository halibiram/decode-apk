package com.google.android.play.core.appupdate;

import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.core.install.InstallException;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzq extends zzo {
    final /* synthetic */ zzr zzd;
    private final String zze;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzq(zzr zzrVar, TaskCompletionSource taskCompletionSource, String str) {
        super(zzrVar, new com.google.android.play.core.appupdate.internal.zzm(new ObfuscatedString(new long[]{5117799542657225127L, 230592841772911434L, -4146997264154783955L, -3552235074243858393L}).toString()), taskCompletionSource);
        this.zzd = zzrVar;
        this.zze = str;
    }

    @Override // com.google.android.play.core.appupdate.zzo, com.google.android.play.core.appupdate.internal.zzh
    public final void zzc(Bundle bundle) {
        int i;
        int i2;
        super.zzc(bundle);
        i = bundle.getInt(new ObfuscatedString(new long[]{2239393347326265879L, 191895212384233475L, 9014953463865615522L}).toString(), -2);
        if (i != 0) {
            TaskCompletionSource taskCompletionSource = this.zzb;
            i2 = bundle.getInt(new ObfuscatedString(new long[]{2239393347326265879L, 191895212384233475L, 9014953463865615522L}).toString(), -2);
            taskCompletionSource.trySetException(new InstallException(i2));
            return;
        }
        this.zzb.trySetResult(zzr.zzf(this.zzd, bundle, this.zze));
    }
}
