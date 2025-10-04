package com.google.android.gms.common.api;

import androidx.annotation.NonNull;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.panda912.muddy.ObfuscatedString;

/* loaded from: classes2.dex */
public final class UnsupportedApiCallException extends UnsupportedOperationException {
    private final Feature zza;

    @KeepForSdk
    public UnsupportedApiCallException(@NonNull Feature feature) {
        this.zza = feature;
    }

    @Override // java.lang.Throwable
    @NonNull
    public String getMessage() {
        return new ObfuscatedString(new long[]{-4055793974953883393L, 3240152300291079506L}).toString().concat(String.valueOf(this.zza));
    }
}
