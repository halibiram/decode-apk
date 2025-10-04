package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Result;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public abstract class ResultCallbacks<R extends Result> implements ResultCallback<R> {
    public abstract void onFailure(@NonNull Status status);

    @Override // com.google.android.gms.common.api.ResultCallback
    @KeepForSdk
    public final void onResult(@NonNull R r) {
        Status status = r.getStatus();
        if (status.isSuccess()) {
            onSuccess(r);
            return;
        }
        onFailure(status);
        if (r instanceof Releasable) {
            try {
                ((Releasable) r).release();
            } catch (RuntimeException unused) {
                String valueOf = String.valueOf(r);
                String obfuscatedString = new ObfuscatedString(new long[]{1898528286062325224L, -896204113110170609L, 119562358558580249L, -1124319079055739431L}).toString();
                new ObfuscatedString(new long[]{7519810383730519611L, 5320304266967969038L, 4345104265553916431L}).toString();
                obfuscatedString.concat(valueOf);
            }
        }
    }

    public abstract void onSuccess(@NonNull R r);
}
