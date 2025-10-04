package com.google.android.play.core.appupdate;

import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.play.core.install.InstallException;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
final class zzp extends zzo {
    public zzp(zzr zzrVar, TaskCompletionSource taskCompletionSource) {
        super(zzrVar, new com.google.android.play.core.appupdate.internal.zzm(new ObfuscatedString(new long[]{-5814487189213068649L, -3682618870250913509L, 7255614934939891693L, -8759635705702037775L}).toString()), taskCompletionSource);
    }

    @Override // com.google.android.play.core.appupdate.zzo, com.google.android.play.core.appupdate.internal.zzh
    public final void zzb(Bundle bundle) {
        int i;
        int i2;
        super.zzb(bundle);
        i = bundle.getInt(new ObfuscatedString(new long[]{2239393347326265879L, 191895212384233475L, 9014953463865615522L}).toString(), -2);
        if (i != 0) {
            TaskCompletionSource taskCompletionSource = this.zzb;
            i2 = bundle.getInt(new ObfuscatedString(new long[]{2239393347326265879L, 191895212384233475L, 9014953463865615522L}).toString(), -2);
            taskCompletionSource.trySetException(new InstallException(i2));
            return;
        }
        this.zzb.trySetResult(null);
    }
}
